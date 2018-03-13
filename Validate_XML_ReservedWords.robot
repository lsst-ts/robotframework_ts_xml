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
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Archiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Archiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Archiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Archiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CalibrationElectrometer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CalibrationElectrometer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CalibrationElectrometer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CalibrationElectrometer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CalibrationElectrometer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CalibrationElectrometer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CalibrationElectrometer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CalibrationElectrometer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CalibrationElectrometer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CalibrationElectrometer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CalibrationElectrometer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CalibrationElectrometer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Camera Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Camera Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CatchupArchiver Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CatchupArchiver Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CatchupArchiver Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CatchupArchiver Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CatchupArchiver Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CatchupArchiver Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate CatchupArchiver Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate CatchupArchiver Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DMHeaderService Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DMHeaderService Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DMHeaderService Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DMHeaderService Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DMHeaderService Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DMHeaderService Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DMHeaderService Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DMHeaderService Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DMHeaderService Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DMHeaderService Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DMHeaderService Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DMHeaderService Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Dome Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeADB Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeADB Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeAPS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeAPS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLouvers Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLouvers Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeLWS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeLWS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeMONCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeMONCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate DomeTHCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate DomeTHCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate EEC Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Environment Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Environment Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/environment/environment_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Environment Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Environment Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/environment/environment_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Hexapod Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M1M3 Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M1M3 Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M1M3 Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M1M3 Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate M2MS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate M2MS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate MTMount Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate MTMount Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate OCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PromptProcessing Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PromptProcessing Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate PromptProcessing Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate PromptProcessing Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Rotator Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Scheduler Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate Sequencer Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate SummitFacility Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate SummitFacility Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCSAOCS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCSAOCS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCSAOCS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCSAOCS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCSAOCS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCSAOCS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCSAOCS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCSAOCS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCSAOCS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCSAOCS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCSAOCS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCSAOCS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCSWEP Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCSWEP Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCSWEP Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCSWEP Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate TCSWEP Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the TCSWEP Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate TCSWEP Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the TCSWEP Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Commands EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Commands EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Commands <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Events EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Events <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain MySQL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use IDL Reserved words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain IDL Reserved Words.
	[Tags]    smoke
	Comment    Find all the EFDB_Name values in the XML. Combine them into a list, separated by the | character.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |uniq |tr '\n' '|'
	Log    ${output}
	Should Not Contain IDL Reserved Word    ${output}

Validate VMS Telemetry EFDB_Name Values Do Not Use MySQL Reserved Words
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> tags do not contain MySQL Reserved Words.
	[Tags]    smoke
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
