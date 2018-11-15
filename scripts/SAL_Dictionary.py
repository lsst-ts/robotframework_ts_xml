#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os
import platform
import xml_common

# Create/Open test suite file.
file = open("../Validate_SALSubsystems.robot","w")
sal_dict_file = "SALSubsystems.xml"
home = os.environ['XML_HOME']

# Set XML parser application name.
# ... XMLStarlet is invoked differently in Redhat OS systems, like Jenkins.
if ( platform.system() == "Linux"):
	app="xmlstarlet"
else:
	app="xml"

# Create Settings header.
file.write("*** Settings ***\n")
file.write("Documentation    Validate the SAL cscs XML dictionary file.\n")
file.write("Test Setup    Run Keyword If    \"${ContInt}\"==\"true\"    Set Suite Variable    ${xml}    xmlstarlet\n")
file.write("Library    OperatingSystem\n")
file.write("Library    Collections\n")
file.write("Library    String\n")
file.write("Resource    Global_Vars.robot\n")
file.write("\n")

# Create Variables table.
csc_xml_path = '//SALSubsystems/Subsystem/Name'
 
# Get the list of CSCs.
try:
	cscs = "    ".join(subprocess.check_output(app + ' sel -t -m "' + csc_xml_path + '" -v . -n ' + home + '/sal_interfaces/' + sal_dict_file, shell=True).decode("utf-8").split())
except:
	print("\tERROR: " + csc + "_Commands.xml" + " is not valid XML.")
words = str(cscs).split()
sorted_cscs = sorted(words)

# Create the Variables table.
file.write("*** Variables ***\n")
file.write("${xml}    xml\n")
file.write("@{cscs}    " + str(cscs) + "\n")
file.write("\n")

# Create Test Case table.
file.write("*** Test Cases ***\n")

# Validate the sal_dict_file.
file.write("Validate " + sal_dict_file + "\n")
file.write("\t[Documentation]    Validate the " + sal_dict_file + " dictionary file.\n")
file.write("\t[Tags]    smoke\n")
file.write("\t${output}=    Run    ${xml} val -e ${folder}/sal_interfaces/" + sal_dict_file + "\n")
file.write("\tLog    ${output}\n")
file.write("\tShould Contain    ${output}   " + sal_dict_file + " - valid\n")
file.write("\n")

# Ensure expected number of CSCs. This will catch when CSCs are added or removed.
# ...The plus 1 accounts for the Environment CSC, which is temporary, testing only placeholder.
csc_count = len(xml_common.subsystems) + 1
file.write("Validate Number of Defined CSCs\n")
file.write("\t[Documentation]    Validate the number of defined CSCs matches expectation. This test will catch when a CSC is added or removed.\n")
file.write("\t[Tags]    smoke\n")
file.write("\t${output}=    Run    ${xml} sel -t -m \"//SALSubsystems/Subsystem/Name\" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml |sort |wc -l |sed -e 's/ //g'\n")
file.write("\tLog    ${output}\n")
file.write("\tShould Be Equal As Integers    ${output}    " + str(csc_count) + "\n")
file.write("\n")

# Ensure the SAL Dictionary does not contain duplicate entries.
file.write("Validate SAL Dictionary Does Not Contain Duplicates\n")
file.write("\t[Documentation]    Validate the SALSubsystems.xml file does not have any duplicate entries.\n")
file.write("\t[Tags]    smoke\n")
file.write("\t${output}=    Run    ${xml} sel -t -m \"//SALSubsystems/Subsystem/Name\" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml |uniq -d\n")
file.write("\tLog    ${output}\n")
file.write("\tShould Be Empty    ${output}\n")
file.write("\n")

# Begin testing eash for each CSC.
index=0
for csc in xml_common.subsystems:
	index += 1

	# Mark test cases with Jira tickets
	if csc == "MTTCS":
		skipped="    TSS-1795"
	elif csc == "OCS":
		skipped="    TSS-1792"
	elif csc == "Sequencer":
		skipped="    TSS-1793"
	elif csc == "ATTCS":
		skipped="    TSS-2978"
	elif csc == "MTTCS":
		skipped="    TSS-1795"
	elif csc == "Dome":
		skipped="    TSS-1778"
	elif csc == "ATMCS":
		skipped="    TSS-3089"
	elif csc == "Environment":
		skipped="    skipped"
	else:
		skipped=""

	# Create Test Cases.
	file.write("Validate " + xml_common.CapitalizeSubsystem(csc) + " Is Defined\n")
	file.write("\t[Documentation]    Validate the " + sal_dict_file + " dictionary contains the expected CSC.\n")
	file.write("\t[Tags]    smoke    " + csc + skipped + "\n")
	file.write("\tComment    Define CSC.\n")
	file.write("\tSet Test Variable    ${csc}    "+ csc + "\n")
	file.write("\tShould Contain    ${cscs}    ${csc}\n")
	file.write("\n")

	if csc == "Script":
		value="no"
	else:
		value="yes"

	file.write("Validate " + xml_common.CapitalizeSubsystem(csc) + " Generics Element\n")
	file.write("\t[Documentation]    Validate the " + sal_dict_file + " dictionary correctly defines the <Generics> element.\n")
	file.write("\t[Tags]    smoke    " + csc + skipped + "\n")
	file.write("\t${output}=    Run    ${xml} sel -t -m \"//SALSubsystems/Subsystem[" + str(index) + "]/Generics\" -v . -n ${folder}/sal_interfaces/" + sal_dict_file + "\n")
	file.write("\tLog    " + csc + " has Generics: ${output}\n")
	file.write("\tShould Be Equal As Strings    ${output}    " + value + "\n")
	file.write("\n")
