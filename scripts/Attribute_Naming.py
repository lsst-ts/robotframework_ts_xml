#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_Attribute_Naming.robot","w")

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML attribute names are in lowerCamelCase.\n")
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
	if subsystem == "vms":
		skipped="TSS-2618"
	elif subsystem == "m1m3":
		skipped="TSS-2617"
	elif re.match("^dome\S+", subsystem):
		skipped="skipped"
	elif subsystem == "hexapod":
		skipped="skipped"
	elif subsystem == "m2ms":
		skipped="skipped"
	elif subsystem == "MTMount":
		skipped="skipped"
	elif subsystem == "ocs":
		skipped="TSS-1792"
	elif subsystem == "sequencer":
		skipped="TSS-1793"
	elif subsystem == "rotator":
		skipped="skipped"
	elif subsystem == "atcs":
		skipped="TSS-2978"
	elif subsystem == "tcs":
		skipped="TSS-1795"
	elif subsystem == "dome":
		skipped="TSS-1778"
	elif subsystem == "efd":
		skipped="TSS-2985"
	else:
		skipped=""

	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " Attribute Names\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " attribute names conform to naming convention.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + "    " + skipped + "\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/EFDB_Name\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |sed -e 's/\\\\n/,/g'\n")
		file.write("\tLog    ${output}\n")
		file.write("\t@{attributes}=    Split to Lines    ${output}\n")
		file.write("\t: FOR    ${item}    IN    @{attributes}\n")
		file.write("\t\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg=\"${item} does not conform to naming conventions.\"    values=False\n")
		file.write("\n")
