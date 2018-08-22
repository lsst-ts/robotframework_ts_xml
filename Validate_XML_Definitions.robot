*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands
	[Documentation]    Validate the Archiver Commands XML file.
	[Tags]    smoke    Archiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Commands.xml - valid

Validate Archiver Events
	[Documentation]    Validate the Archiver Events XML file.
	[Tags]    smoke    Archiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/archiver/archiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Events.xml - valid

Validate Archiver Telemetry
	[Documentation]    Validate the Archiver Telemetry XML file.
	[Tags]    smoke    Archiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Telemetry.xml - valid

Validate AtArchiver Commands
	[Documentation]    Validate the AtArchiver Commands XML file.
	[Tags]    smoke    AtArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Commands.xml - valid

Validate AtArchiver Events
	[Documentation]    Validate the AtArchiver Events XML file.
	[Tags]    smoke    AtArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Events.xml - valid

Validate AtArchiver Telemetry
	[Documentation]    Validate the AtArchiver Telemetry XML file.
	[Tags]    smoke    AtArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atArchiver_Telemetry.xml - valid

Validate AtHeaderService Commands
	[Documentation]    Validate the AtHeaderService Commands XML file.
	[Tags]    smoke    AtHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atHeaderService_Commands.xml - valid

Validate AtHeaderService Events
	[Documentation]    Validate the AtHeaderService Events XML file.
	[Tags]    smoke    AtHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   atHeaderService_Events.xml - valid

Validate AtMonochromator Commands
	[Documentation]    Validate the AtMonochromator Commands XML file.
	[Tags]    smoke    AtMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Commands.xml - valid

Validate AtMonochromator Events
	[Documentation]    Validate the AtMonochromator Events XML file.
	[Tags]    smoke    AtMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Events.xml - valid

Validate AtMonochromator Telemetry
	[Documentation]    Validate the AtMonochromator Telemetry XML file.
	[Tags]    smoke    AtMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atMonochromator_Telemetry.xml - valid

Validate AtScheduler Events
	[Documentation]    Validate the AtScheduler Events XML file.
	[Tags]    smoke    AtScheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   atScheduler_Events.xml - valid

Validate AtScheduler Telemetry
	[Documentation]    Validate the AtScheduler Telemetry XML file.
	[Tags]    smoke    AtScheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atScheduler_Telemetry.xml - valid

Validate AtWhiteLight Commands
	[Documentation]    Validate the AtWhiteLight Commands XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atWhiteLight_Commands.xml - valid

Validate AtWhiteLight Events
	[Documentation]    Validate the AtWhiteLight Events XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   atWhiteLight_Events.xml - valid

Validate AtWhiteLight Telemetry
	[Documentation]    Validate the AtWhiteLight Telemetry XML file.
	[Tags]    smoke    AtWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atWhiteLight_Telemetry.xml - valid

Validate AtCamera Commands
	[Documentation]    Validate the AtCamera Commands XML file.
	[Tags]    smoke    AtCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Commands.xml - valid

Validate AtCamera Events
	[Documentation]    Validate the AtCamera Events XML file.
	[Tags]    smoke    AtCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Events.xml - valid

Validate AtCamera Telemetry
	[Documentation]    Validate the AtCamera Telemetry XML file.
	[Tags]    smoke    AtCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atcamera_Telemetry.xml - valid

Validate ATCS Commands
	[Documentation]    Validate the ATCS Commands XML file.
	[Tags]    smoke    ATCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Commands.xml - valid

Validate ATCS Events
	[Documentation]    Validate the ATCS Events XML file.
	[Tags]    smoke    ATCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcs/atcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Events.xml - valid

Validate ATCS Telemetry
	[Documentation]    Validate the ATCS Telemetry XML file.
	[Tags]    smoke    ATCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   atcs_Telemetry.xml - valid

Validate CalibrationElectrometer Commands
	[Documentation]    Validate the CalibrationElectrometer Commands XML file.
	[Tags]    smoke    CalibrationElectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Commands.xml - valid

Validate CalibrationElectrometer Events
	[Documentation]    Validate the CalibrationElectrometer Events XML file.
	[Tags]    smoke    CalibrationElectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Events.xml - valid

Validate CalibrationElectrometer Telemetry
	[Documentation]    Validate the CalibrationElectrometer Telemetry XML file.
	[Tags]    smoke    CalibrationElectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Telemetry.xml - valid

Validate Camera Commands
	[Documentation]    Validate the Camera Commands XML file.
	[Tags]    smoke    Camera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   camera_Commands.xml - valid

Validate Camera Events
	[Documentation]    Validate the Camera Events XML file.
	[Tags]    smoke    Camera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Events.xml
	Log    ${output}
	Should Contain    ${output}   camera_Events.xml - valid

Validate Camera Telemetry
	[Documentation]    Validate the Camera Telemetry XML file.
	[Tags]    smoke    Camera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   camera_Telemetry.xml - valid

Validate Dome Commands
	[Documentation]    Validate the Dome Commands XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   dome_Commands.xml - valid

Validate Dome Events
	[Documentation]    Validate the Dome Events XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   dome_Events.xml - valid

Validate Dome Telemetry
	[Documentation]    Validate the Dome Telemetry XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   dome_Telemetry.xml - valid

Validate DomeADB Commands
	[Documentation]    Validate the DomeADB Commands XML file.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Commands.xml - valid

Validate DomeADB Events
	[Documentation]    Validate the DomeADB Events XML file.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Events.xml - valid

Validate DomeADB Telemetry
	[Documentation]    Validate the DomeADB Telemetry XML file.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Telemetry.xml - valid

Validate DomeAPS Commands
	[Documentation]    Validate the DomeAPS Commands XML file.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Commands.xml - valid

Validate DomeAPS Events
	[Documentation]    Validate the DomeAPS Events XML file.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Events.xml - valid

Validate DomeAPS Telemetry
	[Documentation]    Validate the DomeAPS Telemetry XML file.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Telemetry.xml - valid

Validate DomeLouvers Commands
	[Documentation]    Validate the DomeLouvers Commands XML file.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Commands.xml - valid

Validate DomeLouvers Events
	[Documentation]    Validate the DomeLouvers Events XML file.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Events.xml - valid

Validate DomeLouvers Telemetry
	[Documentation]    Validate the DomeLouvers Telemetry XML file.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Telemetry.xml - valid

Validate DomeLWS Commands
	[Documentation]    Validate the DomeLWS Commands XML file.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Commands.xml - valid

Validate DomeLWS Events
	[Documentation]    Validate the DomeLWS Events XML file.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Events.xml - valid

Validate DomeLWS Telemetry
	[Documentation]    Validate the DomeLWS Telemetry XML file.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Telemetry.xml - valid

Validate DomeMONCS Commands
	[Documentation]    Validate the DomeMONCS Commands XML file.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Commands.xml - valid

Validate DomeMONCS Events
	[Documentation]    Validate the DomeMONCS Events XML file.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Events.xml - valid

Validate DomeMONCS Telemetry
	[Documentation]    Validate the DomeMONCS Telemetry XML file.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Telemetry.xml - valid

Validate DomeTHCS Commands
	[Documentation]    Validate the DomeTHCS Commands XML file.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Commands.xml - valid

Validate DomeTHCS Events
	[Documentation]    Validate the DomeTHCS Events XML file.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Events.xml - valid

Validate DomeTHCS Telemetry
	[Documentation]    Validate the DomeTHCS Telemetry XML file.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Telemetry.xml - valid

Validate EEC Commands
	[Documentation]    Validate the EEC Commands XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Commands.xml
	Log    ${output}
	Should Contain    ${output}   eec_Commands.xml - valid

Validate EEC Events
	[Documentation]    Validate the EEC Events XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Events.xml
	Log    ${output}
	Should Contain    ${output}   eec_Events.xml - valid

Validate EEC Telemetry
	[Documentation]    Validate the EEC Telemetry XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   eec_Telemetry.xml - valid

Validate EFD Events
	[Documentation]    Validate the EFD Events XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/efd/efd_Events.xml
	Log    ${output}
	Should Contain    ${output}   efd_Events.xml - valid

Validate EFD Telemetry
	[Documentation]    Validate the EFD Telemetry XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   efd_Telemetry.xml - valid

Validate HeaderService Commands
	[Documentation]    Validate the HeaderService Commands XML file.
	[Tags]    smoke    HeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/headerService/headerService_Commands.xml
	Log    ${output}
	Should Contain    ${output}   headerService_Commands.xml - valid

Validate HeaderService Events
	[Documentation]    Validate the HeaderService Events XML file.
	[Tags]    smoke    HeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/headerService/headerService_Events.xml
	Log    ${output}
	Should Contain    ${output}   headerService_Events.xml - valid

Validate Hexapod Commands
	[Documentation]    Validate the Hexapod Commands XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Commands.xml - valid

Validate Hexapod Events
	[Documentation]    Validate the Hexapod Events XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Events.xml - valid

Validate Hexapod Telemetry
	[Documentation]    Validate the Hexapod Telemetry XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Telemetry.xml - valid

Validate LinearStage Commands
	[Documentation]    Validate the LinearStage Commands XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Commands.xml - valid

Validate LinearStage Events
	[Documentation]    Validate the LinearStage Events XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Events.xml - valid

Validate LinearStage Telemetry
	[Documentation]    Validate the LinearStage Telemetry XML file.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Telemetry.xml - valid

Validate M1M3 Commands
	[Documentation]    Validate the M1M3 Commands XML file.
	[Tags]    smoke    M1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Commands.xml - valid

Validate M1M3 Events
	[Documentation]    Validate the M1M3 Events XML file.
	[Tags]    smoke    M1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Events.xml - valid

Validate M1M3 Telemetry
	[Documentation]    Validate the M1M3 Telemetry XML file.
	[Tags]    smoke    M1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Telemetry.xml - valid

Validate M2MS Commands
	[Documentation]    Validate the M2MS Commands XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Commands.xml - valid

Validate M2MS Events
	[Documentation]    Validate the M2MS Events XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Events.xml - valid

Validate M2MS Telemetry
	[Documentation]    Validate the M2MS Telemetry XML file.
	[Tags]    smoke    M2MS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Telemetry.xml - valid

Validate MTMount Commands
	[Documentation]    Validate the MTMount Commands XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate MTMount Events
	[Documentation]    Validate the MTMount Events XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate MTMount Telemetry
	[Documentation]    Validate the MTMount Telemetry XML file.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate OCS Commands
	[Documentation]    Validate the OCS Commands XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Commands.xml - valid

Validate OCS Events
	[Documentation]    Validate the OCS Events XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Events.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Events.xml - valid

Validate OCS Telemetry
	[Documentation]    Validate the OCS Telemetry XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Telemetry.xml - valid

Validate Rotator Commands
	[Documentation]    Validate the Rotator Commands XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Commands.xml - valid

Validate Rotator Events
	[Documentation]    Validate the Rotator Events XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Events.xml - valid

Validate Rotator Telemetry
	[Documentation]    Validate the Rotator Telemetry XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Telemetry.xml - valid

Validate Scheduler Commands
	[Documentation]    Validate the Scheduler Commands XML file.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/scheduler/scheduler_Commands.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Commands.xml - valid

Validate Scheduler Events
	[Documentation]    Validate the Scheduler Events XML file.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/scheduler/scheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Events.xml - valid

Validate Scheduler Telemetry
	[Documentation]    Validate the Scheduler Telemetry XML file.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Telemetry.xml - valid

Validate Sequencer Commands
	[Documentation]    Validate the Sequencer Commands XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Commands.xml - valid

Validate Sequencer Events
	[Documentation]    Validate the Sequencer Events XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Events.xml - valid

Validate Sequencer Telemetry
	[Documentation]    Validate the Sequencer Telemetry XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Telemetry.xml - valid

Validate SEDSpectrometer Commands
	[Documentation]    Validate the SEDSpectrometer Commands XML file.
	[Tags]    smoke    SEDSpectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   sedSpectrometer_Commands.xml - valid

Validate SEDSpectrometer Events
	[Documentation]    Validate the SEDSpectrometer Events XML file.
	[Tags]    smoke    SEDSpectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sedSpectrometer_Events.xml - valid

Validate SEDSpectrometer Telemetry
	[Documentation]    Validate the SEDSpectrometer Telemetry XML file.
	[Tags]    smoke    SEDSpectrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   sedSpectrometer_Telemetry.xml - valid

Validate SummitFacility Commands
	[Documentation]    Validate the SummitFacility Commands XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Commands.xml - valid

Validate SummitFacility Events
	[Documentation]    Validate the SummitFacility Events XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Events.xml - valid

Validate SummitFacility Telemetry
	[Documentation]    Validate the SummitFacility Telemetry XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Telemetry.xml - valid

Validate TCS Commands
	[Documentation]    Validate the TCS Commands XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Commands.xml - valid

Validate TCS Events
	[Documentation]    Validate the TCS Events XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Events.xml - valid

Validate TCS Telemetry
	[Documentation]    Validate the TCS Telemetry XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Telemetry.xml - valid

Validate TcsOfc Commands
	[Documentation]    Validate the TcsOfc Commands XML file.
	[Tags]    smoke    TcsOfc
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Commands.xml - valid

Validate TcsOfc Events
	[Documentation]    Validate the TcsOfc Events XML file.
	[Tags]    smoke    TcsOfc
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Events.xml - valid

Validate TcsOfc Telemetry
	[Documentation]    Validate the TcsOfc Telemetry XML file.
	[Tags]    smoke    TcsOfc
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Telemetry.xml - valid

Validate TcsWEP Commands
	[Documentation]    Validate the TcsWEP Commands XML file.
	[Tags]    smoke    TcsWEP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Commands.xml - valid

Validate TcsWEP Events
	[Documentation]    Validate the TcsWEP Events XML file.
	[Tags]    smoke    TcsWEP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Events.xml - valid

Validate TcsWEP Telemetry
	[Documentation]    Validate the TcsWEP Telemetry XML file.
	[Tags]    smoke    TcsWEP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcsWEP_Telemetry.xml - valid

Validate VMS Commands
	[Documentation]    Validate the VMS Commands XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/vms/vms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   vms_Commands.xml - valid

Validate VMS Events
	[Documentation]    Validate the VMS Events XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/vms/vms_Events.xml
	Log    ${output}
	Should Contain    ${output}   vms_Events.xml - valid

Validate VMS Telemetry
	[Documentation]    Validate the VMS Telemetry XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/vms/vms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   vms_Telemetry.xml - valid

