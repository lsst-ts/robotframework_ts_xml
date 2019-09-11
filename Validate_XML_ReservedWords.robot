*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain Reserved Words in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Suite Setup    Log Many    @{IDLReserved}    @{MySQLReserved}
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATAOS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATAOS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATAOS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATAOS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATAOS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATAOS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATAOS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATAOS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATAOS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATAOS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATAOS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATArchiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATArchiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATArchiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATArchiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATArchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATArchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATArchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATArchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATArchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATArchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATArchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATArchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATBuilding Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATBuilding Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATBuilding
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATBuilding Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATBuilding Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATBuilding
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATBuilding Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATBuilding Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATBuilding
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATBuilding Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATBuilding Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATBuilding
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCamera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCamera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCamera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCamera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCamera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCamera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCamera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCamera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCamera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCamera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCamera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCamera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATDome Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATDome Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATDome Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATDome Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATDome Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATDome Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATDome Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATDome Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATDome Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATDome Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATDome Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATDome Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATDomeTrajectory Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATDomeTrajectory Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATDomeTrajectory Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATDomeTrajectory Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATHeaderService Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATHeaderService Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATHeaderService Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATHeaderService Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATHexapod Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATHexapod Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATHexapod Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATHexapod Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATHexapod Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATHexapod Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATHexapod Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATHexapod Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATHexapod Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATHexapod Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATHexapod Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATHexapod Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATHexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMonochromator Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMonochromator Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMonochromator Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMonochromator Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMonochromator Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMonochromator Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMonochromator Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMonochromator Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATMonochromator Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATMonochromator Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATMonochromator Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATMonochromator Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPneumatics Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPneumatics Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPneumatics Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPneumatics Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPneumatics Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPneumatics Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPneumatics Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPneumatics Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPneumatics Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPneumatics Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPneumatics Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPneumatics Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPtg Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPtg Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPtg Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPtg Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPtg Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPtg Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPtg Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPtg Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATPtg Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATPtg Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATPtg Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATPtg Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATSpectrograph Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATSpectrograph Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATSpectrograph Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATSpectrograph Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATSpectrograph Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATSpectrograph Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATSpectrograph Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATSpectrograph Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATSpectrograph Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATSpectrograph Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATSpectrograph Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATSpectrograph Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATTCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATTCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATTCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATTCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATTCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATTCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATTCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATTCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATTCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATTCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATTCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATTCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATWhiteLight Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATWhiteLight Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATWhiteLight Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATWhiteLight Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATWhiteLight Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATWhiteLight Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATWhiteLight Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATWhiteLight Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATWhiteLight Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATWhiteLight Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATWhiteLight Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATWhiteLight Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CatchupArchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    CatchupArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CatchupArchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    CatchupArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CatchupArchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    CatchupArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CatchupArchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    CatchupArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CBP Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CBP Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    CBP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CBP Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CBP Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    CBP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CBP Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CBP Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    CBP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CBP Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CBP Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    CBP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DIMM Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DIMM Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DIMM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DIMM Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DIMM Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DIMM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DIMM Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DIMM Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DIMM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DIMM Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DIMM Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DIMM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DSM Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DSM Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DSM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DSM Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DSM Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DSM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DSM Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DSM Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DSM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DSM Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DSM Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DSM
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EAS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EAS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EAS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EAS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EAS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EAS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EAS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EAS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EAS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EAS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EAS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EAS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFD Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFD Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFD Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFD Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFD Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFD Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFDTransformationServer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFDTransformationServer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFDTransformationServer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFDTransformationServer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFDTransformationServer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFDTransformationServer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFDTransformationServer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFDTransformationServer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFDTransformationServer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFDTransformationServer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFDTransformationServer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFDTransformationServer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Electrometer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Electrometer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Electrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Electrometer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Electrometer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Electrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Electrometer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Electrometer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Electrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Electrometer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Electrometer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Electrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Environment Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Environment Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Environment
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Environment Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Environment Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Environment
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Environment Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Environment Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Environment
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Environment Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Environment Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Environment
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate FiberSpectrograph Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the FiberSpectrograph Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate FiberSpectrograph Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the FiberSpectrograph Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate FiberSpectrograph Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the FiberSpectrograph Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate FiberSpectrograph Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the FiberSpectrograph Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate FiberSpectrograph Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the FiberSpectrograph Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate FiberSpectrograph Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the FiberSpectrograph Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    FiberSpectrograph
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate GenericCamera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the GenericCamera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate GenericCamera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the GenericCamera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate GenericCamera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the GenericCamera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate GenericCamera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the GenericCamera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate GenericCamera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the GenericCamera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate GenericCamera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the GenericCamera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    GenericCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate IOTA Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the IOTA Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    IOTA
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate IOTA Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the IOTA Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    IOTA
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate IOTA Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the IOTA Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    IOTA
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate IOTA Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the IOTA Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    IOTA
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate HVAC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the HVAC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate HVAC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the HVAC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate HVAC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the HVAC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate HVAC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the HVAC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate HVAC Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the HVAC Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate HVAC Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the HVAC Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    HVAC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate LinearStage Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the LinearStage Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate LinearStage Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the LinearStage Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate LinearStage Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the LinearStage Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate LinearStage Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the LinearStage Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate LinearStage Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the LinearStage Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate LinearStage Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the LinearStage Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    LinearStage
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate LOVE Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the LOVE Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    LOVE
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LOVE/LOVE_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate LOVE Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the LOVE Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    LOVE
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LOVE/LOVE_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTAOS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTAOS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTAOS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTAOS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTAOS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTAOS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTAOS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTAOS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTAOS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTAOS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTAOS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTAOS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTAOS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTArchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTArchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTArchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTArchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTArchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTArchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTArchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTArchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTCamera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTCamera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTCamera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTCamera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTCamera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTCamera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTCamera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTCamera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTCamera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTCamera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTCamera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTCamera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTDomeTrajectory Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTDomeTrajectory Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTDomeTrajectory Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTDomeTrajectory Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTDomeTrajectory Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTDomeTrajectory Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTDomeTrajectory Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTDomeTrajectory Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTDomeTrajectory
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTEEC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTEEC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTEEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTEEC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTEEC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTEEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTEEC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTEEC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTEEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTEEC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTEEC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTEEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTGuider Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTGuider Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTGuider
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTGuider Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTGuider Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTGuider
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTGuider Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTGuider Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTGuider
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTGuider Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTGuider Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTGuider
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTHeaderService Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTHeaderService Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTHeaderService Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTHeaderService Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTLaserTracker Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTLaserTracker Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTLaserTracker
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTLaserTracker Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTLaserTracker Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTLaserTracker
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTLaserTracker Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTLaserTracker Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTLaserTracker
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTLaserTracker Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTLaserTracker Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTLaserTracker
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3 Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3 Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3 Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3 Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3 Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3 Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3 Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3 Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3 Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3 Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3 Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3 Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3TS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3TS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3TS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3TS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3TS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3TS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3TS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3TS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM1M3TS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM1M3TS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM1M3TS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM1M3TS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM1M3TS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM2 Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM2 Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM2 Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM2 Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM2 Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM2 Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM2 Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM2 Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTM2 Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTM2 Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTM2 Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTM2 Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTM2
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTMount
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTPtg Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTPtg Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTPtg Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTPtg Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTPtg Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTPtg Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTPtg Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTPtg Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTPtg Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTPtg Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTPtg Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTPtg Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTPtg
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTTCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTTCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTTCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTTCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTTCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTTCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTTCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTTCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTTCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTTCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTTCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTTCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTTCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTVMS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTVMS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTVMS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTVMS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTVMS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTVMS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTVMS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTVMS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTVMS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTVMS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTVMS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTVMS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTVMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PointingComponent Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PointingComponent Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PointingComponent Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PointingComponent Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PointingComponent Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PointingComponent Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PointingComponent Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PointingComponent Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PointingComponent Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PointingComponent Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PointingComponent Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PointingComponent Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PointingComponent
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PromptProcessing Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PromptProcessing Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Script Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Script Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Script
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Script Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Script Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Script
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Script Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Script Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Script
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Script Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Script Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Script
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ScriptQueue Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ScriptQueue Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ScriptQueue
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ScriptQueue Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ScriptQueue Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ScriptQueue
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ScriptQueue Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ScriptQueue Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ScriptQueue
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ScriptQueue Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ScriptQueue Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ScriptQueue
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Test Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Test Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Test Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Test Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Test Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Test Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Test Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Test Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Test Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Test Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Test Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Test Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Test
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TunableLaser Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TunableLaser Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TunableLaser Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TunableLaser Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TunableLaser Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TunableLaser Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TunableLaser Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TunableLaser Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TunableLaser Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TunableLaser Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TunableLaser Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TunableLaser Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TunableLaser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Watcher Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Watcher Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Watcher
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Watcher Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Watcher Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Watcher
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Watcher Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Watcher Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Watcher
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Watcher Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Watcher Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Watcher
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

*** Keywords ***
Should Not Contain IDL Reserved Word
	[Arguments]    ${string}
	Comment    Perform a case-insensitive search for the use of any IDL Reserved Words.
	: FOR    ${word}    IN    @{IDLReserved}
	\    Run Keyword And Continue On Failure    Should Not Match Regexp    ${string}   (?ix)(?:^|\\W)${word}(?:$|\\W)    msg=IDL Reserved Word ${word} used one or more times

Should Not Contain MySQL Reserved Word
	[Arguments]    ${string}
	Comment    Perform a case-insensitive search for the use of any MySQL Reserved Words.
	: FOR    ${word}    IN    @{MySQLReserved}
	\    Run Keyword And Continue On Failure    Should Not Match Regexp    ${string}   (?ix)(?:^|\\W)${word}(?:$|\\W)    msg=MySQL Reserved Word ${word} used one or more times
