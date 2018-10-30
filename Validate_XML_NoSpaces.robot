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

Validate ATHeaderService Commands <Subsystem> element
	[Documentation]    Validate the ATHeaderService Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Commands <EFDB_Topic> element
	[Documentation]    Validate the ATHeaderService Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Commands <Alias> element
	[Documentation]    Validate the ATHeaderService Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATHeaderService Commands <EFDB_Name> element
	[Documentation]    Validate the ATHeaderService Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate AtWhiteLight Commands <Subsystem> element
	[Documentation]    Validate the AtWhiteLight Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Commands <EFDB_Topic> element
	[Documentation]    Validate the AtWhiteLight Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Commands <Alias> element
	[Documentation]    Validate the AtWhiteLight Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Commands <EFDB_Name> element
	[Documentation]    Validate the AtWhiteLight Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Events <Subsystem> element
	[Documentation]    Validate the AtWhiteLight Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Events <EFDB_Topic> element
	[Documentation]    Validate the AtWhiteLight Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Events <Alias> element
	[Documentation]    Validate the AtWhiteLight Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Events <EFDB_Name> element
	[Documentation]    Validate the AtWhiteLight Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Telemetry <Subsystem> element
	[Documentation]    Validate the AtWhiteLight Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtWhiteLight Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Telemetry <Alias> element
	[Documentation]    Validate the AtWhiteLight Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtWhiteLight Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtWhiteLight Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Commands <Subsystem> element
	[Documentation]    Validate the Catchuparchiver Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Commands <EFDB_Topic> element
	[Documentation]    Validate the Catchuparchiver Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Commands <Alias> element
	[Documentation]    Validate the Catchuparchiver Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Commands <EFDB_Name> element
	[Documentation]    Validate the Catchuparchiver Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Events <Subsystem> element
	[Documentation]    Validate the Catchuparchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Events <EFDB_Topic> element
	[Documentation]    Validate the Catchuparchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Events <Alias> element
	[Documentation]    Validate the Catchuparchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Events <EFDB_Name> element
	[Documentation]    Validate the Catchuparchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <Subsystem> element
	[Documentation]    Validate the Catchuparchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <Alias> element
	[Documentation]    Validate the Catchuparchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    Catchuparchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Subsystem> element
	[Documentation]    Validate the EFD Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Topic> element
	[Documentation]    Validate the EFD Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Alias> element
	[Documentation]    Validate the EFD Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Name> element
	[Documentation]    Validate the EFD Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Subsystem> element
	[Documentation]    Validate the EFD Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Alias> element
	[Documentation]    Validate the EFD Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Name> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate M2MS Commands <Subsystem> element
	[Documentation]    Validate the M2MS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <EFDB_Topic> element
	[Documentation]    Validate the M2MS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <Alias> element
	[Documentation]    Validate the M2MS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <EFDB_Name> element
	[Documentation]    Validate the M2MS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <Subsystem> element
	[Documentation]    Validate the M2MS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <EFDB_Topic> element
	[Documentation]    Validate the M2MS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <Alias> element
	[Documentation]    Validate the M2MS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <EFDB_Name> element
	[Documentation]    Validate the M2MS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Subsystem> element
	[Documentation]    Validate the M2MS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Alias> element
	[Documentation]    Validate the M2MS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Name> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
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

Validate SummitFacility Commands <Subsystem> element
	[Documentation]    Validate the SummitFacility Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <Alias> element
	[Documentation]    Validate the SummitFacility Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
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

