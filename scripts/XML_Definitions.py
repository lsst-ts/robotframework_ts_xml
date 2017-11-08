#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import xml_common

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
for subsystem in xml_common.subsystems:
	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob("/Users/rbovill/trunk/ts_xml/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + "\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML file.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} val ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Contain    ${output}   " + subsystem + "_" + messageType + ".xml - valid\n")
		file.write("\n")



