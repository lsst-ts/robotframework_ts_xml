*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Commands <Subsystem> element
	[Documentation]    Validate the AtDome Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Commands <EFDB_Topic> element
	[Documentation]    Validate the AtDome Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Commands <Alias> element
	[Documentation]    Validate the AtDome Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Commands <EFDB_Name> element
	[Documentation]    Validate the AtDome Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Events <Subsystem> element
	[Documentation]    Validate the AtDome Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Events <EFDB_Topic> element
	[Documentation]    Validate the AtDome Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Events <Alias> element
	[Documentation]    Validate the AtDome Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Events <EFDB_Name> element
	[Documentation]    Validate the AtDome Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Telemetry <Subsystem> element
	[Documentation]    Validate the AtDome Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtDome Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Telemetry <Alias> element
	[Documentation]    Validate the AtDome Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtDome Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtDome Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Commands <Subsystem> element
	[Documentation]    Validate the Cbp Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Commands <EFDB_Topic> element
	[Documentation]    Validate the Cbp Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Commands <Alias> element
	[Documentation]    Validate the Cbp Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Commands <EFDB_Name> element
	[Documentation]    Validate the Cbp Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Events <Subsystem> element
	[Documentation]    Validate the Cbp Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Events <EFDB_Topic> element
	[Documentation]    Validate the Cbp Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Events <Alias> element
	[Documentation]    Validate the Cbp Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Events <EFDB_Name> element
	[Documentation]    Validate the Cbp Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Telemetry <Subsystem> element
	[Documentation]    Validate the Cbp Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Cbp Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Telemetry <Alias> element
	[Documentation]    Validate the Cbp Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Cbp Telemetry <EFDB_Name> element
	[Documentation]    Validate the Cbp Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Commands <Subsystem> element
	[Documentation]    Validate the LinearStage Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Commands <EFDB_Topic> element
	[Documentation]    Validate the LinearStage Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Commands <Alias> element
	[Documentation]    Validate the LinearStage Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Commands <EFDB_Name> element
	[Documentation]    Validate the LinearStage Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Events <Subsystem> element
	[Documentation]    Validate the LinearStage Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Events <EFDB_Topic> element
	[Documentation]    Validate the LinearStage Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Events <Alias> element
	[Documentation]    Validate the LinearStage Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Events <EFDB_Name> element
	[Documentation]    Validate the LinearStage Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Telemetry <Subsystem> element
	[Documentation]    Validate the LinearStage Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Telemetry <EFDB_Topic> element
	[Documentation]    Validate the LinearStage Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Telemetry <Alias> element
	[Documentation]    Validate the LinearStage Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate LinearStage Telemetry <EFDB_Name> element
	[Documentation]    Validate the LinearStage Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <Subsystem> element
	[Documentation]    Validate the MTMount Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <EFDB_Topic> element
	[Documentation]    Validate the MTMount Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <Alias> element
	[Documentation]    Validate the MTMount Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <EFDB_Name> element
	[Documentation]    Validate the MTMount Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <Subsystem> element
	[Documentation]    Validate the MTMount Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <EFDB_Topic> element
	[Documentation]    Validate the MTMount Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <Alias> element
	[Documentation]    Validate the MTMount Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <EFDB_Name> element
	[Documentation]    Validate the MTMount Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Subsystem> element
	[Documentation]    Validate the MTMount Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Alias> element
	[Documentation]    Validate the MTMount Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <Subsystem> element
	[Documentation]    Validate the PromptProcessing Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <Alias> element
	[Documentation]    Validate the PromptProcessing Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <Subsystem> element
	[Documentation]    Validate the PromptProcessing Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <Alias> element
	[Documentation]    Validate the PromptProcessing Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <Subsystem> element
	[Documentation]    Validate the PromptProcessing Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <Alias> element
	[Documentation]    Validate the PromptProcessing Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Commands <Subsystem> element
	[Documentation]    Validate the Test Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Commands <EFDB_Topic> element
	[Documentation]    Validate the Test Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Commands <Alias> element
	[Documentation]    Validate the Test Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Commands <EFDB_Name> element
	[Documentation]    Validate the Test Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Events <Subsystem> element
	[Documentation]    Validate the Test Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Events <EFDB_Topic> element
	[Documentation]    Validate the Test Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Events <Alias> element
	[Documentation]    Validate the Test Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Events <EFDB_Name> element
	[Documentation]    Validate the Test Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Telemetry <Subsystem> element
	[Documentation]    Validate the Test Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Test Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Telemetry <Alias> element
	[Documentation]    Validate the Test Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Test Telemetry <EFDB_Name> element
	[Documentation]    Validate the Test Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

