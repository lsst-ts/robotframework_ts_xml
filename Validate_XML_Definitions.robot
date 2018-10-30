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

Validate ATHeaderService Commands
	[Documentation]    Validate the ATHeaderService Commands XML file.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATHeaderService_Commands.xml - valid

Validate ATHeaderService Events
	[Documentation]    Validate the ATHeaderService Events XML file.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHeaderService_Events.xml - valid

Validate AtWhiteLight Commands
	[Documentation]    Validate the AtWhiteLight Commands XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	Log    ${output}
	Should Contain    ${output}   AtWhiteLight_Commands.xml - valid

Validate AtWhiteLight Events
	[Documentation]    Validate the AtWhiteLight Events XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtWhiteLight_Events.xml - valid

Validate AtWhiteLight Telemetry
	[Documentation]    Validate the AtWhiteLight Telemetry XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   AtWhiteLight_Telemetry.xml - valid

Validate Catchuparchiver Commands
	[Documentation]    Validate the Catchuparchiver Commands XML file.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Commands.xml - valid

Validate Catchuparchiver Events
	[Documentation]    Validate the Catchuparchiver Events XML file.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Events.xml - valid

Validate Catchuparchiver Telemetry
	[Documentation]    Validate the Catchuparchiver Telemetry XML file.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Telemetry.xml - valid

Validate EFD Events
	[Documentation]    Validate the EFD Events XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/efd/efd_Events.xml
	Log    ${output}
	Should Contain    ${output}   efd_Events.xml - valid

Validate EFD Telemetry
	[Documentation]    Validate the EFD Telemetry XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   efd_Telemetry.xml - valid

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

Validate M2MS Commands
	[Documentation]    Validate the M2MS Commands XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Commands.xml - valid

Validate M2MS Events
	[Documentation]    Validate the M2MS Events XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Events.xml - valid

Validate M2MS Telemetry
	[Documentation]    Validate the M2MS Telemetry XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Telemetry.xml - valid

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

Validate SummitFacility Commands
	[Documentation]    Validate the SummitFacility Commands XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Commands.xml - valid

Validate SummitFacility Events
	[Documentation]    Validate the SummitFacility Events XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Events.xml - valid

Validate SummitFacility Telemetry
	[Documentation]    Validate the SummitFacility Telemetry XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Telemetry.xml - valid

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

