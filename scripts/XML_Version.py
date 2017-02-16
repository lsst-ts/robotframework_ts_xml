#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re

# =========
# Functions
# =========
#def GenerateTestCases(  str  ):
#print "Hello"
#return 

def CapitalizeSubsystem( subsystem ):
	if re.match("^dome\S+", subsystem):
		return subsystem[0].upper() + subsystem[1:]
	elif subsystem == "dm":
		return "DM"
	elif subsystem == "m1m3":
		return "M1M3"
	elif subsystem == "m2ms":
		return "M2MS"
	elif subsystem == "MTMount":
		return subsystem
	elif subsystem == "tcs":
		return "TCS"
	elif subsystem == "ocs":
		return "OCS"
	else:
		return subsystem.capitalize()

def GetSubsystemVersion( string ):
	with open("/Users/rbovill/bin/XML_Versions.txt") as versionfile:
		for line in versionfile:
			if string in line:
				version = line.split(" ")[1]
				return version



# =========
# Variables
# =========
subsystems = ['camera', 'dm', 'dome', 'hexapod', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'rotator', 'scheduler', 'tcs']

# Create/Open test suite file.
file = open("../Validate_XML_Version.robot","w")

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files contain the correct version.\n")
file.write("Test Setup    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
file.write("Library    OperatingSystem\n")
file.write("Resource    Global_Vars.robot\n")
file.write("\n")

# Create Variables table.
file.write("*** Variables ***\n")
file.write("${xml}    xml\n")
file.write("\n")

# Create Test Case table.
file.write("*** Test Cases ***\n")
for subsystem in subsystems:
	xmls = glob.glob("/Users/rbovill/trunk/ts_xml/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		topic = xml.split('/')[7].split('_')[0]
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		file.write("Validate " + CapitalizeSubsystem(topic) + " " + messageType + " Version\n")
		file.write("\t[Documentation]    Validate the " + CapitalizeSubsystem(topic) + " " + messageType + " version.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${count}=    Run    ${xml} sel -t -v \"count(/SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/EFDB_Topic)\" ${folder}/sal_interfaces/" + subsystem + "/" + topic + "_Telemetry.xml\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/Version\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + topic + "_Telemetry.xml\n")
		file.write("\tLog    ${output}\n")
		version = GetSubsystemVersion( (CapitalizeSubsystem(topic) + "_" + messageType) )
		file.write("\tShould Contain X Times    ${output}    " + str(version).rstrip() + "    ${count}\n")
		file.write("\n")



