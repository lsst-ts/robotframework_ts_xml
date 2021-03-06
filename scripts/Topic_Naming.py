#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_Topic_Naming.robot","w")
home = os.environ['XML_HOME']

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
	if subsystem == "na":
		skipped="skipped"
	else:
		skipped=""

	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		homelength = len(home.split('/'))
		messageType = xml.split('/')[homelength + 2].split('_')[1].split('.')[0]
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
