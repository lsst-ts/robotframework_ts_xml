#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os
import xml_common

# Create/Open test suite file.
file = open("../Validate_XML_Generic_Commands.robot","w")

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
file.write("Suite Setup    Run Keywords    Create the Generic Array    AND    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
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
	salxmlpath = '/SALCommandSet/SALCommand'
	xmlfile = 'sal_interfaces/' + subsystem + '/' + subsystem + '_Commands.xml'
	if os.path.isfile(home+ "/" + xmlfile):
		# Get the Topics for each message type.
		topics = subprocess.check_output(app + ' sel -t -m "/' + salxmlpath + '/EFDB_Topic" -v . -n ' + home + '/' + xmlfile, shell=True).split()
	else:
		#print("Skipping " + xmlfile)
		continue
	
	# Mark test cases with Jira tickets
	if subsystem == "summitFacility":
		skipped="TSS-2622"
	elif subsystem == "promptProcessing":
		skipped="TSS-2621"
	elif subsystem == "catchuparchiver":
		skipped="TSS-2620"
	elif subsystem == "calibrationElectrometer":
		skipped="TSS-2619"
	elif subsystem == "vms":
		skipped="TSS-2618"
	elif subsystem == "m1m3":
		skipped="TSS-2617"
	else:
		skipped=""

	# Create the Test Cases.
	file.write("Validate " + xml_common.CapitalizeSubsystem(subsystem) + " Generic Commands\n")
	file.write("\t[Documentation]    Validate the " + xml_common.CapitalizeSubsystem(subsystem) + " contains all the required generic, or State Machine, commands.\n")
	file.write("\t[Tags]    smoke    " + skipped + "\n")
	file.write("\tComment    Define CSC.\n")
	file.write("\tSet Test Variable    ${csc}    "+ subsystem + "\n")
	file.write("\tComment    Get the Commands for the CSC.\n")
	file.write("\t${commands}=    Run    ${xml} sel -t -m \"/" + salxmlpath + "/EFDB_Topic\" -v . -n ${folder}/" + xmlfile + "\n")
	file.write("\t@{Commands}=    Split to Lines    ${commands}\n")
	file.write("\t:FOR    ${state}    IN    @{Generics}\n")
	file.write("\t\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}\n")
	file.write("\t\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}\n")
	file.write("\n")

# Create Generic Array
file.write("*** Keywords ***\n")
file.write("Create the Generic Array\n")
file.write("\t[Tags]    smoke\n")
file.write("\t@{Generics}=    Create List    start    enable    disable    standby\n")
file.write("\tLog Many    @{Generics}\n")
file.write("\tSet Suite Variable    @{Generics}\n")
file.write("\n")
