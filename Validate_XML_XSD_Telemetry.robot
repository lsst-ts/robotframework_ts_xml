*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Telemetry XML file
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Telemetry.xml - valid

Validate Cbp Telemetry XML file
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Telemetry.xml - valid

Validate LinearStage Telemetry XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Telemetry.xml - valid

Validate MTMount Telemetry XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate PromptProcessing Telemetry XML file
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Telemetry.xml - valid

Validate Test Telemetry XML file
	[Tags]    smoke    Test    TSS-3224
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Test_Telemetry.xml - valid

