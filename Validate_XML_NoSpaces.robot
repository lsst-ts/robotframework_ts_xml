*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands <Subsystem> element
	[Documentation]    Validate the ATAOS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Commands <EFDB_Topic> element
	[Documentation]    Validate the ATAOS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Commands <Alias> element
	[Documentation]    Validate the ATAOS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Commands <EFDB_Name> element
	[Documentation]    Validate the ATAOS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Events <Subsystem> element
	[Documentation]    Validate the ATAOS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Events <EFDB_Topic> element
	[Documentation]    Validate the ATAOS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Events <Alias> element
	[Documentation]    Validate the ATAOS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Events <EFDB_Name> element
	[Documentation]    Validate the ATAOS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Telemetry <Subsystem> element
	[Documentation]    Validate the ATAOS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATAOS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Telemetry <Alias> element
	[Documentation]    Validate the ATAOS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATAOS Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATAOS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Commands <Subsystem> element
	[Documentation]    Validate the ATArchiver Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Commands <EFDB_Topic> element
	[Documentation]    Validate the ATArchiver Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Commands <Alias> element
	[Documentation]    Validate the ATArchiver Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Commands <EFDB_Name> element
	[Documentation]    Validate the ATArchiver Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Events <Subsystem> element
	[Documentation]    Validate the ATArchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Events <EFDB_Topic> element
	[Documentation]    Validate the ATArchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Events <Alias> element
	[Documentation]    Validate the ATArchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Events <EFDB_Name> element
	[Documentation]    Validate the ATArchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Telemetry <Subsystem> element
	[Documentation]    Validate the ATArchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATArchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Telemetry <Alias> element
	[Documentation]    Validate the ATArchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATArchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATArchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Events <Subsystem> element
	[Documentation]    Validate the ATBuilding Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Events <EFDB_Topic> element
	[Documentation]    Validate the ATBuilding Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Events <Alias> element
	[Documentation]    Validate the ATBuilding Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Events <EFDB_Name> element
	[Documentation]    Validate the ATBuilding Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Telemetry <Subsystem> element
	[Documentation]    Validate the ATBuilding Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATBuilding Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Telemetry <Alias> element
	[Documentation]    Validate the ATBuilding Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATBuilding Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATBuilding Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Commands <Subsystem> element
	[Documentation]    Validate the ATCamera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Commands <EFDB_Topic> element
	[Documentation]    Validate the ATCamera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Commands <Alias> element
	[Documentation]    Validate the ATCamera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Commands <EFDB_Name> element
	[Documentation]    Validate the ATCamera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Events <Subsystem> element
	[Documentation]    Validate the ATCamera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Events <EFDB_Topic> element
	[Documentation]    Validate the ATCamera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Events <Alias> element
	[Documentation]    Validate the ATCamera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Events <EFDB_Name> element
	[Documentation]    Validate the ATCamera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Telemetry <Subsystem> element
	[Documentation]    Validate the ATCamera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATCamera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Telemetry <Alias> element
	[Documentation]    Validate the ATCamera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCamera Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATCamera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Commands <Subsystem> element
	[Documentation]    Validate the ATDome Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Commands <EFDB_Topic> element
	[Documentation]    Validate the ATDome Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Commands <Alias> element
	[Documentation]    Validate the ATDome Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Commands <EFDB_Name> element
	[Documentation]    Validate the ATDome Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Events <Subsystem> element
	[Documentation]    Validate the ATDome Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Events <EFDB_Topic> element
	[Documentation]    Validate the ATDome Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Events <Alias> element
	[Documentation]    Validate the ATDome Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Events <EFDB_Name> element
	[Documentation]    Validate the ATDome Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Telemetry <Subsystem> element
	[Documentation]    Validate the ATDome Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATDome Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Telemetry <Alias> element
	[Documentation]    Validate the ATDome Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDome Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATDome Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDomeTrajectory Events <Subsystem> element
	[Documentation]    Validate the ATDomeTrajectory Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDomeTrajectory Events <EFDB_Topic> element
	[Documentation]    Validate the ATDomeTrajectory Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDomeTrajectory Events <Alias> element
	[Documentation]    Validate the ATDomeTrajectory Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATDomeTrajectory Events <EFDB_Name> element
	[Documentation]    Validate the ATDomeTrajectory Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Events <Subsystem> element
	[Documentation]    Validate the ATHeaderService Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Events <EFDB_Topic> element
	[Documentation]    Validate the ATHeaderService Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Events <Alias> element
	[Documentation]    Validate the ATHeaderService Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Events <EFDB_Name> element
	[Documentation]    Validate the ATHeaderService Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Commands <Subsystem> element
	[Documentation]    Validate the ATHexapod Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Commands <EFDB_Topic> element
	[Documentation]    Validate the ATHexapod Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Commands <Alias> element
	[Documentation]    Validate the ATHexapod Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Commands <EFDB_Name> element
	[Documentation]    Validate the ATHexapod Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Events <Subsystem> element
	[Documentation]    Validate the ATHexapod Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Events <EFDB_Topic> element
	[Documentation]    Validate the ATHexapod Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Events <Alias> element
	[Documentation]    Validate the ATHexapod Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Events <EFDB_Name> element
	[Documentation]    Validate the ATHexapod Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Telemetry <Subsystem> element
	[Documentation]    Validate the ATHexapod Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATHexapod Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Telemetry <Alias> element
	[Documentation]    Validate the ATHexapod Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHexapod Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATHexapod Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Commands <Subsystem> element
	[Documentation]    Validate the ATMCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Commands <EFDB_Topic> element
	[Documentation]    Validate the ATMCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Commands <Alias> element
	[Documentation]    Validate the ATMCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Commands <EFDB_Name> element
	[Documentation]    Validate the ATMCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Events <Subsystem> element
	[Documentation]    Validate the ATMCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Events <EFDB_Topic> element
	[Documentation]    Validate the ATMCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Events <Alias> element
	[Documentation]    Validate the ATMCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Events <EFDB_Name> element
	[Documentation]    Validate the ATMCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Telemetry <Subsystem> element
	[Documentation]    Validate the ATMCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATMCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Telemetry <Alias> element
	[Documentation]    Validate the ATMCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATMCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Commands <Subsystem> element
	[Documentation]    Validate the ATMonochromator Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Commands <EFDB_Topic> element
	[Documentation]    Validate the ATMonochromator Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Commands <Alias> element
	[Documentation]    Validate the ATMonochromator Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Commands <EFDB_Name> element
	[Documentation]    Validate the ATMonochromator Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Events <Subsystem> element
	[Documentation]    Validate the ATMonochromator Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Events <EFDB_Topic> element
	[Documentation]    Validate the ATMonochromator Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Events <Alias> element
	[Documentation]    Validate the ATMonochromator Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Events <EFDB_Name> element
	[Documentation]    Validate the ATMonochromator Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Telemetry <Subsystem> element
	[Documentation]    Validate the ATMonochromator Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATMonochromator Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Telemetry <Alias> element
	[Documentation]    Validate the ATMonochromator Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATMonochromator Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATMonochromator Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Commands <Subsystem> element
	[Documentation]    Validate the ATPneumatics Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Commands <EFDB_Topic> element
	[Documentation]    Validate the ATPneumatics Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Commands <Alias> element
	[Documentation]    Validate the ATPneumatics Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Commands <EFDB_Name> element
	[Documentation]    Validate the ATPneumatics Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Events <Subsystem> element
	[Documentation]    Validate the ATPneumatics Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Events <EFDB_Topic> element
	[Documentation]    Validate the ATPneumatics Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Events <Alias> element
	[Documentation]    Validate the ATPneumatics Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Events <EFDB_Name> element
	[Documentation]    Validate the ATPneumatics Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Telemetry <Subsystem> element
	[Documentation]    Validate the ATPneumatics Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATPneumatics Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Telemetry <Alias> element
	[Documentation]    Validate the ATPneumatics Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPneumatics Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATPneumatics Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Commands <Subsystem> element
	[Documentation]    Validate the ATPtg Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Commands <EFDB_Topic> element
	[Documentation]    Validate the ATPtg Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Commands <Alias> element
	[Documentation]    Validate the ATPtg Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Commands <EFDB_Name> element
	[Documentation]    Validate the ATPtg Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Events <Subsystem> element
	[Documentation]    Validate the ATPtg Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Events <EFDB_Topic> element
	[Documentation]    Validate the ATPtg Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Events <Alias> element
	[Documentation]    Validate the ATPtg Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Events <EFDB_Name> element
	[Documentation]    Validate the ATPtg Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Telemetry <Subsystem> element
	[Documentation]    Validate the ATPtg Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATPtg Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Telemetry <Alias> element
	[Documentation]    Validate the ATPtg Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATPtg Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATPtg Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Commands <Subsystem> element
	[Documentation]    Validate the ATSpectrograph Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Commands <EFDB_Topic> element
	[Documentation]    Validate the ATSpectrograph Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Commands <Alias> element
	[Documentation]    Validate the ATSpectrograph Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Commands <EFDB_Name> element
	[Documentation]    Validate the ATSpectrograph Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Events <Subsystem> element
	[Documentation]    Validate the ATSpectrograph Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Events <EFDB_Topic> element
	[Documentation]    Validate the ATSpectrograph Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Events <Alias> element
	[Documentation]    Validate the ATSpectrograph Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Events <EFDB_Name> element
	[Documentation]    Validate the ATSpectrograph Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Telemetry <Subsystem> element
	[Documentation]    Validate the ATSpectrograph Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATSpectrograph Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Telemetry <Alias> element
	[Documentation]    Validate the ATSpectrograph Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATSpectrograph Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATSpectrograph Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Commands <Subsystem> element
	[Documentation]    Validate the ATTCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Commands <EFDB_Topic> element
	[Documentation]    Validate the ATTCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Commands <Alias> element
	[Documentation]    Validate the ATTCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Commands <EFDB_Name> element
	[Documentation]    Validate the ATTCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Events <Subsystem> element
	[Documentation]    Validate the ATTCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Events <EFDB_Topic> element
	[Documentation]    Validate the ATTCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Events <Alias> element
	[Documentation]    Validate the ATTCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Events <EFDB_Name> element
	[Documentation]    Validate the ATTCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Telemetry <Subsystem> element
	[Documentation]    Validate the ATTCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATTCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Telemetry <Alias> element
	[Documentation]    Validate the ATTCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATTCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATTCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Commands <Subsystem> element
	[Documentation]    Validate the ATWhiteLight Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Commands <EFDB_Topic> element
	[Documentation]    Validate the ATWhiteLight Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Commands <Alias> element
	[Documentation]    Validate the ATWhiteLight Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Commands <EFDB_Name> element
	[Documentation]    Validate the ATWhiteLight Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Events <Subsystem> element
	[Documentation]    Validate the ATWhiteLight Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Events <EFDB_Topic> element
	[Documentation]    Validate the ATWhiteLight Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Events <Alias> element
	[Documentation]    Validate the ATWhiteLight Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Events <EFDB_Name> element
	[Documentation]    Validate the ATWhiteLight Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Telemetry <Subsystem> element
	[Documentation]    Validate the ATWhiteLight Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATWhiteLight Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Telemetry <Alias> element
	[Documentation]    Validate the ATWhiteLight Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATWhiteLight Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATWhiteLight Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <Subsystem> element
	[Documentation]    Validate the CatchupArchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <EFDB_Topic> element
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <Alias> element
	[Documentation]    Validate the CatchupArchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <EFDB_Name> element
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <Subsystem> element
	[Documentation]    Validate the CatchupArchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <Alias> element
	[Documentation]    Validate the CatchupArchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Commands <Subsystem> element
	[Documentation]    Validate the CBP Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Commands <EFDB_Topic> element
	[Documentation]    Validate the CBP Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Commands <Alias> element
	[Documentation]    Validate the CBP Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Commands <EFDB_Name> element
	[Documentation]    Validate the CBP Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Telemetry <Subsystem> element
	[Documentation]    Validate the CBP Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Telemetry <EFDB_Topic> element
	[Documentation]    Validate the CBP Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Telemetry <Alias> element
	[Documentation]    Validate the CBP Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CBP Telemetry <EFDB_Name> element
	[Documentation]    Validate the CBP Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Events <Subsystem> element
	[Documentation]    Validate the DIMM Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Events <EFDB_Topic> element
	[Documentation]    Validate the DIMM Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Events <Alias> element
	[Documentation]    Validate the DIMM Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Events <EFDB_Name> element
	[Documentation]    Validate the DIMM Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Telemetry <Subsystem> element
	[Documentation]    Validate the DIMM Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DIMM Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Telemetry <Alias> element
	[Documentation]    Validate the DIMM Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DIMM Telemetry <EFDB_Name> element
	[Documentation]    Validate the DIMM Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <Subsystem> element
	[Documentation]    Validate the Dome Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <EFDB_Topic> element
	[Documentation]    Validate the Dome Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <Alias> element
	[Documentation]    Validate the Dome Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <EFDB_Name> element
	[Documentation]    Validate the Dome Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <Subsystem> element
	[Documentation]    Validate the Dome Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <EFDB_Topic> element
	[Documentation]    Validate the Dome Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <Alias> element
	[Documentation]    Validate the Dome Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <EFDB_Name> element
	[Documentation]    Validate the Dome Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Subsystem> element
	[Documentation]    Validate the Dome Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Alias> element
	[Documentation]    Validate the Dome Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Name> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Events <Subsystem> element
	[Documentation]    Validate the DSM Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Events <EFDB_Topic> element
	[Documentation]    Validate the DSM Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Events <Alias> element
	[Documentation]    Validate the DSM Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Events <EFDB_Name> element
	[Documentation]    Validate the DSM Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Telemetry <Subsystem> element
	[Documentation]    Validate the DSM Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DSM Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Telemetry <Alias> element
	[Documentation]    Validate the DSM Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DSM Telemetry <EFDB_Name> element
	[Documentation]    Validate the DSM Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Events <Subsystem> element
	[Documentation]    Validate the EAS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Events <EFDB_Topic> element
	[Documentation]    Validate the EAS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Events <Alias> element
	[Documentation]    Validate the EAS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Events <EFDB_Name> element
	[Documentation]    Validate the EAS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Telemetry <Subsystem> element
	[Documentation]    Validate the EAS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EAS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Telemetry <Alias> element
	[Documentation]    Validate the EAS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EAS Telemetry <EFDB_Name> element
	[Documentation]    Validate the EAS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Subsystem> element
	[Documentation]    Validate the EFD Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Topic> element
	[Documentation]    Validate the EFD Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Alias> element
	[Documentation]    Validate the EFD Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Name> element
	[Documentation]    Validate the EFD Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Subsystem> element
	[Documentation]    Validate the EFD Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Alias> element
	[Documentation]    Validate the EFD Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Name> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Events <Subsystem> element
	[Documentation]    Validate the EFDTransformationServer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Events <EFDB_Topic> element
	[Documentation]    Validate the EFDTransformationServer Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Events <Alias> element
	[Documentation]    Validate the EFDTransformationServer Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Events <EFDB_Name> element
	[Documentation]    Validate the EFDTransformationServer Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Telemetry <Subsystem> element
	[Documentation]    Validate the EFDTransformationServer Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EFDTransformationServer Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Telemetry <Alias> element
	[Documentation]    Validate the EFDTransformationServer Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFDTransformationServer Telemetry <EFDB_Name> element
	[Documentation]    Validate the EFDTransformationServer Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Commands <Subsystem> element
	[Documentation]    Validate the Electrometer Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Commands <EFDB_Topic> element
	[Documentation]    Validate the Electrometer Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Commands <Alias> element
	[Documentation]    Validate the Electrometer Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Commands <EFDB_Name> element
	[Documentation]    Validate the Electrometer Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Events <Subsystem> element
	[Documentation]    Validate the Electrometer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Events <EFDB_Topic> element
	[Documentation]    Validate the Electrometer Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Events <Alias> element
	[Documentation]    Validate the Electrometer Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Electrometer Events <EFDB_Name> element
	[Documentation]    Validate the Electrometer Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Events <Subsystem> element
	[Documentation]    Validate the Environment Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Events <EFDB_Topic> element
	[Documentation]    Validate the Environment Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Events <Alias> element
	[Documentation]    Validate the Environment Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Events <EFDB_Name> element
	[Documentation]    Validate the Environment Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Telemetry <Subsystem> element
	[Documentation]    Validate the Environment Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Environment Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Telemetry <Alias> element
	[Documentation]    Validate the Environment Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Environment Telemetry <EFDB_Name> element
	[Documentation]    Validate the Environment Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Commands <Subsystem> element
	[Documentation]    Validate the FiberSpectrograph Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Commands <EFDB_Topic> element
	[Documentation]    Validate the FiberSpectrograph Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Commands <Alias> element
	[Documentation]    Validate the FiberSpectrograph Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Commands <EFDB_Name> element
	[Documentation]    Validate the FiberSpectrograph Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Events <Subsystem> element
	[Documentation]    Validate the FiberSpectrograph Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Events <EFDB_Topic> element
	[Documentation]    Validate the FiberSpectrograph Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Events <Alias> element
	[Documentation]    Validate the FiberSpectrograph Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Events <EFDB_Name> element
	[Documentation]    Validate the FiberSpectrograph Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Telemetry <Subsystem> element
	[Documentation]    Validate the FiberSpectrograph Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Telemetry <EFDB_Topic> element
	[Documentation]    Validate the FiberSpectrograph Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Telemetry <Alias> element
	[Documentation]    Validate the FiberSpectrograph Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate FiberSpectrograph Telemetry <EFDB_Name> element
	[Documentation]    Validate the FiberSpectrograph Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Commands <Subsystem> element
	[Documentation]    Validate the GenericCamera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Commands <EFDB_Topic> element
	[Documentation]    Validate the GenericCamera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Commands <Alias> element
	[Documentation]    Validate the GenericCamera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Commands <EFDB_Name> element
	[Documentation]    Validate the GenericCamera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Events <Subsystem> element
	[Documentation]    Validate the GenericCamera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Events <EFDB_Topic> element
	[Documentation]    Validate the GenericCamera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Events <Alias> element
	[Documentation]    Validate the GenericCamera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Events <EFDB_Name> element
	[Documentation]    Validate the GenericCamera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Telemetry <Subsystem> element
	[Documentation]    Validate the GenericCamera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the GenericCamera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Telemetry <Alias> element
	[Documentation]    Validate the GenericCamera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate GenericCamera Telemetry <EFDB_Name> element
	[Documentation]    Validate the GenericCamera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Events <Subsystem> element
	[Documentation]    Validate the IOTA Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Events <EFDB_Topic> element
	[Documentation]    Validate the IOTA Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Events <Alias> element
	[Documentation]    Validate the IOTA Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Events <EFDB_Name> element
	[Documentation]    Validate the IOTA Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Telemetry <Subsystem> element
	[Documentation]    Validate the IOTA Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Telemetry <EFDB_Topic> element
	[Documentation]    Validate the IOTA Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Telemetry <Alias> element
	[Documentation]    Validate the IOTA Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate IOTA Telemetry <EFDB_Name> element
	[Documentation]    Validate the IOTA Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <Subsystem> element
	[Documentation]    Validate the Hexapod Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <Alias> element
	[Documentation]    Validate the Hexapod Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <EFDB_Name> element
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <Subsystem> element
	[Documentation]    Validate the Hexapod Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <Alias> element
	[Documentation]    Validate the Hexapod Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <EFDB_Name> element
	[Documentation]    Validate the Hexapod Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Subsystem> element
	[Documentation]    Validate the Hexapod Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Alias> element
	[Documentation]    Validate the Hexapod Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Name> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Commands <Subsystem> element
	[Documentation]    Validate the HVAC Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Commands <EFDB_Topic> element
	[Documentation]    Validate the HVAC Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Commands <Alias> element
	[Documentation]    Validate the HVAC Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Commands <EFDB_Name> element
	[Documentation]    Validate the HVAC Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Events <Subsystem> element
	[Documentation]    Validate the HVAC Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Events <EFDB_Topic> element
	[Documentation]    Validate the HVAC Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Events <Alias> element
	[Documentation]    Validate the HVAC Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Events <EFDB_Name> element
	[Documentation]    Validate the HVAC Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Telemetry <Subsystem> element
	[Documentation]    Validate the HVAC Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Telemetry <EFDB_Topic> element
	[Documentation]    Validate the HVAC Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Telemetry <Alias> element
	[Documentation]    Validate the HVAC Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HVAC Telemetry <EFDB_Name> element
	[Documentation]    Validate the HVAC Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate MTAOS Commands <Subsystem> element
	[Documentation]    Validate the MTAOS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Commands <EFDB_Topic> element
	[Documentation]    Validate the MTAOS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Commands <Alias> element
	[Documentation]    Validate the MTAOS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Commands <EFDB_Name> element
	[Documentation]    Validate the MTAOS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Events <Subsystem> element
	[Documentation]    Validate the MTAOS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Events <EFDB_Topic> element
	[Documentation]    Validate the MTAOS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Events <Alias> element
	[Documentation]    Validate the MTAOS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Events <EFDB_Name> element
	[Documentation]    Validate the MTAOS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Telemetry <Subsystem> element
	[Documentation]    Validate the MTAOS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTAOS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Telemetry <Alias> element
	[Documentation]    Validate the MTAOS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTAOS Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTAOS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Events <Subsystem> element
	[Documentation]    Validate the MTArchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Events <EFDB_Topic> element
	[Documentation]    Validate the MTArchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Events <Alias> element
	[Documentation]    Validate the MTArchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Events <EFDB_Name> element
	[Documentation]    Validate the MTArchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Telemetry <Subsystem> element
	[Documentation]    Validate the MTArchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTArchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Telemetry <Alias> element
	[Documentation]    Validate the MTArchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTArchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTArchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Commands <Subsystem> element
	[Documentation]    Validate the MTCamera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Commands <EFDB_Topic> element
	[Documentation]    Validate the MTCamera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Commands <Alias> element
	[Documentation]    Validate the MTCamera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Commands <EFDB_Name> element
	[Documentation]    Validate the MTCamera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Events <Subsystem> element
	[Documentation]    Validate the MTCamera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Events <EFDB_Topic> element
	[Documentation]    Validate the MTCamera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Events <Alias> element
	[Documentation]    Validate the MTCamera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Events <EFDB_Name> element
	[Documentation]    Validate the MTCamera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Telemetry <Subsystem> element
	[Documentation]    Validate the MTCamera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTCamera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Telemetry <Alias> element
	[Documentation]    Validate the MTCamera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTCamera Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTCamera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Events <Subsystem> element
	[Documentation]    Validate the MTDomeTrajectory Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Events <EFDB_Topic> element
	[Documentation]    Validate the MTDomeTrajectory Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Events <Alias> element
	[Documentation]    Validate the MTDomeTrajectory Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Events <EFDB_Name> element
	[Documentation]    Validate the MTDomeTrajectory Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Telemetry <Subsystem> element
	[Documentation]    Validate the MTDomeTrajectory Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTDomeTrajectory Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Telemetry <Alias> element
	[Documentation]    Validate the MTDomeTrajectory Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTDomeTrajectory Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTDomeTrajectory Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Commands <Subsystem> element
	[Documentation]    Validate the MTEEC Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Commands <EFDB_Topic> element
	[Documentation]    Validate the MTEEC Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Commands <Alias> element
	[Documentation]    Validate the MTEEC Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Commands <EFDB_Name> element
	[Documentation]    Validate the MTEEC Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Events <Subsystem> element
	[Documentation]    Validate the MTEEC Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Events <EFDB_Topic> element
	[Documentation]    Validate the MTEEC Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Events <Alias> element
	[Documentation]    Validate the MTEEC Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTEEC Events <EFDB_Name> element
	[Documentation]    Validate the MTEEC Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Events <Subsystem> element
	[Documentation]    Validate the MTGuider Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Events <EFDB_Topic> element
	[Documentation]    Validate the MTGuider Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Events <Alias> element
	[Documentation]    Validate the MTGuider Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Events <EFDB_Name> element
	[Documentation]    Validate the MTGuider Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Telemetry <Subsystem> element
	[Documentation]    Validate the MTGuider Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTGuider Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Telemetry <Alias> element
	[Documentation]    Validate the MTGuider Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTGuider Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTGuider Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTHeaderService Events <Subsystem> element
	[Documentation]    Validate the MTHeaderService Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTHeaderService Events <EFDB_Topic> element
	[Documentation]    Validate the MTHeaderService Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTHeaderService Events <Alias> element
	[Documentation]    Validate the MTHeaderService Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTHeaderService Events <EFDB_Name> element
	[Documentation]    Validate the MTHeaderService Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Events <Subsystem> element
	[Documentation]    Validate the MTLaserTracker Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Events <EFDB_Topic> element
	[Documentation]    Validate the MTLaserTracker Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Events <Alias> element
	[Documentation]    Validate the MTLaserTracker Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Events <EFDB_Name> element
	[Documentation]    Validate the MTLaserTracker Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Telemetry <Subsystem> element
	[Documentation]    Validate the MTLaserTracker Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTLaserTracker Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Telemetry <Alias> element
	[Documentation]    Validate the MTLaserTracker Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTLaserTracker Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTLaserTracker Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Commands <Subsystem> element
	[Documentation]    Validate the MTM1M3 Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Commands <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3 Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Commands <Alias> element
	[Documentation]    Validate the MTM1M3 Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Commands <EFDB_Name> element
	[Documentation]    Validate the MTM1M3 Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Events <Subsystem> element
	[Documentation]    Validate the MTM1M3 Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Events <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3 Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Events <Alias> element
	[Documentation]    Validate the MTM1M3 Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Events <EFDB_Name> element
	[Documentation]    Validate the MTM1M3 Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Telemetry <Subsystem> element
	[Documentation]    Validate the MTM1M3 Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3 Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Telemetry <Alias> element
	[Documentation]    Validate the MTM1M3 Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3 Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTM1M3 Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Commands <Subsystem> element
	[Documentation]    Validate the MTM1M3TS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Commands <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3TS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Commands <Alias> element
	[Documentation]    Validate the MTM1M3TS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Commands <EFDB_Name> element
	[Documentation]    Validate the MTM1M3TS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Events <Subsystem> element
	[Documentation]    Validate the MTM1M3TS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Events <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3TS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Events <Alias> element
	[Documentation]    Validate the MTM1M3TS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Events <EFDB_Name> element
	[Documentation]    Validate the MTM1M3TS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Telemetry <Subsystem> element
	[Documentation]    Validate the MTM1M3TS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTM1M3TS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Telemetry <Alias> element
	[Documentation]    Validate the MTM1M3TS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM1M3TS Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTM1M3TS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Commands <Subsystem> element
	[Documentation]    Validate the MTM2 Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Commands <EFDB_Topic> element
	[Documentation]    Validate the MTM2 Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Commands <Alias> element
	[Documentation]    Validate the MTM2 Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Commands <EFDB_Name> element
	[Documentation]    Validate the MTM2 Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Events <Subsystem> element
	[Documentation]    Validate the MTM2 Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Events <EFDB_Topic> element
	[Documentation]    Validate the MTM2 Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Events <Alias> element
	[Documentation]    Validate the MTM2 Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Events <EFDB_Name> element
	[Documentation]    Validate the MTM2 Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Telemetry <Subsystem> element
	[Documentation]    Validate the MTM2 Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTM2 Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Telemetry <Alias> element
	[Documentation]    Validate the MTM2 Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTM2 Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTM2 Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate MTPtg Commands <Subsystem> element
	[Documentation]    Validate the MTPtg Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Commands <EFDB_Topic> element
	[Documentation]    Validate the MTPtg Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Commands <Alias> element
	[Documentation]    Validate the MTPtg Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Commands <EFDB_Name> element
	[Documentation]    Validate the MTPtg Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Events <Subsystem> element
	[Documentation]    Validate the MTPtg Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Events <EFDB_Topic> element
	[Documentation]    Validate the MTPtg Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Events <Alias> element
	[Documentation]    Validate the MTPtg Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Events <EFDB_Name> element
	[Documentation]    Validate the MTPtg Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Telemetry <Subsystem> element
	[Documentation]    Validate the MTPtg Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTPtg Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Telemetry <Alias> element
	[Documentation]    Validate the MTPtg Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTPtg Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTPtg Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Commands <Subsystem> element
	[Documentation]    Validate the MTTCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Commands <EFDB_Topic> element
	[Documentation]    Validate the MTTCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Commands <Alias> element
	[Documentation]    Validate the MTTCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Commands <EFDB_Name> element
	[Documentation]    Validate the MTTCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Events <Subsystem> element
	[Documentation]    Validate the MTTCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Events <EFDB_Topic> element
	[Documentation]    Validate the MTTCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Events <Alias> element
	[Documentation]    Validate the MTTCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Events <EFDB_Name> element
	[Documentation]    Validate the MTTCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Telemetry <Subsystem> element
	[Documentation]    Validate the MTTCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTTCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Telemetry <Alias> element
	[Documentation]    Validate the MTTCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTTCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTTCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Commands <Subsystem> element
	[Documentation]    Validate the MTVMS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Commands <EFDB_Topic> element
	[Documentation]    Validate the MTVMS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Commands <Alias> element
	[Documentation]    Validate the MTVMS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Commands <EFDB_Name> element
	[Documentation]    Validate the MTVMS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Events <Subsystem> element
	[Documentation]    Validate the MTVMS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Events <EFDB_Topic> element
	[Documentation]    Validate the MTVMS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Events <Alias> element
	[Documentation]    Validate the MTVMS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Events <EFDB_Name> element
	[Documentation]    Validate the MTVMS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Telemetry <Subsystem> element
	[Documentation]    Validate the MTVMS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTVMS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Telemetry <Alias> element
	[Documentation]    Validate the MTVMS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTVMS Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTVMS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <Subsystem> element
	[Documentation]    Validate the OCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <EFDB_Topic> element
	[Documentation]    Validate the OCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <Alias> element
	[Documentation]    Validate the OCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <EFDB_Name> element
	[Documentation]    Validate the OCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <Subsystem> element
	[Documentation]    Validate the OCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <EFDB_Topic> element
	[Documentation]    Validate the OCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <Alias> element
	[Documentation]    Validate the OCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <EFDB_Name> element
	[Documentation]    Validate the OCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Subsystem> element
	[Documentation]    Validate the OCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Alias> element
	[Documentation]    Validate the OCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Commands <Subsystem> element
	[Documentation]    Validate the PointingComponent Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Commands <EFDB_Topic> element
	[Documentation]    Validate the PointingComponent Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Commands <Alias> element
	[Documentation]    Validate the PointingComponent Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Commands <EFDB_Name> element
	[Documentation]    Validate the PointingComponent Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Events <Subsystem> element
	[Documentation]    Validate the PointingComponent Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Events <EFDB_Topic> element
	[Documentation]    Validate the PointingComponent Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Events <Alias> element
	[Documentation]    Validate the PointingComponent Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Events <EFDB_Name> element
	[Documentation]    Validate the PointingComponent Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Telemetry <Subsystem> element
	[Documentation]    Validate the PointingComponent Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Telemetry <EFDB_Topic> element
	[Documentation]    Validate the PointingComponent Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Telemetry <Alias> element
	[Documentation]    Validate the PointingComponent Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PointingComponent Telemetry <EFDB_Name> element
	[Documentation]    Validate the PointingComponent Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate Rotator Commands <Subsystem> element
	[Documentation]    Validate the Rotator Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <EFDB_Topic> element
	[Documentation]    Validate the Rotator Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <Alias> element
	[Documentation]    Validate the Rotator Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <EFDB_Name> element
	[Documentation]    Validate the Rotator Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <Subsystem> element
	[Documentation]    Validate the Rotator Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <EFDB_Topic> element
	[Documentation]    Validate the Rotator Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <Alias> element
	[Documentation]    Validate the Rotator Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <EFDB_Name> element
	[Documentation]    Validate the Rotator Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Subsystem> element
	[Documentation]    Validate the Rotator Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Alias> element
	[Documentation]    Validate the Rotator Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Name> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Events <Subsystem> element
	[Documentation]    Validate the Scheduler Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Events <EFDB_Topic> element
	[Documentation]    Validate the Scheduler Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Events <Alias> element
	[Documentation]    Validate the Scheduler Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Events <EFDB_Name> element
	[Documentation]    Validate the Scheduler Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Subsystem> element
	[Documentation]    Validate the Scheduler Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Alias> element
	[Documentation]    Validate the Scheduler Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Name> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Commands <Subsystem> element
	[Documentation]    Validate the Script Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Commands <EFDB_Topic> element
	[Documentation]    Validate the Script Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Commands <Alias> element
	[Documentation]    Validate the Script Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Commands <EFDB_Name> element
	[Documentation]    Validate the Script Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Events <Subsystem> element
	[Documentation]    Validate the Script Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Events <EFDB_Topic> element
	[Documentation]    Validate the Script Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Events <Alias> element
	[Documentation]    Validate the Script Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Script Events <EFDB_Name> element
	[Documentation]    Validate the Script Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Commands <Subsystem> element
	[Documentation]    Validate the ScriptQueue Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Commands <EFDB_Topic> element
	[Documentation]    Validate the ScriptQueue Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Commands <Alias> element
	[Documentation]    Validate the ScriptQueue Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Commands <EFDB_Name> element
	[Documentation]    Validate the ScriptQueue Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Events <Subsystem> element
	[Documentation]    Validate the ScriptQueue Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Events <EFDB_Topic> element
	[Documentation]    Validate the ScriptQueue Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Events <Alias> element
	[Documentation]    Validate the ScriptQueue Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ScriptQueue Events <EFDB_Name> element
	[Documentation]    Validate the ScriptQueue Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <Subsystem> element
	[Documentation]    Validate the SummitFacility Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <Alias> element
	[Documentation]    Validate the SummitFacility Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <Subsystem> element
	[Documentation]    Validate the SummitFacility Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <Alias> element
	[Documentation]    Validate the SummitFacility Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate TunableLaser Commands <Subsystem> element
	[Documentation]    Validate the TunableLaser Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Commands <EFDB_Topic> element
	[Documentation]    Validate the TunableLaser Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Commands <Alias> element
	[Documentation]    Validate the TunableLaser Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Commands <EFDB_Name> element
	[Documentation]    Validate the TunableLaser Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Events <Subsystem> element
	[Documentation]    Validate the TunableLaser Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Events <EFDB_Topic> element
	[Documentation]    Validate the TunableLaser Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Events <Alias> element
	[Documentation]    Validate the TunableLaser Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Events <EFDB_Name> element
	[Documentation]    Validate the TunableLaser Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Telemetry <Subsystem> element
	[Documentation]    Validate the TunableLaser Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Telemetry <EFDB_Topic> element
	[Documentation]    Validate the TunableLaser Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Telemetry <Alias> element
	[Documentation]    Validate the TunableLaser Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TunableLaser Telemetry <EFDB_Name> element
	[Documentation]    Validate the TunableLaser Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Commands <Subsystem> element
	[Documentation]    Validate the Watcher Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Commands <EFDB_Topic> element
	[Documentation]    Validate the Watcher Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Commands <Alias> element
	[Documentation]    Validate the Watcher Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Commands <EFDB_Name> element
	[Documentation]    Validate the Watcher Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Events <Subsystem> element
	[Documentation]    Validate the Watcher Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Events <EFDB_Topic> element
	[Documentation]    Validate the Watcher Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Events <Alias> element
	[Documentation]    Validate the Watcher Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Watcher Events <EFDB_Name> element
	[Documentation]    Validate the Watcher Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

