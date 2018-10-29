*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events XML file
	[Tags]    smoke    Archiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/archiver/archiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Events.xml - valid

Validate AtArchiver Events XML file
	[Tags]    smoke    AtArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Events.xml - valid

Validate AtDome Events XML file
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Events.xml - valid

Validate AtHeaderService Events XML file
	[Tags]    smoke    AtHeaderService
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   atHeaderService_Events.xml - valid

Validate AtMCS Events XML file
	[Tags]    smoke    AtMCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtMCS_Events.xml - valid

Validate AtMonochromator Events XML file
	[Tags]    smoke    AtMonochromator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Events.xml - valid

Validate AtPneumatics Events XML file
	[Tags]    smoke    AtPneumatics
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtPneumatics_Events.xml - valid

Validate AtScheduler Events XML file
	[Tags]    smoke    AtScheduler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   atScheduler_Events.xml - valid

Validate AtWhiteLight Events XML file
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtWhiteLight_Events.xml - valid

Validate AtCamera Events XML file
	[Tags]    smoke    AtCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Events.xml - valid

Validate ATCS Events XML file
	[Tags]    smoke    ATCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/atcs/atcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Events.xml - valid

Validate Camera Events XML file
	[Tags]    smoke    Camera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/camera/camera_Events.xml
	Log    ${output}
	Should Contain    ${output}   camera_Events.xml - valid

Validate Cbp Events XML file
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/CBP/CBP_Events.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Events.xml - valid

Validate Dome Events XML file
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/dome/dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   dome_Events.xml - valid

Validate DomeADB Events XML file
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Events.xml - valid

Validate DomeAPS Events XML file
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Events.xml - valid

Validate DomeLouvers Events XML file
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Events.xml - valid

Validate DomeLWS Events XML file
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Events.xml - valid

Validate DomeMONCS Events XML file
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Events.xml - valid

Validate DomeTHCS Events XML file
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Events.xml - valid

Validate EEC Events XML file
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/eec/eec_Events.xml
	Log    ${output}
	Should Contain    ${output}   eec_Events.xml - valid

Validate EFD Events XML file
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/efd/efd_Events.xml
	Log    ${output}
	Should Contain    ${output}   efd_Events.xml - valid

Validate HeaderService Events XML file
	[Tags]    smoke    HeaderService
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/headerService/headerService_Events.xml
	Log    ${output}
	Should Contain    ${output}   headerService_Events.xml - valid

Validate Hexapod Events XML file
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Events.xml - valid

Validate LinearStage Events XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Events.xml - valid

Validate M1M3 Events XML file
	[Tags]    smoke    M1M3
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Events.xml - valid

Validate M2MS Events XML file
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Events.xml - valid

Validate MTMount Events XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate OCS Events XML file
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ocs/ocs_Events.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Events.xml - valid

Validate Rotator Events XML file
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/rotator/rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Events.xml - valid

Validate Scheduler Events XML file
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/scheduler/scheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Events.xml - valid

Validate SEDSpectrometer Events XML file
	[Tags]    smoke    SEDSpectrometer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sedSpectrometer_Events.xml - valid

Validate Sequencer Events XML file
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Events.xml - valid

Validate AtSpectrograph Events XML file
	[Tags]    smoke    AtSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/AtSpectrograph/AtSpectrograph_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtSpectrograph_Events.xml - valid

Validate TCS Events XML file
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcs/tcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Events.xml - valid

Validate TcsOfc Events XML file
	[Tags]    smoke    TcsOfc
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Events.xml - valid

Validate TcsWEP Events XML file
	[Tags]    smoke    TcsWEP
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Events.xml - valid

Validate Test Events XML file
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${output}
	Should Contain    ${output}   Test_Events.xml - valid

Validate VMS Events XML file
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/vms/vms_Events.xml
	Log    ${output}
	Should Contain    ${output}   vms_Events.xml - valid

