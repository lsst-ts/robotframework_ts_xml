*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATArchiver Telemetry XML file
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Telemetry.xml - valid

Validate ATBuilding Telemetry XML file
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATBuilding_Telemetry.xml - valid

Validate ATCalCS Telemetry XML file
	[Tags]    smoke    ATCalCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATCalCS/ATCalCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATCalCS_Telemetry.xml - valid

Validate ATCamera Telemetry XML file
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Telemetry.xml - valid

Validate ATDome Telemetry XML file
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Telemetry.xml - valid

Validate ATDomeTrajectory Telemetry XML file
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATDomeTrajectory_Telemetry.xml - valid

Validate ATHexapod Telemetry XML file
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Telemetry.xml - valid

Validate ATMCS Telemetry XML file
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Telemetry.xml - valid

Validate ATMonochromator Telemetry XML file
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Telemetry.xml - valid

Validate ATPneumatics Telemetry XML file
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Telemetry.xml - valid

Validate ATSpectrograph Telemetry XML file
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Telemetry.xml - valid

Validate ATTCS Telemetry XML file
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Telemetry.xml - valid

Validate ATThermoelectricCooler Telemetry XML file
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATThermoelectricCooler_Telemetry.xml - valid

Validate ATWhiteLight Telemetry XML file
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Telemetry.xml - valid

Validate CatchupArchiver Telemetry XML file
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Telemetry.xml - valid

Validate CBP Telemetry XML file
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Telemetry.xml - valid

Validate DIMM Telemetry XML file
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DIMM_Telemetry.xml - valid

Validate Dome Telemetry XML file
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Telemetry.xml - valid

Validate DomeADB Telemetry XML file
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Telemetry.xml - valid

Validate DomeAPS Telemetry XML file
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Telemetry.xml - valid

Validate DomeLouvers Telemetry XML file
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Telemetry.xml - valid

Validate DomeLWS Telemetry XML file
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Telemetry.xml - valid

Validate DomeMONCS Telemetry XML file
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Telemetry.xml - valid

Validate DomeTHCS Telemetry XML file
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Telemetry.xml - valid

Validate EAS Telemetry XML file
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EAS_Telemetry.xml - valid

Validate EEC Telemetry XML file
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EEC_Telemetry.xml - valid

Validate EFD Telemetry XML file
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EFD_Telemetry.xml - valid

Validate EFDTransformationServer Telemetry XML file
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EFDTransformationServer_Telemetry.xml - valid

Validate FiberSpectrograph Telemetry XML file
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Telemetry.xml - valid

Validate IOTA Telemetry XML file
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   IOTA_Telemetry.xml - valid

Validate Hexapod Telemetry XML file
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Telemetry.xml - valid

Validate LinearStage Telemetry XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Telemetry.xml - valid

Validate MTArchiver Telemetry XML file
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTArchiver_Telemetry.xml - valid

Validate MTCalCS Telemetry XML file
	[Tags]    smoke    MTCalCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTCalCS/MTCalCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTCalCS_Telemetry.xml - valid

Validate MTCamera Telemetry XML file
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Telemetry.xml - valid

Validate MTDomeTrajectory Telemetry XML file
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTDomeTrajectory_Telemetry.xml - valid

Validate MTGuider Telemetry XML file
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTGuider_Telemetry.xml - valid

Validate MTLaserTracker Telemetry XML file
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTLaserTracker_Telemetry.xml - valid

Validate MTM1M3 Telemetry XML file
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Telemetry.xml - valid

Validate MTM2 Telemetry XML file
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Telemetry.xml - valid

Validate MTMount Telemetry XML file
	[Tags]    smoke    MTMount    TSS-3286
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate MTOFC Telemetry XML file
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Telemetry.xml - valid

Validate MTTCS Telemetry XML file
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Telemetry.xml - valid

Validate MTWEP Telemetry XML file
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTWEP_Telemetry.xml - valid

Validate MTVMS Telemetry XML file
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Telemetry.xml - valid

Validate OCS Telemetry XML file
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Telemetry.xml - valid

Validate PromptProcessing Telemetry XML file
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Telemetry.xml - valid

Validate Rotator Telemetry XML file
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Telemetry.xml - valid

Validate Scheduler Telemetry XML file
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Scheduler_Telemetry.xml - valid

Validate Sequencer Telemetry XML file
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Telemetry.xml - valid

Validate SummitFacility Telemetry XML file
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Telemetry.xml - valid

Validate Test Telemetry XML file
	[Tags]    smoke    Test    TSS-3224
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Test_Telemetry.xml - valid

Validate TunableLaser Telemetry XML file
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Telemetry.xml - valid

