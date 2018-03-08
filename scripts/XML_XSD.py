#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
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
	xmls = glob.glob("/Users/rbovill/trunk/ts_xml/sal_interfaces/*/*_" + topictype + ".xml")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		subsystem = xml.split('/')[6]
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + topictype + " XML file\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SAL" + topictype.rstrip("s") + "Set.xsd ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + topictype + ".xml\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Contain    ${output}   " + subsystem + "_" + topictype + ".xml - valid\n")
		file.write("\n")