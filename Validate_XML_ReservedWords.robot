*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain Reserved Words in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Suite Setup    Log Many    @{IDLReserved}    @{MySQLReserved}
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Archiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Archiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Archiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Archiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Archiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtArchiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtArchiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtArchiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtArchiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtArchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtArchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtArchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtArchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtArchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtArchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtArchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtArchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtArchiver
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate AtHeaderService Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtHeaderService Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtHeaderService Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtHeaderService Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtHeaderService Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtHeaderService Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtHeaderService Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtHeaderService Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtHeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMonochromator Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMonochromator Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMonochromator Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMonochromator Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMonochromator Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMonochromator Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMonochromator Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMonochromator Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtMonochromator Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtMonochromator Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtMonochromator Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtMonochromator Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtMonochromator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtPneumatics Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtPneumatics Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtPneumatics Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtPneumatics Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtPneumatics Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtPneumatics Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtPneumatics Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtPneumatics Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtPneumatics Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtPneumatics Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtPneumatics Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtPneumatics Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtPneumatics
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtScheduler Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtScheduler Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtScheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtScheduler Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtScheduler Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtScheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtScheduler Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtScheduler Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtScheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtScheduler Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtScheduler Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtScheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtWhiteLight Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtWhiteLight Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtWhiteLight Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtWhiteLight Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtWhiteLight Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtWhiteLight Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtWhiteLight Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtWhiteLight Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtWhiteLight Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtWhiteLight Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtWhiteLight Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtWhiteLight Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtWhiteLight
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtCamera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtCamera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtCamera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtCamera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtCamera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtCamera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtCamera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtCamera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate AtCamera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the AtCamera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate AtCamera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the AtCamera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    AtCamera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate ATCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the ATCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate ATCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the ATCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    ATCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Camera
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Cbp Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Cbp Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Cbp Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Cbp Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Cbp Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Cbp Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Cbp Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Cbp Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Cbp Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Cbp Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Cbp Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Cbp Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Cbp
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Dome
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeADB
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeAPS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLouvers
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeLWS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeMONCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    DomeTHCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EEC
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFD Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFD Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFD Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFD Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EFD Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EFD Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    EFD
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate HeaderService Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the HeaderService Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    HeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate HeaderService Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the HeaderService Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    HeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate HeaderService Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the HeaderService Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    HeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate HeaderService Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the HeaderService Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    HeaderService
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Hexapod
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Laser Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Laser Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Laser Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Laser Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Laser Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Laser Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Laser Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Laser Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Laser Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Laser Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Laser Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Laser Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Laser
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Laser/Laser_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate M1M3 Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M1M3 Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M1M3 Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M1M3
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    M2MS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MtAtElectrometer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MtAtElectrometer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MtAtElectrometer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MtAtElectrometer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MtAtElectrometer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MtAtElectrometer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MtAtElectrometer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MtAtElectrometer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MtAtElectrometer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MtAtElectrometer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MtAtElectrometer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MtAtElectrometer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    MtAtElectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate OCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    OCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Rotator
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Scheduler
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SEDSpectrometer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SEDSpectrometer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SEDSpectrometer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SEDSpectrometer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SEDSpectrometer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SEDSpectrometer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SEDSpectrometer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SEDSpectrometer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SEDSpectrometer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SEDSpectrometer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SEDSpectrometer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SEDSpectrometer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    SEDSpectrometer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    Sequencer
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TCS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsOfc Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsOfc Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsOfc Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsOfc Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsOfc Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsOfc Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsOfc Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsOfc Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsOfc Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsOfc Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsOfc Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsOfc Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsOfc
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsWEP Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsWEP Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsWEP Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsWEP Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsWEP Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsWEP Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsWEP Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsWEP Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TcsWEP Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TcsWEP Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TcsWEP Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TcsWEP Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    TcsWEP
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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

Validate VMS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke    VMS
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
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
