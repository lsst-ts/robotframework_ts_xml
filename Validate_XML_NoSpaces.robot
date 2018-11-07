*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
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

Validate ATThermoelectricCooler Commands <Subsystem> element
	[Documentation]    Validate the ATThermoelectricCooler Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Commands <EFDB_Topic> element
	[Documentation]    Validate the ATThermoelectricCooler Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Commands <Alias> element
	[Documentation]    Validate the ATThermoelectricCooler Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Commands <EFDB_Name> element
	[Documentation]    Validate the ATThermoelectricCooler Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Events <Subsystem> element
	[Documentation]    Validate the ATThermoelectricCooler Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Events <EFDB_Topic> element
	[Documentation]    Validate the ATThermoelectricCooler Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Events <Alias> element
	[Documentation]    Validate the ATThermoelectricCooler Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Events <EFDB_Name> element
	[Documentation]    Validate the ATThermoelectricCooler Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Telemetry <Subsystem> element
	[Documentation]    Validate the ATThermoelectricCooler Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATThermoelectricCooler Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Telemetry <Alias> element
	[Documentation]    Validate the ATThermoelectricCooler Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATThermoelectricCooler Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATThermoelectricCooler Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate DomeADB Commands <Subsystem> element
	[Documentation]    Validate the DomeADB Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <Alias> element
	[Documentation]    Validate the DomeADB Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <EFDB_Name> element
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <Subsystem> element
	[Documentation]    Validate the DomeADB Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <Alias> element
	[Documentation]    Validate the DomeADB Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <EFDB_Name> element
	[Documentation]    Validate the DomeADB Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Subsystem> element
	[Documentation]    Validate the DomeADB Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Alias> element
	[Documentation]    Validate the DomeADB Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <Subsystem> element
	[Documentation]    Validate the DomeAPS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <Alias> element
	[Documentation]    Validate the DomeAPS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <Subsystem> element
	[Documentation]    Validate the DomeAPS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <Alias> element
	[Documentation]    Validate the DomeAPS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeAPS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Alias> element
	[Documentation]    Validate the DomeAPS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <Subsystem> element
	[Documentation]    Validate the DomeLouvers Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <Alias> element
	[Documentation]    Validate the DomeLouvers Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <Subsystem> element
	[Documentation]    Validate the DomeLouvers Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <Alias> element
	[Documentation]    Validate the DomeLouvers Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLouvers Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Alias> element
	[Documentation]    Validate the DomeLouvers Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <Subsystem> element
	[Documentation]    Validate the DomeLWS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <Alias> element
	[Documentation]    Validate the DomeLWS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <Subsystem> element
	[Documentation]    Validate the DomeLWS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <Alias> element
	[Documentation]    Validate the DomeLWS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLWS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Alias> element
	[Documentation]    Validate the DomeLWS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <Subsystem> element
	[Documentation]    Validate the DomeMONCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <Alias> element
	[Documentation]    Validate the DomeMONCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <Subsystem> element
	[Documentation]    Validate the DomeMONCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <Alias> element
	[Documentation]    Validate the DomeMONCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeMONCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Alias> element
	[Documentation]    Validate the DomeMONCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <Subsystem> element
	[Documentation]    Validate the DomeTHCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <Alias> element
	[Documentation]    Validate the DomeTHCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <Subsystem> element
	[Documentation]    Validate the DomeTHCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <Alias> element
	[Documentation]    Validate the DomeTHCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeTHCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Alias> element
	[Documentation]    Validate the DomeTHCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <Subsystem> element
	[Documentation]    Validate the EEC Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <EFDB_Topic> element
	[Documentation]    Validate the EEC Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <Alias> element
	[Documentation]    Validate the EEC Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <EFDB_Name> element
	[Documentation]    Validate the EEC Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <Subsystem> element
	[Documentation]    Validate the EEC Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <EFDB_Topic> element
	[Documentation]    Validate the EEC Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <Alias> element
	[Documentation]    Validate the EEC Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <EFDB_Name> element
	[Documentation]    Validate the EEC Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <Subsystem> element
	[Documentation]    Validate the EEC Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EEC Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <Alias> element
	[Documentation]    Validate the EEC Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <EFDB_Name> element
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate Mtcamera Commands <Subsystem> element
	[Documentation]    Validate the Mtcamera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Commands <EFDB_Topic> element
	[Documentation]    Validate the Mtcamera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Commands <Alias> element
	[Documentation]    Validate the Mtcamera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Commands <EFDB_Name> element
	[Documentation]    Validate the Mtcamera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Events <Subsystem> element
	[Documentation]    Validate the Mtcamera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Events <EFDB_Topic> element
	[Documentation]    Validate the Mtcamera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Events <Alias> element
	[Documentation]    Validate the Mtcamera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Events <EFDB_Name> element
	[Documentation]    Validate the Mtcamera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Telemetry <Subsystem> element
	[Documentation]    Validate the Mtcamera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Mtcamera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Telemetry <Alias> element
	[Documentation]    Validate the Mtcamera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Mtcamera Telemetry <EFDB_Name> element
	[Documentation]    Validate the Mtcamera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate MTOFC Commands <Subsystem> element
	[Documentation]    Validate the MTOFC Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Commands <EFDB_Topic> element
	[Documentation]    Validate the MTOFC Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Commands <Alias> element
	[Documentation]    Validate the MTOFC Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Commands <EFDB_Name> element
	[Documentation]    Validate the MTOFC Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Events <Subsystem> element
	[Documentation]    Validate the MTOFC Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Events <EFDB_Topic> element
	[Documentation]    Validate the MTOFC Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Events <Alias> element
	[Documentation]    Validate the MTOFC Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Events <EFDB_Name> element
	[Documentation]    Validate the MTOFC Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Telemetry <Subsystem> element
	[Documentation]    Validate the MTOFC Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTOFC Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Telemetry <Alias> element
	[Documentation]    Validate the MTOFC Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTOFC Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTOFC Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Events <Subsystem> element
	[Documentation]    Validate the MTWEP Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Events <EFDB_Topic> element
	[Documentation]    Validate the MTWEP Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Events <Alias> element
	[Documentation]    Validate the MTWEP Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Events <EFDB_Name> element
	[Documentation]    Validate the MTWEP Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Telemetry <Subsystem> element
	[Documentation]    Validate the MTWEP Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTWEP Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Telemetry <Alias> element
	[Documentation]    Validate the MTWEP Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTWEP Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTWEP Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate Sequencer Commands <Subsystem> element
	[Documentation]    Validate the Sequencer Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <Alias> element
	[Documentation]    Validate the Sequencer Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <EFDB_Name> element
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <Subsystem> element
	[Documentation]    Validate the Sequencer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <Alias> element
	[Documentation]    Validate the Sequencer Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <EFDB_Name> element
	[Documentation]    Validate the Sequencer Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Subsystem> element
	[Documentation]    Validate the Sequencer Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Alias> element
	[Documentation]    Validate the Sequencer Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Name> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

