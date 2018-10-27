*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Events XML file
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Events.xml - valid

Validate Cbp Events XML file
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/CBP/CBP_Events.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Events.xml - valid

Validate LinearStage Events XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Events.xml - valid

Validate MTMount Events XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate PromptProcessing Events XML file
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Events.xml - valid

Validate Test Events XML file
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${output}
	Should Contain    ${output}   Test_Events.xml - valid

