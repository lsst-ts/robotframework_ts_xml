#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os
import platform
import xml_common

# Create/Open test suite file.
file = open("../Validate_Generic_Topics.robot","w")
sal_generics_file = "SALGenerics.xml"

# Set XML parser application name.
# ... XMLStarlet is invoked differently in Redhat OS systems, like Jenkins.
if (platform.system() == "Linux"):
	app="xmlstarlet"
else:
	app="xml"

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the Generics XML definition file contains the required topics.\n")
file.write("Suite Setup    Run Keywords    Create the Generic Commands Array    AND    Create the Generic Events Array    AND\n")
file.write("...    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
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

# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
home = os.environ['XML_HOME']
command_xml_path = '/SALObjects/SALCommandSet/SALCommand'
event_xml_path = '/SALObjects/SALEventSet/SALEvent'

# Get the Topics for each message type.
try:
	topics = subprocess.check_output(app + ' sel -t -m "/' + command_xml_path + '/EFDB_Topic" -v . -n ' + home + '/sal_interfaces/' + sal_generics_file, shell=True).split()
except:
	print("\tERROR: " + sal_generics_file + + " for Commands is not valid XML.")

# Get the Topics for each message type.
try:
	topics = subprocess.check_output(app + ' sel -t -m "/' + event_xml_path + '/EFDB_Topic" -v . -n ' + home + '/sal_interfaces/' + sal_generics_file, shell=True).split()
except:
	print("\tERROR: " + sal_generics_file + " for Events is not valid XML.")

skipped=""
com_skipped=""
event_skipped=""
enum_skipped=""

# Create the Test Cases.
# Validate the sal_generics_file.
file.write("Validate " + sal_generics_file + "\n")
file.write("\t[Documentation]    Validate the " + sal_generics_file + " dictionary file.\n")
file.write("\t[Tags]    smoke\n")
file.write("\t${output}=    Run    ${xml} val -e ${folder}/sal_interfaces/" + sal_generics_file + "\n")
file.write("\tLog    ${output}\n")
file.write("\tShould Contain    ${output}   " + sal_generics_file + " - valid\n")
file.write("\n")

# Validate the sal_generics_file defines the Generic Commands.
file.write("Validate " + sal_generics_file + " Generic Commands\n")
file.write("\t[Documentation]    Validate the " + sal_generics_file + " contains all the required generic, or State Machine, commands.\n")
file.write("\t[Tags]    smoke    " + com_skipped + skipped + "\n")
file.write("\tComment    Define CSC.\n")
file.write("\tComment    Get the Commands for the CSC.\n")
file.write("\t${topics}=    Run    ${xml} sel -t -m \"/" + command_xml_path + "/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + sal_generics_file + "\n")
file.write("\t@{Commands}=    Split to Lines    ${topics}\n")
file.write("\t:FOR    ${command}    IN    @{GenericCommands}\n")
file.write("\t\    ${string}=    Catenate   SEPARATOR=    SALGeneric_command_     ${command}\n")
file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}\n")
file.write("\n")

# Validate the sal_generics_file defines the Generic Events.
file.write("Validate " + sal_generics_file + " Generic Events\n")
file.write("\t[Documentation]    Validate the " + sal_generics_file + " contains all the required generic events.\n")
file.write("\t[Tags]    smoke    " + event_skipped + skipped + "\n")
file.write("\tComment    Define CSC.\n")
file.write("\tComment    Get the Events.\n")
file.write("\t${topics}=    Run    ${xml} sel -t -m \"/" + event_xml_path + "/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + sal_generics_file + "\n")
file.write("\t@{Events}=    Split to Lines    ${topics}\n")
file.write("\t:FOR    ${item}    IN    @{GenericEvents}\n")
file.write("\t\    ${string}=    Catenate   SEPARATOR=    SALGeneric_logevent_    ${item}\n")
file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}\n")
file.write("\n")

# Verify the CSCs DO NOT explicitly define the Generic Events.
for subsystem in xml_common.subsystems:
	events_file = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "_Events.xml")
	if events_file:
		file.write("Validate " + subsystem + "_Events.xml Does Not Contain Generic Events\n")
		file.write("\t[Documentation]    Validate the " + subsystem + "_Events.xml does not contain Generic Events.\n")
		file.write("\t[Tags]    smoke    " + event_skipped + skipped + "\n")
		file.write("\tComment    Get the CSC Events.\n")
		file.write("\t${events}=    Run    ${xml} sel -t -m \"//SALEventSet/SALEvent/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_Events.xml\n")
		file.write("\tLog    ${events}\n")
		file.write("\t:FOR    ${item}    IN    @{GenericEvents}\n")
		file.write("\t\    Log Many    ${events}    " + subsystem + "_logevent_${item}\n")
		file.write("\t\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    " + subsystem + "_logevent_${item}\n")
		file.write("\n")

# Verify the CSCs DO NOT explicitly define the Generic Commands.
	commands_file = glob.glob(os.environ['XML_HOME'] + "/sal_interfaces/" + subsystem + "/" + subsystem + "_Commands.xml")
	if commands_file:
		file.write("Validate " + subsystem + "_Commands.xml Does Not Contain Generic Commands\n")
		file.write("\t[Documentation]    Validate the " + subsystem + "_Commands.xml does not contain Generic Commands.\n")
		file.write("\t[Tags]    smoke    " + com_skipped + skipped + "\n")
		file.write("\tComment    Get the CSC Commands.\n")
		file.write("\t${commands}=    Run    ${xml} sel -t -m \"//SALCommandSet/SALCommand/EFDB_Topic\" -v . -n ${folder}/sal_interfaces/" + subsystem + "/" + subsystem + "_Commands.xml\n")
		file.write("\t:FOR    ${generic}    IN    @{GenericCommands}\n")
		file.write("\t\    Run Keyword And Continue On Failure    Test Commands    ${commands}    " + subsystem + "_command_${generic}\n")
		file.write("\n")

# Create custom keywords
# Create Generic Commands Array
file.write("*** Keywords ***\n")
file.write("Create the Generic Commands Array\n")
file.write("\t[Tags]    smoke\n")
file.write("\t@{GenericCommands}=    Create List    start    enable    disable    standby\n")
file.write("\tLog Many    @{GenericCommands}\n")
file.write("\tSet Suite Variable    @{GenericCommands}\n")
file.write("\n")

# Create Generic Events Array
file.write("Create the Generic Events Array\n")
file.write("\t[Tags]    smoke\n")
file.write("\t@{GenericEvents}=    Create List    appliedSettingsMatchStart    errorCode    settingVersions    summaryState\n")
file.write("\tLog Many    @{GenericEvents}\n")
file.write("\tSet Suite Variable    @{GenericEvents}\n")
file.write("\n")

# Create Command Validation keyword
file.write("Test Commands\n")
file.write("\t[Arguments]    ${commands}    ${generic}\n")
file.write("\tComment    Convert to list.\n")
file.write("\t@{commands}=    Split String    ${commands}\n")
file.write("\t:FOR    ${item}    IN    @{commands}\n")
file.write("\t\    Log Many    ${item}    ${generic}\n")
file.write("\t\    Should Not Match    ${item}    ${generic}\n")
file.write("\n")
