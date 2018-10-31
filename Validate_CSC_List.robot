*** Settings ***
Documentation    Validate the CSC XML list file contain all the expected CSCs.
Suite Setup    Run Keyword    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate CSC List
    [Tags]    smoke
	Comment    First, validate the Subsystem list XML is valid.
	${output}=    Run    ${xml} val -e ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Not Contain    ${output}    SALSubsystems.xml - invalid
	Should Contain    ${output}    SALSubsystems.xml - valid
