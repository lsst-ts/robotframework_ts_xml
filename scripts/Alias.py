#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import astropy
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_Alias.robot","w")
home = os.environ['XML_HOME']

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files contain an Alias value that conforms the the EFDB_Topic name.\n")
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
		if messageType == "Telemetry":
			continue
		# Create the Test Cases.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Topic Alisases\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " XML Topic Alisases.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + "\n")
		file.write("\t${topic_name}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |cut -d'_' -f 3-\n")
		file.write("\t${alias}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/Alias\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml\n")
		file.write("\tLog Many    ${topic_name}    ${alias}\n")
		file.write("\tShould Match    ${topic_name}    ${alias}\n")
		file.write("\n")
