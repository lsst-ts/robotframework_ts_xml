*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Events XML file
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATAOS_Events.xml - valid

Validate ATArchiver Events XML file
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Events.xml - valid

Validate ATBuilding Events XML file
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATBuilding_Events.xml - valid

Validate ATCalCS Events XML file
	[Tags]    smoke    ATCalCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATCalCS/ATCalCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATCalCS_Events.xml - valid

Validate ATCamera Events XML file
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Events.xml - valid

Validate ATDome Events XML file
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATDome/ATDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Events.xml - valid

Validate ATDomeTrajectory Events XML file
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATDomeTrajectory_Events.xml - valid

Validate ATEEC Events XML file
	[Tags]    smoke    ATEEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATEEC/ATEEC_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATEEC_Events.xml - valid

Validate ATHeaderService Events XML file
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHeaderService_Events.xml - valid

Validate ATHexapod Events XML file
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Events.xml - valid

Validate ATMCS Events XML file
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Events.xml - valid

Validate ATMonochromator Events XML file
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Events.xml - valid

Validate ATPneumatics Events XML file
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Events.xml - valid

Validate ATSpectrograph Events XML file
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Events.xml - valid

Validate ATTCS Events XML file
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Events.xml - valid

Validate ATThermoelectricCooler Events XML file
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATThermoelectricCooler_Events.xml - valid

Validate ATWhiteLight Events XML file
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Events.xml - valid

Validate CatchupArchiver Events XML file
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Events.xml - valid

Validate DIMM Events XML file
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DIMM/DIMM_Events.xml
	Log    ${output}
	Should Contain    ${output}   DIMM_Events.xml - valid

Validate Dome Events XML file
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Dome/Dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Events.xml - valid

Validate DomeADB Events XML file
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Events.xml - valid

Validate DomeAPS Events XML file
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Events.xml - valid

Validate DomeLouvers Events XML file
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Events.xml - valid

Validate DomeLWS Events XML file
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Events.xml - valid

Validate DomeMONCS Events XML file
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Events.xml - valid

Validate DomeTHCS Events XML file
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Events.xml - valid

Validate EAS Events XML file
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/EAS/EAS_Events.xml
	Log    ${output}
	Should Contain    ${output}   EAS_Events.xml - valid

Validate EFD Events XML file
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/EFD/EFD_Events.xml
	Log    ${output}
	Should Contain    ${output}   EFD_Events.xml - valid

Validate EFDTransformationServer Events XML file
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml
	Log    ${output}
	Should Contain    ${output}   EFDTransformationServer_Events.xml - valid

Validate Electrometer Events XML file
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   Electrometer_Events.xml - valid

Validate FiberSpectrograph Events XML file
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Events.xml - valid

Validate IOTA Events XML file
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/IOTA/IOTA_Events.xml
	Log    ${output}
	Should Contain    ${output}   IOTA_Events.xml - valid

Validate Hexapod Events XML file
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Events.xml - valid

Validate HVAC Events XML file
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/HVAC/HVAC_Events.xml
	Log    ${output}
	Should Contain    ${output}   HVAC_Events.xml - valid

Validate LinearStage Events XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Events.xml - valid

Validate MTAOS Events XML file
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTAOS_Events.xml - valid

Validate MTArchiver Events XML file
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTArchiver_Events.xml - valid

Validate MTCalCS Events XML file
	[Tags]    smoke    MTCalCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTCalCS/MTCalCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTCalCS_Events.xml - valid

Validate MTCamera Events XML file
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Events.xml - valid

Validate MTDomeTrajectory Events XML file
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTDomeTrajectory_Events.xml - valid

Validate MTEEC Events XML file
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTEEC_Events.xml - valid

Validate MTGuider Events XML file
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTGuider_Events.xml - valid

Validate MTHeaderService Events XML file
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTHeaderService_Events.xml - valid

Validate MTLaserTracker Events XML file
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTLaserTracker_Events.xml - valid

Validate MTM1M3 Events XML file
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Events.xml - valid

Validate MTM2 Events XML file
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTM2/MTM2_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Events.xml - valid

Validate MTMount Events XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate MTOFC Events XML file
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Events.xml - valid

Validate MTTCS Events XML file
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Events.xml - valid

Validate MTWEP Events XML file
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTWEP_Events.xml - valid

Validate MTVMS Events XML file
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Events.xml - valid

Validate OCS Events XML file
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/OCS/OCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Events.xml - valid

Validate PointingComponent Events XML file
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml
	Log    ${output}
	Should Contain    ${output}   PointingComponent_Events.xml - valid

Validate PromptProcessing Events XML file
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Events.xml - valid

Validate Rotator Events XML file
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Events.xml - valid

Validate Scheduler Events XML file
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   Scheduler_Events.xml - valid

Validate Script Events XML file
	[Tags]    smoke    Script
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Script/Script_Events.xml
	Log    ${output}
	Should Contain    ${output}   Script_Events.xml - valid

Validate ScriptQueue Events XML file
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml
	Log    ${output}
	Should Contain    ${output}   ScriptQueue_Events.xml - valid

Validate Sequencer Events XML file
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Events.xml - valid

Validate SummitFacility Events XML file
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Events.xml - valid

Validate Test Events XML file
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${output}
	Should Contain    ${output}   Test_Events.xml - valid

Validate TunableLaser Events XML file
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALEventSet.xsd ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Events.xml - valid

