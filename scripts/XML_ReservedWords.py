#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_XML_ReservedWords.robot","w")
home = os.environ['XML_HOME']

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files do not contain Reserved Words in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.\n")
file.write("Suite Setup    Log Many    @{IDLReserved}    @{MySQLReserved}\n")
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
		homelength = len(home.split('/'))
		messageType = xml.split('/')[homelength + 2].split('_')[1].split('.')[0]

		# Mark test cases with Jira tickets
		if subsystem == "test" and messageType == "test":
			mysql_skipped=""
		elif subsystem == "PointingComponent" and messageType == "Telemetry":
			mysql_skipped="    DM-17868"
		else:
			mysql_skipped=""
			idl_skipped=""

        # Create the EFDB_Name Test Cases to verify IDL Reserved words.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " EFDB_Name Values Do Not Use IDL Reserved words\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Name> tags do not contain IDL Reserved Words.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + idl_skipped + "\n")
		file.write("\tComment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/EFDB_Name\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |uniq |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain IDL Reserved Word    ${output}\n")
		file.write("\n")
		# Create the EFDB_Name Test Cases to verify MySQL Reserved words.
		file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " EFDB_Name Values Do Not Use MySQL Reserved Words\n")
		file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType + " <EFDB_Name> tags do not contain MySQL Reserved Words.\n")
		file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + mysql_skipped + "\n")
		file.write("\tComment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.\n")
		file.write("\t${output}=    Run    ${xml} sel -t -m \"//SAL" + messageType.rstrip('s') + "Set/SAL" + messageType.rstrip('s') + "/item/EFDB_Name\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_" + messageType + ".xml |awk '{$1=$1};1' |uniq |tr '\\n' '|'\n")
		file.write("\tLog    ${output}\n")
		file.write("\tShould Not Contain MySQL Reserved Word    ${output}\n")
		file.write("\n")

# Defines the two verification keywords used by the Robot-Framework test suite.
file.write("*** Keywords ***\n")
file.write("Should Not Contain IDL Reserved Word\n")
file.write("\t[Arguments]    ${string}\n")
file.write("\tComment    Perform a case-insensitive search for the use of any IDL Reserved Words.\n")
file.write("\t: FOR    ${word}    IN    @{IDLReserved}\n")
file.write("\t\    Run Keyword And Continue On Failure    Should Not Match Regexp    ${string}   (?ix)(?:^|\\\W)${word}(?:$|\\\W)    msg=IDL Reserved Word ${word} used one or more times\n")
file.write("\n")
file.write("Should Not Contain MySQL Reserved Word\n")
file.write("\t[Arguments]    ${string}\n")
file.write("\tComment    Perform a case-insensitive search for the use of any MySQL Reserved Words.\n")
file.write("\t: FOR    ${word}    IN    @{MySQLReserved}\n")
file.write("\t\    Run Keyword And Continue On Failure    Should Not Match Regexp    ${string}   (?ix)(?:^|\\\W)${word}(?:$|\\\W)    msg=MySQL Reserved Word ${word} used one or more times\n")
