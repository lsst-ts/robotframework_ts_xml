#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
## Get the list of XMLs for each topic type, Telemetry, Events and Commands.
for topictype in ["Commands", "Events", "Telemetry"]:
	file = open("../Validate_XML_XSD_" + topictype + ".robot","w")

	# Create Settings header.
	file.write("*** Settings ***\n")
	file.write("Documentation    Validate the subsystem XML definition files against the appropriate XSD.\n")
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
	# Determine which subsystems have the appropriate XML definition file.
	for subsystem in xml_common.subsystems:
		# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
		xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "_" + topictype + "*")

		# Mark test cases with Jira tickets
		skipped=com_skipped=event_skipped=enum_skipped=""
		if (subsystem == "ATWhiteLight" and topictype == "Telemetry"):
			telem_skipped="    TSS-3066"
			skipped=com_skipped=event_skipped=""
		else:
			skipped=""
			com_skipped=""
			event_skipped=""
			telem_skipped=""

		# Validate each XML
		for xml in xmls:
			# Create the Test Cases.
			file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + topictype + " XML file\n")
			file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + com_skipped + event_skipped + telem_skipped + skipped +"\n")
			file.write("\t${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SAL" + topictype.rstrip("s") + "Set.xsd ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + topictype + ".xml\n")
			file.write("\tLog    ${output}\n")
			file.write("\tShould Contain    ${output}   " + subsystem + "_" + topictype + ".xml - valid\n")
			file.write("\n")
