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
	elif subsystem == "eec":
		return "EEC"
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

# =========
# Variables
# =========
subsystems = ['archiver', 'camera', 'catchuparchiver', 'dm', 'dome', 'domeADB', 'domeAPS', 'domeLouvers', 'domeLWS', 'domeMONCS', 'domeTHCS', 'eec', 'environment', 'hexapod', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'processingcluster', 'rotator', 'scheduler', 'sequencer', 'tcs']

# Create/Open test suite file.
file = open("../Validate_XML_Definitions.robot","w")

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files.\n")
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
	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob("/Users/rbovill/trunk/ts_xml/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		# Create the Test Cases.
		file.write("Validate " + CapitalizeSubsystem(subsystem) + " " + messageType + "\n")
		file.write("\t[Documentation]    Validate the " + CapitalizeSubsystem(subsystem) + " " + messageType + " XML file.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} val ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Contain    ${output}   " + subsystem + "_" + messageType + ".xml - valid\n")
		file.write("\n")



