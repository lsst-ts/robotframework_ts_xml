*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Telemetry.xml - valid

Validate AtArchiver Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Telemetry.xml - valid

Validate AtMonochromator Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Telemetry.xml - valid

Validate AtScheduler Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atScheduler_Telemetry.xml - valid

Validate Atwhitelight Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atWhiteLight_Telemetry.xml - valid

Validate AtCamera Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Telemetry.xml - valid

Validate ATCS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Telemetry.xml - valid

Validate CalibrationElectrometer Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Telemetry.xml - valid

Validate Camera Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   camera_Telemetry.xml - valid

Validate CatchupArchiver Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   catchuparchiver_Telemetry.xml - valid

Validate Dome Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   dome_Telemetry.xml - valid

Validate DomeADB Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Telemetry.xml - valid

Validate DomeAPS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Telemetry.xml - valid

Validate DomeLouvers Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Telemetry.xml - valid

Validate DomeLWS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Telemetry.xml - valid

Validate DomeMONCS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Telemetry.xml - valid

Validate DomeTHCS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Telemetry.xml - valid

Validate EEC Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/eec/eec_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   eec_Telemetry.xml - valid

Validate EFD Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   efd_Telemetry.xml - valid

Validate Hexapod Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Telemetry.xml - valid

Validate M1M3 Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Telemetry.xml - valid

Validate M2MS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Telemetry.xml - valid

Validate MTMount Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate OCS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Telemetry.xml - valid

Validate Rotator Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Telemetry.xml - valid

Validate Scheduler Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Telemetry.xml - valid

Validate Sequencer Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Telemetry.xml - valid

Validate SummitFacility Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Telemetry.xml - valid

Validate TCS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Telemetry.xml - valid

Validate TcsOfc Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Telemetry.xml - valid

Validate TcsWEP Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Telemetry.xml - valid

Validate VMS Telemetry XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/vms/vms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   vms_Telemetry.xml - valid

