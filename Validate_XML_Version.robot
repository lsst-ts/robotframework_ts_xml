*** Settings ***
Documentation    Validate the XML Version file contains the correct version.
Library    OperatingSystem
Resource    Global_Vars.robot

*** Test Cases ***
Validate XML Version File
	[Documentation]    Validate the AXML Version file.
	[Tags]    smoke
	${output}=    Run    cat ${folder}/VERSION |tr -d '[:space:]'
	Log Many    ${output}    ${version}
	Should Match    ${output}    ${version}
