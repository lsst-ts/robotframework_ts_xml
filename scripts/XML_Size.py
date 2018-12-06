#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os
import platform
import xml_common

# Create/Open test suite file.
file = open("../Validate_XML_Topic_Size.robot","w")
home = os.environ['XML_HOME']

# Set XML parser application name.
# ... XMLStarlet is invoked differently in Redhat OS systems, like Jenkins.
if (platform.system() == "Linux"):
	app="xmlstarlet"
else:
	app="xml"

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files do not contain a Topic greater than 65536 bytes in total size or that exceeds 4096 total arguments.\n")
file.write("Suite Setup    Run Keywords    Create the DataType:Size Dictionary    AND    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
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
	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		# Get the message type, i.e. Telemetry, Events, Commands.
		homelength = len(home.split('/'))
		messageType = xml.split('/')[homelength + 2].split('_')[1].split('.')[0]
		# Get the Topics for each message type.
		home = os.environ['XML_HOME']
		salxmlpath = '/SAL' + messageType.rstrip("s") + 'Set/SAL' + messageType.rstrip("s")
		xmlfile = 'sal_interfaces/' + subsystem + '/' + subsystem + '_' + messageType + '.xml'
		try:
			topics = subprocess.check_output(app + ' sel -t -m "/' + salxmlpath + '/EFDB_Topic" -v . -n ' + home + '/' + xmlfile, shell=True).split()
		except:
			print("\tERROR: " + subsystem + '_' + messageType + ".xml" + " is not valid XML.")
		for index, topic in enumerate(topics):
			
			# Mark test cases with Jira tickets
			byte_skipped=col_skipped=""
			if subsystem == "MTM1M3" and topic.decode("utf-8") == "MTM1M3_command_runMirrorForceProfile":
				col_skipped="	TSS-2989"
			elif subsystem == "MTM1M3" and topic.decode("utf-8") == "MTM1M3_logevent_forceActuatorInfo":
				col_skipped="	TSS-2990"
			elif subsystem == "MTM1M3" and topic.decode("utf-8") == "MTM1M3_logevent_forceSetpointWarning":
				col_skipped="	TSS-2991"
			elif subsystem == "MTM1M3" and topic.decode("utf-8") == "MTM1M3_logevent_forceActuatorWarning":
				col_skipped="	TSS-2992"
			elif subsystem == "MTCamera" and topic.decode("utf-8") == "MTCamera_logevent_imageReadoutParameters":
				col_skipped="	TSS-119    #TSEIA-119"
			elif subsystem == "ScriptQueue" and topic.decode("utf-8") == "ScriptQueue_command_stopScripts":
				col_skipped="	TSS-3326"
			elif subsystem == "ScriptQueue" and topic.decode("utf-8") == "ScriptQueue_logevent_queue":
				col_skipped="	TSS-3326"
			else:
				byte_skipped=""
				col_skipped=""

			index += 1

			# Create the Test Cases.
			file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType.rstrip("s") + " " + topic.decode("utf-8") + " Topic Byte Size\n")
			file.write("\t[Documentation]    Validate the " + topic.decode("utf-8") + " topic is less than 65536 bytes in total.\n")
			file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + byte_skipped + "\n")
			file.write("\t[Setup]    Set Test Variable    ${result}    ${0}\n")
			file.write("\tComment    Get the Count of each argument for the topic.\n")
			file.write("\t${itemCount}=    Run    ${xml} sel -t -v \"count(" + salxmlpath + "[" + str(index) + "]/item)\" -n ${folder}/" + xmlfile + "\n")
			file.write("\t${output}=    Run    ${xml} sel -t -m \"/" + salxmlpath + "[" + str(index) + "]/item/Count\" -v . -n ${folder}/" + xmlfile + "\n")
			file.write("\t@{CountArray}=    Split to Lines    ${output}\n")
			file.write("\tComment    Get the Type of each argument for the topic.\n")
			file.write("\t${output}=    Run    ${xml} sel -t -m \"/" + salxmlpath + "[" + str(index) + "]/item/IDL_Type\" -v . -n ${folder}/" + xmlfile + "\n")
			file.write("\t@{TypeArray}=    Split to Lines    ${output}\n")
			file.write("\t:FOR    ${index}    IN RANGE    ${itemCount}\n")
			file.write("\t\    ${key}=    Set Variable    @{TypeArray}[${index}]\n")
			file.write("\t\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint\n")
			file.write("\t\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort\n")
			file.write("\t\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong\n")
			file.write("\t\    Run Keyword If    '${key}'=='unsigned long long'    Set Test Variable    ${key}    ullong\n")
			file.write("\t\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong\n")
			file.write("\t\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]\n")
			file.write("\t\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]\n")
			file.write("\t\    ${size}=    Convert to Number    ${output}\n")
			file.write("\t\    ${result}=    Evaluate    ${result}+${size}\n")
			file.write("\tLog    ${result}\n")
			file.write("\tShould Be True    ${result} < ${65536}\n")
			file.write("\n")

			file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " " + messageType.rstrip("s") + " " + topic.decode("utf-8") + " Topic Columns\n")
			file.write("\t[Documentation]    Validate the " + topic.decode("utf-8") + " topic has less than 4096 total arguments, each representing a column in the EFD.s\n")
			file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + col_skipped + "\n")
			file.write("\t[Setup]    Set Test Variable    ${total}    ${0}\n")
			file.write("\tComment    Get the Count of each argument for the topic.\n")
			file.write("\t${itemCount}=    Run    ${xml} sel -t -v \"count(" + salxmlpath + "[" + str(index) + "]/item)\" -n ${folder}/" + xmlfile + "\n")
			file.write("\t${output}=    Run    ${xml} sel -t -m \"/" + salxmlpath + "[" + str(index) + "]/item/Count\" -v . -n ${folder}/" + xmlfile + "\n")
			file.write("\t@{CountArray}=    Split to Lines    ${output}\n")
			file.write("\t:FOR    ${item}    IN    @{CountArray}\n")
			file.write("\t\    ${total}=    Evaluate    ${total}+${item}\n")
			file.write("\tLog    ${total}\n")
			file.write("\tShould Be True    ${total} <= ${950}\n")
			file.write("\n")

# Create Datatype:Size Dictionary
file.write("*** Keywords ***\n")
file.write("Create the DataType:Size Dictionary\n")
file.write("\t[Tags]    smoke\n")
file.write("\t&{dict}=    Create Dictionary    boolean=2    byte=1    char=1    double=8    float=4    int=4    long=4    llong=8    octet=1    short=2    string=1    uint=4    ushort=2    ulong=4    ullong=8\n")
file.write("\tLog Many    &{dict}\n")
file.write("\tSet Suite Variable    &{dict}\n")
file.write("\n")
