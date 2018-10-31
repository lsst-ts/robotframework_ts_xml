*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain Reserved Words in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Suite Setup    Log Many    @{IDLReserved}    @{MySQLReserved}
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
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

Validate AtDome Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtDome Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtDome Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtDome Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtDome Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtDome Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtDome Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtDome Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtDome Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtDome Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtDome Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtDome Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtDome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATHeaderService Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATHeaderService Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATHeaderService Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATHeaderService Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate Catchuparchiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Catchuparchiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Catchuparchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Catchuparchiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Catchuparchiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Catchuparchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Catchuparchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Catchuparchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Catchuparchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Catchuparchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Catchuparchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Catchuparchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Catchuparchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Catchuparchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Catchuparchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Catchuparchiver
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

Validate Domeadb Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeadb Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeadb Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeadb Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domeadb Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeadb Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeadb Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeadb Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domeadb Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeadb Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeadb Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeadb Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeadb
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domeaps Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeaps Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeaps Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeaps Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domeaps Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeaps Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeaps Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeaps Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domeaps Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domeaps Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domeaps Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domeaps Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domeaps
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelouvers Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelouvers Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelouvers Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelouvers Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelouvers Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelouvers Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelouvers Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelouvers Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelouvers Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelouvers Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelouvers Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelouvers Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelws Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelws Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelws Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelws Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelws Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelws Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelws Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelws Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domelws Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domelws Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domelws Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domelws Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domelws
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domemoncs Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domemoncs Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domemoncs Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domemoncs Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domemoncs Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domemoncs Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domemoncs Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domemoncs Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domemoncs Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domemoncs Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domemoncs Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domemoncs Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domemoncs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domethcs Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domethcs Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domethcs Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domethcs Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domethcs Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domethcs Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domethcs Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domethcs Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Domethcs Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Domethcs Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Domethcs Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Domethcs Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Domethcs
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate Mtarchiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtarchiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtarchiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtarchiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Mtarchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtarchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtarchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtarchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Mtarchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtarchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtarchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtarchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtarchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Mtcamera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtcamera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtcamera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtcamera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Mtcamera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtcamera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtcamera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtcamera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Mtcamera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Mtcamera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Mtcamera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Mtcamera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Mtcamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTHeaderService Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTHeaderService Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTHeaderService Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTHeaderService Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate MTOFC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTOFC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTOFC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTOFC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTOFC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTOFC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTOFC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTOFC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTOFC Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTOFC Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTOFC Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTOFC Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTOFC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTWEP Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTWEP Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTWEP Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTWEP Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTWEP Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTWEP Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MTWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTWEP Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTWEP Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MTWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate PromptProcessing Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    PromptProcessing
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate Sequencer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SummitFacility
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate TCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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
	[Tags]    smoke    Test    TSS-3223
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
	[Tags]    smoke    Test    TSS-3223
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
	[Tags]    smoke    Test    TSS-3223
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

Validate VMS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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
