*** Settings ***
Documentation    Validate the subsystem XML definition files contain the correct version.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events Version
	[Documentation]    Validate the Archiver Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate Archiver Telemetry Version
	[Documentation]    Validate the Archiver Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate CalibrationElectrometer Commands Version
	[Documentation]    Validate the CalibrationElectrometer Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate CalibrationElectrometer Events Version
	[Documentation]    Validate the CalibrationElectrometer Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate CalibrationElectrometer Telemetry Version
	[Documentation]    Validate the CalibrationElectrometer Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate Camera Commands Version
	[Documentation]    Validate the Camera Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Camera Events Version
	[Documentation]    Validate the Camera Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Camera Telemetry Version
	[Documentation]    Validate the Camera Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate CatchupArchiver Events Version
	[Documentation]    Validate the CatchupArchiver Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate CatchupArchiver Telemetry Version
	[Documentation]    Validate the CatchupArchiver Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate DMHeaderService Commands Version
	[Documentation]    Validate the DMHeaderService Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate DMHeaderService Events Version
	[Documentation]    Validate the DMHeaderService Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate DMHeaderService Telemetry Version
	[Documentation]    Validate the DMHeaderService Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate Dome Commands Version
	[Documentation]    Validate the Dome Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate Dome Events Version
	[Documentation]    Validate the Dome Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate Dome Telemetry Version
	[Documentation]    Validate the Dome Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeADB Commands Version
	[Documentation]    Validate the DomeADB Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeADB Events Version
	[Documentation]    Validate the DomeADB Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeADB Telemetry Version
	[Documentation]    Validate the DomeADB Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeAPS Commands Version
	[Documentation]    Validate the DomeAPS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeAPS Events Version
	[Documentation]    Validate the DomeAPS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeAPS Telemetry Version
	[Documentation]    Validate the DomeAPS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeLouvers Commands Version
	[Documentation]    Validate the DomeLouvers Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeLouvers Events Version
	[Documentation]    Validate the DomeLouvers Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeLouvers Telemetry Version
	[Documentation]    Validate the DomeLouvers Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeLWS Commands Version
	[Documentation]    Validate the DomeLWS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeLWS Events Version
	[Documentation]    Validate the DomeLWS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeLWS Telemetry Version
	[Documentation]    Validate the DomeLWS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeMONCS Commands Version
	[Documentation]    Validate the DomeMONCS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeMONCS Events Version
	[Documentation]    Validate the DomeMONCS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeMONCS Telemetry Version
	[Documentation]    Validate the DomeMONCS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeTHCS Commands Version
	[Documentation]    Validate the DomeTHCS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate DomeTHCS Events Version
	[Documentation]    Validate the DomeTHCS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate DomeTHCS Telemetry Version
	[Documentation]    Validate the DomeTHCS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.0
	Should Match    ${output}    ${version}

Validate EEC Commands Version
	[Documentation]    Validate the EEC Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate EEC Events Version
	[Documentation]    Validate the EEC Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate EEC Telemetry Version
	[Documentation]    Validate the EEC Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate Environment Telemetry Version
	[Documentation]    Validate the Environment Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/environment/environment_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5
	Should Match    ${output}    ${version}

Validate Hexapod Commands Version
	[Documentation]    Validate the Hexapod Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.1.0\n3.1.0\n3.1.0\n3.1.0\n3.1.0\n3.1.0\n3.1.0\n3.1.0
	Should Match    ${output}    ${version}

Validate Hexapod Events Version
	[Documentation]    Validate the Hexapod Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Hexapod Telemetry Version
	[Documentation]    Validate the Hexapod Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate M1M3 Commands Version
	[Documentation]    Validate the M1M3 Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate M1M3 Events Version
	[Documentation]    Validate the M1M3 Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate M1M3 Telemetry Version
	[Documentation]    Validate the M1M3 Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate M2MS Commands Version
	[Documentation]    Validate the M2MS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate M2MS Events Version
	[Documentation]    Validate the M2MS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate M2MS Telemetry Version
	[Documentation]    Validate the M2MS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4\n3.4
	Should Match    ${output}    ${version}

Validate MTMount Commands Version
	[Documentation]    Validate the MTMount Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.0\n3.0\n3.0\n3.0\n3.0\n3.0\n3.0\n3.0
	Should Match    ${output}    ${version}

Validate MTMount Events Version
	[Documentation]    Validate the MTMount Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate MTMount Telemetry Version
	[Documentation]    Validate the MTMount Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate OCS Commands Version
	[Documentation]    Validate the OCS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.4\n3.4
	Should Match    ${output}    ${version}

Validate OCS Events Version
	[Documentation]    Validate the OCS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1\n3.2.1
	Should Match    ${output}    ${version}

Validate OCS Telemetry Version
	[Documentation]    Validate the OCS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.1
	Should Match    ${output}    ${version}

Validate ProcessingCluster Events Version
	[Documentation]    Validate the ProcessingCluster Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate ProcessingCluster Telemetry Version
	[Documentation]    Validate the ProcessingCluster Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate Rotator Commands Version
	[Documentation]    Validate the Rotator Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Rotator Events Version
	[Documentation]    Validate the Rotator Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Rotator Telemetry Version
	[Documentation]    Validate the Rotator Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Scheduler Telemetry Version
	[Documentation]    Validate the Scheduler Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0
	Should Match    ${output}    ${version}

Validate Sequencer Commands Version
	[Documentation]    Validate the Sequencer Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.4
	Should Match    ${output}    ${version}

Validate Sequencer Events Version
	[Documentation]    Validate the Sequencer Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate Sequencer Telemetry Version
	[Documentation]    Validate the Sequencer Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate SummitFacility Commands Version
	[Documentation]    Validate the SummitFacility Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate SummitFacility Events Version
	[Documentation]    Validate the SummitFacility Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate SummitFacility Telemetry Version
	[Documentation]    Validate the SummitFacility Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate TCS Commands Version
	[Documentation]    Validate the TCS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate TCS Events Version
	[Documentation]    Validate the TCS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.6.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.5.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate TCS Telemetry Version
	[Documentation]    Validate the TCS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.2.0\n3.5.0\n3.5.0
	Should Match    ${output}    ${version}

Validate TCSAOCS Commands Version
	[Documentation]    Validate the TCSAOCS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate TCSAOCS Events Version
	[Documentation]    Validate the TCSAOCS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate TCSAOCS Telemetry Version
	[Documentation]    Validate the TCSAOCS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate TCSWEP Events Version
	[Documentation]    Validate the TCSWEP Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1\n3.5.1\n3.5.1
	Should Match    ${output}    ${version}

Validate TCSWEP Telemetry Version
	[Documentation]    Validate the TCSWEP Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.5.1
	Should Match    ${output}    ${version}

Validate VMS Commands Version
	[Documentation]    Validate the VMS Commands version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate VMS Events Version
	[Documentation]    Validate the VMS Events version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

Validate VMS Telemetry Version
	[Documentation]    Validate the VMS Telemetry version.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml
	Log    ${output}
	${version}=    Set Variable    3.6.0\n3.6.0\n3.6.0\n3.6.0
	Should Match    ${output}    ${version}

