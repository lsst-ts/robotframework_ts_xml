*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/archiver/archiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Events.xml - valid

Validate AtArchiver Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Events.xml - valid

Validate AtHeaderService Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   atHeaderService_Events.xml - valid

Validate AtMonochromator Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Events.xml - valid

Validate AtScheduler Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   atScheduler_Events.xml - valid

Validate AtWhiteLight Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   atWhiteLight_Events.xml - valid

Validate AtCamera Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Events.xml - valid

Validate ATCS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atcs/atcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Events.xml - valid

Validate CalibrationElectrometer Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Events.xml - valid

Validate Camera Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/camera/camera_Events.xml
	Log    ${output}
	Should Contain    ${output}   camera_Events.xml - valid

Validate CatchupArchiver Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   catchuparchiver_Events.xml - valid

Validate Dome Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/dome/dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   dome_Events.xml - valid

Validate DomeADB Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Events.xml - valid

Validate DomeAPS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Events.xml - valid

Validate DomeLouvers Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Events.xml - valid

Validate DomeLWS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Events.xml - valid

Validate DomeMONCS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Events.xml - valid

Validate DomeTHCS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Events.xml - valid

Validate EEC Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/eec/eec_Events.xml
	Log    ${output}
	Should Contain    ${output}   eec_Events.xml - valid

Validate EFD Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/efd/efd_Events.xml
	Log    ${output}
	Should Contain    ${output}   efd_Events.xml - valid

Validate HeaderService Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/headerService/headerService_Events.xml
	Log    ${output}
	Should Contain    ${output}   headerService_Events.xml - valid

Validate Hexapod Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Events.xml - valid

Validate M1M3 Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Events.xml - valid

Validate M2MS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Events.xml - valid

Validate MTMount Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate OCS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ocs/ocs_Events.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Events.xml - valid

Validate Rotator Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/rotator/rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Events.xml - valid

Validate Scheduler Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/scheduler/scheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Events.xml - valid

Validate Sequencer Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Events.xml - valid

Validate SEDSpectrometer Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sedSpectrometer_Events.xml - valid

Validate SummitFacility Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Events.xml - valid

Validate TCS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcs/tcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Events.xml - valid

Validate TcsOfc Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Events.xml - valid

Validate TcsWEP Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Events.xml - valid

Validate VMS Events XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/vms/vms_Events.xml
	Log    ${output}
	Should Contain    ${output}   vms_Events.xml - valid

