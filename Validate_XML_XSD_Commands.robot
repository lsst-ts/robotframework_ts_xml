*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Commands XML file
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Commands.xml - valid

Validate Cbp Commands XML file
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Commands.xml - valid

Validate LinearStage Commands XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Commands.xml - valid

Validate MTMount Commands XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate PromptProcessing Commands XML file
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Commands.xml - valid

Validate Test Commands XML file
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Test/Test_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Test_Commands.xml - valid

