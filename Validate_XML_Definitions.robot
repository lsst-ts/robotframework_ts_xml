*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
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

Validate AtDome Commands
	[Documentation]    Validate the AtDome Commands XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Commands.xml - valid

Validate AtDome Events
	[Documentation]    Validate the AtDome Events XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Events.xml - valid

Validate AtDome Telemetry
	[Documentation]    Validate the AtDome Telemetry XML file.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   AtDome_Telemetry.xml - valid

Validate ATHeaderService Events
	[Documentation]    Validate the ATHeaderService Events XML file.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   ATHeaderService_Events.xml - valid

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

Validate Domeadb Commands
	[Documentation]    Validate the Domeadb Commands XML file.
	[Tags]    smoke    Domeadb
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Commands.xml - valid

Validate Domeadb Events
	[Documentation]    Validate the Domeadb Events XML file.
	[Tags]    smoke    Domeadb
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Events.xml - valid

Validate Domeadb Telemetry
	[Documentation]    Validate the Domeadb Telemetry XML file.
	[Tags]    smoke    Domeadb
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Telemetry.xml - valid

Validate Domeaps Commands
	[Documentation]    Validate the Domeaps Commands XML file.
	[Tags]    smoke    Domeaps
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Commands.xml - valid

Validate Domeaps Events
	[Documentation]    Validate the Domeaps Events XML file.
	[Tags]    smoke    Domeaps
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Events.xml - valid

Validate Domeaps Telemetry
	[Documentation]    Validate the Domeaps Telemetry XML file.
	[Tags]    smoke    Domeaps
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Telemetry.xml - valid

Validate Domelouvers Commands
	[Documentation]    Validate the Domelouvers Commands XML file.
	[Tags]    smoke    Domelouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Commands.xml - valid

Validate Domelouvers Events
	[Documentation]    Validate the Domelouvers Events XML file.
	[Tags]    smoke    Domelouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Events.xml - valid

Validate Domelouvers Telemetry
	[Documentation]    Validate the Domelouvers Telemetry XML file.
	[Tags]    smoke    Domelouvers
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Telemetry.xml - valid

Validate Domelws Commands
	[Documentation]    Validate the Domelws Commands XML file.
	[Tags]    smoke    Domelws
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Commands.xml - valid

Validate Domelws Events
	[Documentation]    Validate the Domelws Events XML file.
	[Tags]    smoke    Domelws
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Events.xml - valid

Validate Domelws Telemetry
	[Documentation]    Validate the Domelws Telemetry XML file.
	[Tags]    smoke    Domelws
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Telemetry.xml - valid

Validate Domemoncs Commands
	[Documentation]    Validate the Domemoncs Commands XML file.
	[Tags]    smoke    Domemoncs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Commands.xml - valid

Validate Domemoncs Events
	[Documentation]    Validate the Domemoncs Events XML file.
	[Tags]    smoke    Domemoncs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Events.xml - valid

Validate Domemoncs Telemetry
	[Documentation]    Validate the Domemoncs Telemetry XML file.
	[Tags]    smoke    Domemoncs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Telemetry.xml - valid

Validate Domethcs Commands
	[Documentation]    Validate the Domethcs Commands XML file.
	[Tags]    smoke    Domethcs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Commands.xml - valid

Validate Domethcs Events
	[Documentation]    Validate the Domethcs Events XML file.
	[Tags]    smoke    Domethcs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Events.xml - valid

Validate Domethcs Telemetry
	[Documentation]    Validate the Domethcs Telemetry XML file.
	[Tags]    smoke    Domethcs
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Telemetry.xml - valid

Validate EEC Commands
	[Documentation]    Validate the EEC Commands XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EEC/EEC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   EEC_Commands.xml - valid

Validate EEC Events
	[Documentation]    Validate the EEC Events XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EEC/EEC_Events.xml
	Log    ${output}
	Should Contain    ${output}   EEC_Events.xml - valid

Validate EEC Telemetry
	[Documentation]    Validate the EEC Telemetry XML file.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   EEC_Telemetry.xml - valid

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

Validate Mtcamera Commands
	[Documentation]    Validate the Mtcamera Commands XML file.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Commands.xml - valid

Validate Mtcamera Events
	[Documentation]    Validate the Mtcamera Events XML file.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Events.xml - valid

Validate Mtcamera Telemetry
	[Documentation]    Validate the Mtcamera Telemetry XML file.
	[Tags]    smoke    Mtcamera
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Telemetry.xml - valid

Validate MTHeaderService Events
	[Documentation]    Validate the MTHeaderService Events XML file.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTHeaderService_Events.xml - valid

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

Validate MTOFC Commands
	[Documentation]    Validate the MTOFC Commands XML file.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Commands.xml - valid

Validate MTOFC Events
	[Documentation]    Validate the MTOFC Events XML file.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Events.xml - valid

Validate MTOFC Telemetry
	[Documentation]    Validate the MTOFC Telemetry XML file.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Telemetry.xml - valid

Validate MTWEP Events
	[Documentation]    Validate the MTWEP Events XML file.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTWEP_Events.xml - valid

Validate MTWEP Telemetry
	[Documentation]    Validate the MTWEP Telemetry XML file.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTWEP_Telemetry.xml - valid

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

Validate Sequencer Commands
	[Documentation]    Validate the Sequencer Commands XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Commands.xml - valid

Validate Sequencer Events
	[Documentation]    Validate the Sequencer Events XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Events.xml - valid

Validate Sequencer Telemetry
	[Documentation]    Validate the Sequencer Telemetry XML file.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Telemetry.xml - valid

Validate SummitFacility Events
	[Documentation]    Validate the SummitFacility Events XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Events.xml - valid

Validate SummitFacility Telemetry
	[Documentation]    Validate the SummitFacility Telemetry XML file.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   SummitFacility_Telemetry.xml - valid

Validate TCS Commands
	[Documentation]    Validate the TCS Commands XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TCS/TCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   TCS_Commands.xml - valid

Validate TCS Events
	[Documentation]    Validate the TCS Events XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TCS/TCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   TCS_Events.xml - valid

Validate TCS Telemetry
	[Documentation]    Validate the TCS Telemetry XML file.
	[Tags]    smoke    TCS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/TCS/TCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   TCS_Telemetry.xml - valid

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

Validate VMS Commands
	[Documentation]    Validate the VMS Commands XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/VMS/VMS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   VMS_Commands.xml - valid

Validate VMS Events
	[Documentation]    Validate the VMS Events XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/VMS/VMS_Events.xml
	Log    ${output}
	Should Contain    ${output}   VMS_Events.xml - valid

Validate VMS Telemetry
	[Documentation]    Validate the VMS Telemetry XML file.
	[Tags]    smoke    VMS
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/VMS/VMS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   VMS_Telemetry.xml - valid

