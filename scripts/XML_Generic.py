#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_XML_Generic_Topics.robot","w")

# Set XML parser application name.
# ... XMLStarlet is invoked differently in Redhat OS systems, like Jenkins.
try:
	os.environ['JENKINS_HOME']
	app="xmlstarlet"
except:
	app="xml"

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the subsystem XML definition files contain all the required generic, or State Machine, commands.\n")
file.write("Suite Setup    Run Keywords    Create the Generic Commands Array    AND    Create the Generic Events Array    AND\n")
file.write("...    Create the Enumeration Array    AND    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
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
	home = os.environ['XML_HOME']
	command_xml_path = '/SALCommandSet/SALCommand'
	event_xml_path = '/SALEventSet/SALEvent'
	command_xml_file = 'sal_interfaces/' + subsystem + '/' + subsystem + '_Commands.xml'
	event_xml_file = 'sal_interfaces/' + subsystem + '/' + subsystem + '_Events.xml'
	if os.path.isfile(home+ "/" + command_xml_file):
		# Get the Topics for each message type.
		topics = subprocess.check_output(app + ' sel -t -m "/' + command_xml_path + '/EFDB_Topic" -v . -n ' + home + '/' + command_xml_file, shell=True).split()
	else:
		continue

	if os.path.isfile(home+ "/" + event_xml_file):
		# Get the Topics for each message type.
		topics = subprocess.check_output(app + ' sel -t -m "/' + event_xml_path + '/EFDB_Topic" -v . -n ' + home + '/' + event_xml_file, shell=True).split()
	else:
		continue
	
	# Mark test cases with Jira tickets
	skipped=com_skipped=event_skipped=enum_skipped=""
	if subsystem == "vms":
		com_skipped=event_skipped=enum_skipped="    TSS-2618"
	elif subsystem == "m1m3":
		com_skipped=event_skipped=enum_skipped="    TSS-2617"
	elif re.match("^dome\S+", subsystem):
		skipped="    skipped"
	elif subsystem == "hexapod":
		skipped="    skipped"
	elif subsystem == "m2ms":
		skipped="    skipped"
	elif subsystem == "MTMount":
		skipped="    skipped"
	elif subsystem == "rotator":
		skipped="    skipped"
	elif subsystem == "tcs":
		com_skipped=event_skipped=enum_skipped="    TSS-1795"
	elif subsystem == "ocs":
		com_skipped=event_skipped=enum_skipped="    TSS-1792"
	elif subsystem == "sequencer":
		com_skipped=event_skipped=enum_skipped="    TSS-1793"
	elif subsystem == "atcs":
		com_skipped=event_skipped="    TSS-2978"
	elif subsystem == "tcs":
		com_skipped="    TSS-1795"
	elif subsystem == "dome":
		com_skipped=event_skipped=enum_skipped="    TSS-1778"
	elif subsystem == "archiver":
		enum_skipped="    TSS-2979"
	elif subsystem == "atArchiver":
		enum_skipped="    TSS-2980"
	elif subsystem == "atcamera":
		enum_skipped="    TSS-2981"
	elif subsystem == "camera":
		enum_skipped="    TSS-2982"
	elif subsystem == "eec":
		enum_skipped="    TSS-2983"
	elif subsystem == "calibrationElectrometer":
		enum_skipped="    TSS-2997"
	elif subsystem == "AtDome":
		enum_skipped="    TSS-3060"
	elif subsystem == "AtDome":
		enum_skipped="    TSS-3060"
	elif subsystem == "AtPneumatics":
		enum_skipped="    TSS-3062"
	elif subsystem == "AtSpectrograph":
		enum_skipped="    TSS-3009"
	elif subsystem == "AtWhiteLight":
		enum_skipped="    TSS-3063"
	elif subsystem == "AtWhiteLightChiller":
		enum_skipped="    TSS-3064"
	elif subsystem == "AtMCS":
        enum_skipped="    TSS-3089"
	else:
		skipped=""
		com_skipped=""
		event_skipped=""
		enum_skipped=""

	# Create the Test Cases.
	file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " Generic Commands\n")
	file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " contains all the required generic, or State Machine, commands.\n")
	file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + com_skipped + skipped + "\n")
	file.write("\tComment    Define CSC.\n")
	file.write("\tSet Test Variable    ${csc}    "+ subsystem + "\n")
	file.write("\tComment    Get the Commands for the CSC.\n")
	file.write("\t${topics}=    Run    ${xml} sel -t -m \"/" + command_xml_path + "/EFDB_Topic\" -v . -n ${folder}/" + command_xml_file + "\n")
	file.write("\t@{Commands}=    Split to Lines    ${topics}\n")
	file.write("\t:FOR    ${state}    IN    @{GenericCommands}\n")
	file.write("\t\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}\n")
	file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}\n")
	file.write("\n")

	file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " Generic Events\n")
	file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " contains all the required generic events.\n")
	file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + event_skipped + skipped + "\n")
	file.write("\tComment    Define CSC.\n")
	file.write("\tSet Test Variable    ${csc}    "+ subsystem + "\n")
	file.write("\tComment    Get the Events.\n")
	file.write("\t${topics}=    Run    ${xml} sel -t -m \"/" + event_xml_path + "/EFDB_Topic\" -v . -n ${folder}/" + event_xml_file + "\n")
	file.write("\t@{Events}=    Split to Lines    ${topics}\n")
	file.write("\t:FOR    ${item}    IN    @{GenericEvents}\n")
	file.write("\t\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}\n")
	file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}\n")
	file.write("\n")

	file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " Event Enumeration\n")
	file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " defines the required enumeration.\n")
	file.write("\t[Tags]    smoke    " + xml_common.CapitalizeSubsystem(subsystem) + enum_skipped + skipped + "\n")
	file.write("\tComment    Define CSC.\n")
	file.write("\tSet Test Variable    ${csc}    "+ subsystem + "\n")
	file.write("\tComment    Get the Event Enumerations.\n")
	file.write("\t${enums}=    Run    ${xml} sel -t -m \"//SALEventSet/Enumeration\" -v . -n ${folder}/" + event_xml_file + "\n")
	file.write("\t:FOR    ${item}    IN    @{Enumerations}\n")
	file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}\n")
	file.write("\n")

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

# Create Enumeration Array
file.write("Create the Enumeration Array\n")
file.write("\t[Tags]    smoke\n")
file.write("\t@{Enumerations}=    Create List    SummaryState_DisabledState    SummaryState_EnabledState\n")
file.write("\t...    SummaryState_FaultState    SummaryState_OfflineState    SummaryState_StandbyState\n")
file.write("\tLog Many    @{Enumerations}\n")
file.write("\tSet Suite Variable    @{Enumerations}\n")
file.write("\n")
