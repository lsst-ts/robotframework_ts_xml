#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_XML_NoSpaces.robot","w")

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.\n")
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
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		# Create the Subsystem Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <Subsystem> element\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <Subsystem> elements do not contain embedded spaces.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/Subsystem\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain    ${output}    ${SPACE}\n")
		file.write("\n")

		# Create the EFDB_Topic Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Topic> element\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Topic> elements do not contain embedded spaces.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain    ${output}    ${SPACE}\n")
		file.write("\n")

		# Create the Alias Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <Alias> element\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <Alias> elements do not contain embedded spaces.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/Alias\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain    ${output}    ${SPACE}\n")
		file.write("\n")

		# Create the EFDB_Name Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Name> element\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Name> elements do not contain embedded spaces.\n")
		file.write("\t[Tags]    smoke\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/EFDB_Name\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain    ${output}    ${SPACE}\n")
		file.write("\n")

