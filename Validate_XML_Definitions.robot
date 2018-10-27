*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Commands
	[Documentation]    Validate the AtDome Commands XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Commands.xml - valid

Validate AtDome Events
	[Documentation]    Validate the AtDome Events XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Events.xml - valid

Validate AtDome Telemetry
	[Documentation]    Validate the AtDome Telemetry XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Telemetry.xml - valid

Validate Cbp Commands
	[Documentation]    Validate the Cbp Commands XML file.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Commands.xml - valid

Validate Cbp Events
	[Documentation]    Validate the Cbp Events XML file.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CBP/CBP_Events.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Events.xml - valid

Validate Cbp Telemetry
	[Documentation]    Validate the Cbp Telemetry XML file.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Telemetry.xml - valid

Validate LinearStage Commands
	[Documentation]    Validate the LinearStage Commands XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Commands.xml - valid

Validate LinearStage Events
	[Documentation]    Validate the LinearStage Events XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Events.xml - valid

Validate LinearStage Telemetry
	[Documentation]    Validate the LinearStage Telemetry XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Telemetry.xml - valid

Validate MTMount Commands
	[Documentation]    Validate the MTMount Commands XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate MTMount Events
	[Documentation]    Validate the MTMount Events XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate MTMount Telemetry
	[Documentation]    Validate the MTMount Telemetry XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate PromptProcessing Commands
	[Documentation]    Validate the PromptProcessing Commands XML file.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Commands.xml - valid

Validate PromptProcessing Events
	[Documentation]    Validate the PromptProcessing Events XML file.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Events.xml - valid

Validate PromptProcessing Telemetry
	[Documentation]    Validate the PromptProcessing Telemetry XML file.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Telemetry.xml - valid

Validate Test Commands
	[Documentation]    Validate the Test Commands XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Test_Commands.xml - valid

Validate Test Events
	[Documentation]    Validate the Test Events XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${output}
	Should Contain    ${output}   Test_Events.xml - valid

Validate Test Telemetry
	[Documentation]    Validate the Test Telemetry XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Test_Telemetry.xml - valid

