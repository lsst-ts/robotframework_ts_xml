#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import astropy
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_Units.robot","w")
home = os.environ['XML_HOME']

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files contain a valid Unit value.\n")
file.write("Test Setup    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
file.write("Library    OperatingSystem\n")
file.write("Library    String\n")
file.write("Library    Unit_Validator\n")
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
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		homelength = len(home.split('/'))
		messageType = xml.split('/')[homelength + 2].split('_')[1].split('.')[0]
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Units\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Units.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + "\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/Units\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\\\n/,/g'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False\n")
		file.write("\tShould Not Start With    ${output}    ,    msg=Contains undefined units.    values=False\n")
		file.write("\n")

		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Unit types\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Units conform to standards.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + "\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/Units\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk 'NF > 0' |uniq\n")
		file.write("\t@{units}=    Split String    ${output}\n")
		file.write("\tLog    ${units}\n")
		file.write("\t: FOR    ${unit}    IN    @{units}\n")
		file.write("\t\   ${output}=    Run Keyword If    \"${unit}\" == \"unitless\"    Set Variable    Parameter is unitless\n")
		file.write("\t\   ...    ELSE IF    \"${unit}\" == \"dimensionless\"    Set Variable    Parameter is dimensionless\n")
		file.write("\t\   ...    ELSE    Unit_Validator.Check Unit    ${unit}\n")
		#file.write("\t\   ${output}=    Run Keyword Unless    \"${unit}\" == \"unitless\"    Unit_Validator.Check Unit    ${unit}\n")
		file.write("\t\   Log    ${output}\n")
		file.write("\t\   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False\n")
		file.write("\n")
