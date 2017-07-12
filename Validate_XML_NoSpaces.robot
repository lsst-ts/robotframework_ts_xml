*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events <Subsystem> element
	[Documentation]    Validate the Archiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <Subsystem> element
	[Documentation]    Validate the Archiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Archiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <Alias> element
	[Documentation]    Validate the Archiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Commands <Subsystem> element
	[Documentation]    Validate the Camera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Events <Subsystem> element
	[Documentation]    Validate the Camera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <Subsystem> element
	[Documentation]    Validate the Camera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Camera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <Alias> element
	[Documentation]    Validate the Camera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <EFDB_Name> element
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Events <Subsystem> element
	[Documentation]    Validate the Catchuparchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <Subsystem> element
	[Documentation]    Validate the Catchuparchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <Alias> element
	[Documentation]    Validate the Catchuparchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Catchuparchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the Catchuparchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <Subsystem> element
	[Documentation]    Validate the Dome Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <Subsystem> element
	[Documentation]    Validate the Dome Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Subsystem> element
	[Documentation]    Validate the Dome Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Alias> element
	[Documentation]    Validate the Dome Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Name> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <Subsystem> element
	[Documentation]    Validate the DomeADB Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <Subsystem> element
	[Documentation]    Validate the DomeADB Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Subsystem> element
	[Documentation]    Validate the DomeADB Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Alias> element
	[Documentation]    Validate the DomeADB Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <Subsystem> element
	[Documentation]    Validate the DomeAPS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <Subsystem> element
	[Documentation]    Validate the DomeAPS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeAPS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Alias> element
	[Documentation]    Validate the DomeAPS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <Subsystem> element
	[Documentation]    Validate the DomeLouvers Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <Subsystem> element
	[Documentation]    Validate the DomeLouvers Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLouvers Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Alias> element
	[Documentation]    Validate the DomeLouvers Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <Subsystem> element
	[Documentation]    Validate the DomeLWS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <Subsystem> element
	[Documentation]    Validate the DomeLWS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLWS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Alias> element
	[Documentation]    Validate the DomeLWS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <Subsystem> element
	[Documentation]    Validate the DomeMONCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <Subsystem> element
	[Documentation]    Validate the DomeMONCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeMONCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Alias> element
	[Documentation]    Validate the DomeMONCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <Subsystem> element
	[Documentation]    Validate the DomeTHCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <Subsystem> element
	[Documentation]    Validate the DomeTHCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeTHCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Alias> element
	[Documentation]    Validate the DomeTHCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <Subsystem> element
	[Documentation]    Validate the Hexapod Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <Subsystem> element
	[Documentation]    Validate the Hexapod Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Subsystem> element
	[Documentation]    Validate the Hexapod Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Alias> element
	[Documentation]    Validate the Hexapod Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Name> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Commands <Subsystem> element
	[Documentation]    Validate the M1M3 Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Events <Subsystem> element
	[Documentation]    Validate the M1M3 Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <Subsystem> element
	[Documentation]    Validate the M1M3 Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <EFDB_Topic> element
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <Alias> element
	[Documentation]    Validate the M1M3 Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <EFDB_Name> element
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <Subsystem> element
	[Documentation]    Validate the M2MS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <Subsystem> element
	[Documentation]    Validate the M2MS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Subsystem> element
	[Documentation]    Validate the M2MS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Alias> element
	[Documentation]    Validate the M2MS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Name> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <Subsystem> element
	[Documentation]    Validate the MTMount Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <Subsystem> element
	[Documentation]    Validate the MTMount Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Subsystem> element
	[Documentation]    Validate the MTMount Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Alias> element
	[Documentation]    Validate the MTMount Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <Subsystem> element
	[Documentation]    Validate the OCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <Subsystem> element
	[Documentation]    Validate the OCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Subsystem> element
	[Documentation]    Validate the OCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Alias> element
	[Documentation]    Validate the OCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Processingcluster Events <Subsystem> element
	[Documentation]    Validate the Processingcluster Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Processingcluster Telemetry <Subsystem> element
	[Documentation]    Validate the Processingcluster Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Processingcluster Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Processingcluster Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Processingcluster Telemetry <Alias> element
	[Documentation]    Validate the Processingcluster Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Processingcluster Telemetry <EFDB_Name> element
	[Documentation]    Validate the Processingcluster Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <Subsystem> element
	[Documentation]    Validate the Rotator Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <Subsystem> element
	[Documentation]    Validate the Rotator Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Subsystem> element
	[Documentation]    Validate the Rotator Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Alias> element
	[Documentation]    Validate the Rotator Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Name> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Subsystem> element
	[Documentation]    Validate the Scheduler Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Alias> element
	[Documentation]    Validate the Scheduler Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Name> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <Subsystem> element
	[Documentation]    Validate the Sequencer Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <Subsystem> element
	[Documentation]    Validate the Sequencer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Subsystem> element
	[Documentation]    Validate the Sequencer Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Alias> element
	[Documentation]    Validate the Sequencer Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Name> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Commands <Subsystem> element
	[Documentation]    Validate the TCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Events <Subsystem> element
	[Documentation]    Validate the TCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <Subsystem> element
	[Documentation]    Validate the TCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the TCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <Alias> element
	[Documentation]    Validate the TCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

