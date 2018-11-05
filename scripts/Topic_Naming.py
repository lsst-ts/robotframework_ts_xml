#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_Topic_Naming.robot","w")

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML topic and attribute names are in lowerCamelCase.\n")
file.write("Test Setup    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
file.write("Library    OperatingSystem\n")
file.write("Library    String\n")
file.write("Resource    Global_Vars.robot\n")
file.write("\n")

# Create Variables table.
file.write("*** Variables ***\n")
file.write("${xml}    xml\n")
file.write("\n")

# Create Test Case table.
file.write("*** Test Cases ***\n")
for subsystem in xml_common.subsystems:

	# Mark test cases with Jira tickets
	if subsystem == "VMS":
		skipped="TSS-2618"
	elif subsystem == "MTM1M3":
		skipped="TSS-2617"
	elif re.match("^Dome\S+", subsystem):
		skipped="skipped"
	elif subsystem == "Hexapod":
		skipped="skipped"
	elif subsystem == "MTM2":
		skipped="skipped"
	elif subsystem == "MTMount":
		skipped="skipped"
	elif subsystem == "Rotator":
		skipped="skipped"
	elif subsystem == "OCS":
		skipped="TSS-1792"
	elif subsystem == "Sequencer":
		skipped="TSS-1793"
	elif subsystem == "ATTCS":
		skipped="TSS-2978"
	elif subsystem == "TCS":
		skipped="TSS-1795"
	elif subsystem == "Dome":
		skipped="TSS-1778"
	elif subsystem == "EFD":
		skipped="TSS-2985"
	elif subsystem == "FiberSpectrometer":
		skipped="TSS-2986"
	else:
		skipped=""

	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " Topic Names\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " topic names conform to naming convention.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + "    " + skipped + "\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/Alias\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |sed -e 's/\\\\n/,/g'\n")
		file.write("\tLog    ${output}\n")
		file.write("\t@{topics}=    Split to Lines    ${output}\n")
		file.write("\t: FOR    ${item}    IN    @{topics}\n")
		file.write("\t\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg=\"${item} does not conform to naming conventions.\"    values=False\n")
		file.write("\n")
