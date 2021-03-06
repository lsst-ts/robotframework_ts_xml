*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands
	[Documentation]    Validate the ATAOS Commands XML file.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATAOS_Commands.xml - valid

Validate ATAOS Events
	[Documentation]    Validate the ATAOS Events XML file.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATAOS_Events.xml - valid

Validate ATAOS Telemetry
	[Documentation]    Validate the ATAOS Telemetry XML file.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATAOS_Telemetry.xml - valid

Validate ATArchiver Commands
	[Documentation]    Validate the ATArchiver Commands XML file.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Commands.xml - valid

Validate ATArchiver Events
	[Documentation]    Validate the ATArchiver Events XML file.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Events.xml - valid

Validate ATArchiver Telemetry
	[Documentation]    Validate the ATArchiver Telemetry XML file.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Telemetry.xml - valid

Validate ATBuilding Events
	[Documentation]    Validate the ATBuilding Events XML file.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATBuilding_Events.xml - valid

Validate ATBuilding Telemetry
	[Documentation]    Validate the ATBuilding Telemetry XML file.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATBuilding_Telemetry.xml - valid

Validate ATCamera Commands
	[Documentation]    Validate the ATCamera Commands XML file.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Commands.xml - valid

Validate ATCamera Events
	[Documentation]    Validate the ATCamera Events XML file.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Events.xml - valid

Validate ATCamera Telemetry
	[Documentation]    Validate the ATCamera Telemetry XML file.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Telemetry.xml - valid

Validate ATDome Commands
	[Documentation]    Validate the ATDome Commands XML file.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Commands.xml - valid

Validate ATDome Events
	[Documentation]    Validate the ATDome Events XML file.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATDome/ATDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Events.xml - valid

Validate ATDome Telemetry
	[Documentation]    Validate the ATDome Telemetry XML file.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Telemetry.xml - valid

Validate ATDomeTrajectory Events
	[Documentation]    Validate the ATDomeTrajectory Events XML file.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATDomeTrajectory_Events.xml - valid

Validate ATHeaderService Events
	[Documentation]    Validate the ATHeaderService Events XML file.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHeaderService_Events.xml - valid

Validate ATHexapod Commands
	[Documentation]    Validate the ATHexapod Commands XML file.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Commands.xml - valid

Validate ATHexapod Events
	[Documentation]    Validate the ATHexapod Events XML file.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Events.xml - valid

Validate ATHexapod Telemetry
	[Documentation]    Validate the ATHexapod Telemetry XML file.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Telemetry.xml - valid

Validate ATMCS Commands
	[Documentation]    Validate the ATMCS Commands XML file.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Commands.xml - valid

Validate ATMCS Events
	[Documentation]    Validate the ATMCS Events XML file.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Events.xml - valid

Validate ATMCS Telemetry
	[Documentation]    Validate the ATMCS Telemetry XML file.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Telemetry.xml - valid

Validate ATMonochromator Commands
	[Documentation]    Validate the ATMonochromator Commands XML file.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Commands.xml - valid

Validate ATMonochromator Events
	[Documentation]    Validate the ATMonochromator Events XML file.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Events.xml - valid

Validate ATMonochromator Telemetry
	[Documentation]    Validate the ATMonochromator Telemetry XML file.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Telemetry.xml - valid

Validate ATPneumatics Commands
	[Documentation]    Validate the ATPneumatics Commands XML file.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Commands.xml - valid

Validate ATPneumatics Events
	[Documentation]    Validate the ATPneumatics Events XML file.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Events.xml - valid

Validate ATPneumatics Telemetry
	[Documentation]    Validate the ATPneumatics Telemetry XML file.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Telemetry.xml - valid

Validate ATPtg Commands
	[Documentation]    Validate the ATPtg Commands XML file.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATPtg_Commands.xml - valid

Validate ATPtg Events
	[Documentation]    Validate the ATPtg Events XML file.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATPtg_Events.xml - valid

Validate ATPtg Telemetry
	[Documentation]    Validate the ATPtg Telemetry XML file.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATPtg_Telemetry.xml - valid

Validate ATSpectrograph Commands
	[Documentation]    Validate the ATSpectrograph Commands XML file.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Commands.xml - valid

Validate ATSpectrograph Events
	[Documentation]    Validate the ATSpectrograph Events XML file.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Events.xml - valid

Validate ATSpectrograph Telemetry
	[Documentation]    Validate the ATSpectrograph Telemetry XML file.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Telemetry.xml - valid

Validate ATTCS Commands
	[Documentation]    Validate the ATTCS Commands XML file.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Commands.xml - valid

Validate ATTCS Events
	[Documentation]    Validate the ATTCS Events XML file.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Events.xml - valid

Validate ATTCS Telemetry
	[Documentation]    Validate the ATTCS Telemetry XML file.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Telemetry.xml - valid

Validate ATWhiteLight Commands
	[Documentation]    Validate the ATWhiteLight Commands XML file.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Commands.xml - valid

Validate ATWhiteLight Events
	[Documentation]    Validate the ATWhiteLight Events XML file.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Events.xml - valid

Validate ATWhiteLight Telemetry
	[Documentation]    Validate the ATWhiteLight Telemetry XML file.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Telemetry.xml - valid

Validate CatchupArchiver Events
	[Documentation]    Validate the CatchupArchiver Events XML file.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Events.xml - valid

Validate CatchupArchiver Telemetry
	[Documentation]    Validate the CatchupArchiver Telemetry XML file.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CatchupArchiver_Telemetry.xml - valid

Validate CBP Commands
	[Documentation]    Validate the CBP Commands XML file.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Commands.xml - valid

Validate CBP Telemetry
	[Documentation]    Validate the CBP Telemetry XML file.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Telemetry.xml - valid

Validate DIMM Events
	[Documentation]    Validate the DIMM Events XML file.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DIMM/DIMM_Events.xml
	Log    ${output}
	Should Contain    ${output}   DIMM_Events.xml - valid

Validate DIMM Telemetry
	[Documentation]    Validate the DIMM Telemetry XML file.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DIMM_Telemetry.xml - valid

Validate Dome Commands
	[Documentation]    Validate the Dome Commands XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Dome/Dome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Commands.xml - valid

Validate Dome Events
	[Documentation]    Validate the Dome Events XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Dome/Dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Events.xml - valid

Validate Dome Telemetry
	[Documentation]    Validate the Dome Telemetry XML file.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Telemetry.xml - valid

Validate DSM Events
	[Documentation]    Validate the DSM Events XML file.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DSM/DSM_Events.xml
	Log    ${output}
	Should Contain    ${output}   DSM_Events.xml - valid

Validate DSM Telemetry
	[Documentation]    Validate the DSM Telemetry XML file.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DSM_Telemetry.xml - valid

Validate EAS Events
	[Documentation]    Validate the EAS Events XML file.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EAS/EAS_Events.xml
	Log    ${output}
	Should Contain    ${output}   EAS_Events.xml - valid

Validate EAS Telemetry
	[Documentation]    Validate the EAS Telemetry XML file.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EAS_Telemetry.xml - valid

Validate EFD Events
	[Documentation]    Validate the EFD Events XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EFD/EFD_Events.xml
	Log    ${output}
	Should Contain    ${output}   EFD_Events.xml - valid

Validate EFD Telemetry
	[Documentation]    Validate the EFD Telemetry XML file.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EFD_Telemetry.xml - valid

Validate EFDTransformationServer Events
	[Documentation]    Validate the EFDTransformationServer Events XML file.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml
	Log    ${output}
	Should Contain    ${output}   EFDTransformationServer_Events.xml - valid

Validate EFDTransformationServer Telemetry
	[Documentation]    Validate the EFDTransformationServer Telemetry XML file.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EFDTransformationServer_Telemetry.xml - valid

Validate Electrometer Commands
	[Documentation]    Validate the Electrometer Commands XML file.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Electrometer_Commands.xml - valid

Validate Electrometer Events
	[Documentation]    Validate the Electrometer Events XML file.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	Log    ${output}
	Should Contain    ${output}   Electrometer_Events.xml - valid

Validate Environment Telemetry
	[Documentation]    Validate the Environment Telemetry XML file.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Environment_Telemetry.xml - valid

Validate FiberSpectrograph Commands
	[Documentation]    Validate the FiberSpectrograph Commands XML file.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Commands.xml - valid

Validate FiberSpectrograph Events
	[Documentation]    Validate the FiberSpectrograph Events XML file.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Events.xml - valid

Validate FiberSpectrograph Telemetry
	[Documentation]    Validate the FiberSpectrograph Telemetry XML file.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Telemetry.xml - valid

Validate GenericCamera Commands
	[Documentation]    Validate the GenericCamera Commands XML file.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   GenericCamera_Commands.xml - valid

Validate GenericCamera Events
	[Documentation]    Validate the GenericCamera Events XML file.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   GenericCamera_Events.xml - valid

Validate GenericCamera Telemetry
	[Documentation]    Validate the GenericCamera Telemetry XML file.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   GenericCamera_Telemetry.xml - valid

Validate IOTA Events
	[Documentation]    Validate the IOTA Events XML file.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/IOTA/IOTA_Events.xml
	Log    ${output}
	Should Contain    ${output}   IOTA_Events.xml - valid

Validate IOTA Telemetry
	[Documentation]    Validate the IOTA Telemetry XML file.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   IOTA_Telemetry.xml - valid

Validate Hexapod Commands
	[Documentation]    Validate the Hexapod Commands XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Commands.xml - valid

Validate Hexapod Events
	[Documentation]    Validate the Hexapod Events XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Events.xml - valid

Validate Hexapod Telemetry
	[Documentation]    Validate the Hexapod Telemetry XML file.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Telemetry.xml - valid

Validate HVAC Commands
	[Documentation]    Validate the HVAC Commands XML file.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   HVAC_Commands.xml - valid

Validate HVAC Events
	[Documentation]    Validate the HVAC Events XML file.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/HVAC/HVAC_Events.xml
	Log    ${output}
	Should Contain    ${output}   HVAC_Events.xml - valid

Validate HVAC Telemetry
	[Documentation]    Validate the HVAC Telemetry XML file.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   HVAC_Telemetry.xml - valid

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

Validate LOVE Events
	[Documentation]    Validate the LOVE Events XML file.
	[Tags]    smoke    LOVE
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/LOVE/LOVE_Events.xml
	Log    ${output}
	Should Contain    ${output}   LOVE_Events.xml - valid

Validate MTAOS Commands
	[Documentation]    Validate the MTAOS Commands XML file.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTAOS_Commands.xml - valid

Validate MTAOS Events
	[Documentation]    Validate the MTAOS Events XML file.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTAOS_Events.xml - valid

Validate MTAOS Telemetry
	[Documentation]    Validate the MTAOS Telemetry XML file.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTAOS_Telemetry.xml - valid

Validate MTArchiver Events
	[Documentation]    Validate the MTArchiver Events XML file.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTArchiver_Events.xml - valid

Validate MTArchiver Telemetry
	[Documentation]    Validate the MTArchiver Telemetry XML file.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTArchiver_Telemetry.xml - valid

Validate MTCamera Commands
	[Documentation]    Validate the MTCamera Commands XML file.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Commands.xml - valid

Validate MTCamera Events
	[Documentation]    Validate the MTCamera Events XML file.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Events.xml - valid

Validate MTCamera Telemetry
	[Documentation]    Validate the MTCamera Telemetry XML file.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Telemetry.xml - valid

Validate MTDomeTrajectory Events
	[Documentation]    Validate the MTDomeTrajectory Events XML file.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTDomeTrajectory_Events.xml - valid

Validate MTDomeTrajectory Telemetry
	[Documentation]    Validate the MTDomeTrajectory Telemetry XML file.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTDomeTrajectory_Telemetry.xml - valid

Validate MTEEC Commands
	[Documentation]    Validate the MTEEC Commands XML file.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTEEC_Commands.xml - valid

Validate MTEEC Events
	[Documentation]    Validate the MTEEC Events XML file.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTEEC_Events.xml - valid

Validate MTGuider Events
	[Documentation]    Validate the MTGuider Events XML file.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTGuider_Events.xml - valid

Validate MTGuider Telemetry
	[Documentation]    Validate the MTGuider Telemetry XML file.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTGuider_Telemetry.xml - valid

Validate MTHeaderService Events
	[Documentation]    Validate the MTHeaderService Events XML file.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTHeaderService_Events.xml - valid

Validate MTLaserTracker Events
	[Documentation]    Validate the MTLaserTracker Events XML file.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTLaserTracker_Events.xml - valid

Validate MTLaserTracker Telemetry
	[Documentation]    Validate the MTLaserTracker Telemetry XML file.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTLaserTracker_Telemetry.xml - valid

Validate MTM1M3 Commands
	[Documentation]    Validate the MTM1M3 Commands XML file.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Commands.xml - valid

Validate MTM1M3 Events
	[Documentation]    Validate the MTM1M3 Events XML file.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Events.xml - valid

Validate MTM1M3 Telemetry
	[Documentation]    Validate the MTM1M3 Telemetry XML file.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Telemetry.xml - valid

Validate MTM1M3TS Commands
	[Documentation]    Validate the MTM1M3TS Commands XML file.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3TS_Commands.xml - valid

Validate MTM1M3TS Events
	[Documentation]    Validate the MTM1M3TS Events XML file.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3TS_Events.xml - valid

Validate MTM1M3TS Telemetry
	[Documentation]    Validate the MTM1M3TS Telemetry XML file.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3TS_Telemetry.xml - valid

Validate MTM2 Commands
	[Documentation]    Validate the MTM2 Commands XML file.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Commands.xml - valid

Validate MTM2 Events
	[Documentation]    Validate the MTM2 Events XML file.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM2/MTM2_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Events.xml - valid

Validate MTM2 Telemetry
	[Documentation]    Validate the MTM2 Telemetry XML file.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Telemetry.xml - valid

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

Validate MTPtg Commands
	[Documentation]    Validate the MTPtg Commands XML file.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTPtg_Commands.xml - valid

Validate MTPtg Events
	[Documentation]    Validate the MTPtg Events XML file.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTPtg_Events.xml - valid

Validate MTPtg Telemetry
	[Documentation]    Validate the MTPtg Telemetry XML file.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTPtg_Telemetry.xml - valid

Validate MTTCS Commands
	[Documentation]    Validate the MTTCS Commands XML file.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Commands.xml - valid

Validate MTTCS Events
	[Documentation]    Validate the MTTCS Events XML file.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Events.xml - valid

Validate MTTCS Telemetry
	[Documentation]    Validate the MTTCS Telemetry XML file.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Telemetry.xml - valid

Validate MTVMS Commands
	[Documentation]    Validate the MTVMS Commands XML file.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Commands.xml - valid

Validate MTVMS Events
	[Documentation]    Validate the MTVMS Events XML file.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Events.xml - valid

Validate MTVMS Telemetry
	[Documentation]    Validate the MTVMS Telemetry XML file.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Telemetry.xml - valid

Validate OCS Commands
	[Documentation]    Validate the OCS Commands XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/OCS/OCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Commands.xml - valid

Validate OCS Events
	[Documentation]    Validate the OCS Events XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/OCS/OCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Events.xml - valid

Validate OCS Telemetry
	[Documentation]    Validate the OCS Telemetry XML file.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Telemetry.xml - valid

Validate PointingComponent Commands
	[Documentation]    Validate the PointingComponent Commands XML file.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml
	Log    ${output}
	Should Contain    ${output}   PointingComponent_Commands.xml - valid

Validate PointingComponent Events
	[Documentation]    Validate the PointingComponent Events XML file.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml
	Log    ${output}
	Should Contain    ${output}   PointingComponent_Events.xml - valid

Validate PointingComponent Telemetry
	[Documentation]    Validate the PointingComponent Telemetry XML file.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   PointingComponent_Telemetry.xml - valid

Validate PromptProcessing Events
	[Documentation]    Validate the PromptProcessing Events XML file.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Events.xml - valid

Validate PromptProcessing Telemetry
	[Documentation]    Validate the PromptProcessing Telemetry XML file.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   PromptProcessing_Telemetry.xml - valid

Validate Rotator Commands
	[Documentation]    Validate the Rotator Commands XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Commands.xml - valid

Validate Rotator Events
	[Documentation]    Validate the Rotator Events XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Events.xml - valid

Validate Rotator Telemetry
	[Documentation]    Validate the Rotator Telemetry XML file.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Telemetry.xml - valid

Validate Scheduler Events
	[Documentation]    Validate the Scheduler Events XML file.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml
	Log    ${output}
	Should Contain    ${output}   Scheduler_Events.xml - valid

Validate Scheduler Telemetry
	[Documentation]    Validate the Scheduler Telemetry XML file.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Scheduler_Telemetry.xml - valid

Validate Script Commands
	[Documentation]    Validate the Script Commands XML file.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Script/Script_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Script_Commands.xml - valid

Validate Script Events
	[Documentation]    Validate the Script Events XML file.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Script/Script_Events.xml
	Log    ${output}
	Should Contain    ${output}   Script_Events.xml - valid

Validate ScriptQueue Commands
	[Documentation]    Validate the ScriptQueue Commands XML file.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ScriptQueue_Commands.xml - valid

Validate ScriptQueue Events
	[Documentation]    Validate the ScriptQueue Events XML file.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml
	Log    ${output}
	Should Contain    ${output}   ScriptQueue_Events.xml - valid

Validate SummitFacility Telemetry
	[Documentation]    Validate the SummitFacility Telemetry XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Telemetry.xml - valid

Validate Test Commands
	[Documentation]    Validate the Test Commands XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Test_Commands.xml - valid

Validate Test Events
	[Documentation]    Validate the Test Events XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${output}
	Should Contain    ${output}   Test_Events.xml - valid

Validate Test Telemetry
	[Documentation]    Validate the Test Telemetry XML file.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Test_Telemetry.xml - valid

Validate TunableLaser Commands
	[Documentation]    Validate the TunableLaser Commands XML file.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Commands.xml - valid

Validate TunableLaser Events
	[Documentation]    Validate the TunableLaser Events XML file.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Events.xml - valid

Validate TunableLaser Telemetry
	[Documentation]    Validate the TunableLaser Telemetry XML file.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Telemetry.xml - valid

Validate Watcher Commands
	[Documentation]    Validate the Watcher Commands XML file.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Watcher_Commands.xml - valid

Validate Watcher Events
	[Documentation]    Validate the Watcher Events XML file.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Watcher/Watcher_Events.xml
	Log    ${output}
	Should Contain    ${output}   Watcher_Events.xml - valid

