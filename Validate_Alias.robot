*** Settings ***
Documentation    Validate the subsystem XML definition files contain an Alias value that conforms the the EFDB_Topic name.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands XML Topic Alisases
	[Documentation]    Validate the ATAOS Commands XML Topic Alisases.
	[Tags]    smoke    ATAOS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATAOS Events XML Topic Alisases
	[Documentation]    Validate the ATAOS Events XML Topic Alisases.
	[Tags]    smoke    ATAOS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATArchiver Commands XML Topic Alisases
	[Documentation]    Validate the ATArchiver Commands XML Topic Alisases.
	[Tags]    smoke    ATArchiver
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATArchiver Events XML Topic Alisases
	[Documentation]    Validate the ATArchiver Events XML Topic Alisases.
	[Tags]    smoke    ATArchiver
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATBuilding Events XML Topic Alisases
	[Documentation]    Validate the ATBuilding Events XML Topic Alisases.
	[Tags]    smoke    ATBuilding
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATCalCS Events XML Topic Alisases
	[Documentation]    Validate the ATCalCS Events XML Topic Alisases.
	[Tags]    smoke    ATCalCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCalCS/ATCalCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATCalCS/ATCalCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATCamera Commands XML Topic Alisases
	[Documentation]    Validate the ATCamera Commands XML Topic Alisases.
	[Tags]    smoke    ATCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATCamera Events XML Topic Alisases
	[Documentation]    Validate the ATCamera Events XML Topic Alisases.
	[Tags]    smoke    ATCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATDome Commands XML Topic Alisases
	[Documentation]    Validate the ATDome Commands XML Topic Alisases.
	[Tags]    smoke    ATDome
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATDome Events XML Topic Alisases
	[Documentation]    Validate the ATDome Events XML Topic Alisases.
	[Tags]    smoke    ATDome
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATDomeTrajectory Events XML Topic Alisases
	[Documentation]    Validate the ATDomeTrajectory Events XML Topic Alisases.
	[Tags]    smoke    ATDomeTrajectory
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATEEC Commands XML Topic Alisases
	[Documentation]    Validate the ATEEC Commands XML Topic Alisases.
	[Tags]    smoke    ATEEC
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATEEC Events XML Topic Alisases
	[Documentation]    Validate the ATEEC Events XML Topic Alisases.
	[Tags]    smoke    ATEEC
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATHeaderService Events XML Topic Alisases
	[Documentation]    Validate the ATHeaderService Events XML Topic Alisases.
	[Tags]    smoke    ATHeaderService
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATHexapod Commands XML Topic Alisases
	[Documentation]    Validate the ATHexapod Commands XML Topic Alisases.
	[Tags]    smoke    ATHexapod
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATHexapod Events XML Topic Alisases
	[Documentation]    Validate the ATHexapod Events XML Topic Alisases.
	[Tags]    smoke    ATHexapod
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATMCS Commands XML Topic Alisases
	[Documentation]    Validate the ATMCS Commands XML Topic Alisases.
	[Tags]    smoke    ATMCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATMCS Events XML Topic Alisases
	[Documentation]    Validate the ATMCS Events XML Topic Alisases.
	[Tags]    smoke    ATMCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATMonochromator Commands XML Topic Alisases
	[Documentation]    Validate the ATMonochromator Commands XML Topic Alisases.
	[Tags]    smoke    ATMonochromator
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATMonochromator Events XML Topic Alisases
	[Documentation]    Validate the ATMonochromator Events XML Topic Alisases.
	[Tags]    smoke    ATMonochromator
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATPneumatics Commands XML Topic Alisases
	[Documentation]    Validate the ATPneumatics Commands XML Topic Alisases.
	[Tags]    smoke    ATPneumatics
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATPneumatics Events XML Topic Alisases
	[Documentation]    Validate the ATPneumatics Events XML Topic Alisases.
	[Tags]    smoke    ATPneumatics
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATPtg Commands XML Topic Alisases
	[Documentation]    Validate the ATPtg Commands XML Topic Alisases.
	[Tags]    smoke    ATPtg
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATPtg Events XML Topic Alisases
	[Documentation]    Validate the ATPtg Events XML Topic Alisases.
	[Tags]    smoke    ATPtg
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATSpectrograph Commands XML Topic Alisases
	[Documentation]    Validate the ATSpectrograph Commands XML Topic Alisases.
	[Tags]    smoke    ATSpectrograph
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATSpectrograph Events XML Topic Alisases
	[Documentation]    Validate the ATSpectrograph Events XML Topic Alisases.
	[Tags]    smoke    ATSpectrograph
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATTCS Commands XML Topic Alisases
	[Documentation]    Validate the ATTCS Commands XML Topic Alisases.
	[Tags]    smoke    ATTCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATTCS Events XML Topic Alisases
	[Documentation]    Validate the ATTCS Events XML Topic Alisases.
	[Tags]    smoke    ATTCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATThermoelectricCooler Commands XML Topic Alisases
	[Documentation]    Validate the ATThermoelectricCooler Commands XML Topic Alisases.
	[Tags]    smoke    ATThermoelectricCooler
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATThermoelectricCooler Events XML Topic Alisases
	[Documentation]    Validate the ATThermoelectricCooler Events XML Topic Alisases.
	[Tags]    smoke    ATThermoelectricCooler
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATWhiteLight Commands XML Topic Alisases
	[Documentation]    Validate the ATWhiteLight Commands XML Topic Alisases.
	[Tags]    smoke    ATWhiteLight
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ATWhiteLight Events XML Topic Alisases
	[Documentation]    Validate the ATWhiteLight Events XML Topic Alisases.
	[Tags]    smoke    ATWhiteLight
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate CatchupArchiver Events XML Topic Alisases
	[Documentation]    Validate the CatchupArchiver Events XML Topic Alisases.
	[Tags]    smoke    CatchupArchiver
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate CBP Commands XML Topic Alisases
	[Documentation]    Validate the CBP Commands XML Topic Alisases.
	[Tags]    smoke    CBP
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DIMM Events XML Topic Alisases
	[Documentation]    Validate the DIMM Events XML Topic Alisases.
	[Tags]    smoke    DIMM
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Dome Commands XML Topic Alisases
	[Documentation]    Validate the Dome Commands XML Topic Alisases.
	[Tags]    smoke    Dome
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Dome Events XML Topic Alisases
	[Documentation]    Validate the Dome Events XML Topic Alisases.
	[Tags]    smoke    Dome
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeADB Commands XML Topic Alisases
	[Documentation]    Validate the DomeADB Commands XML Topic Alisases.
	[Tags]    smoke    DomeADB
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeADB Events XML Topic Alisases
	[Documentation]    Validate the DomeADB Events XML Topic Alisases.
	[Tags]    smoke    DomeADB
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeAPS Commands XML Topic Alisases
	[Documentation]    Validate the DomeAPS Commands XML Topic Alisases.
	[Tags]    smoke    DomeAPS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeAPS Events XML Topic Alisases
	[Documentation]    Validate the DomeAPS Events XML Topic Alisases.
	[Tags]    smoke    DomeAPS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeLouvers Commands XML Topic Alisases
	[Documentation]    Validate the DomeLouvers Commands XML Topic Alisases.
	[Tags]    smoke    DomeLouvers
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeLouvers Events XML Topic Alisases
	[Documentation]    Validate the DomeLouvers Events XML Topic Alisases.
	[Tags]    smoke    DomeLouvers
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeLWS Commands XML Topic Alisases
	[Documentation]    Validate the DomeLWS Commands XML Topic Alisases.
	[Tags]    smoke    DomeLWS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeLWS Events XML Topic Alisases
	[Documentation]    Validate the DomeLWS Events XML Topic Alisases.
	[Tags]    smoke    DomeLWS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeMONCS Commands XML Topic Alisases
	[Documentation]    Validate the DomeMONCS Commands XML Topic Alisases.
	[Tags]    smoke    DomeMONCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeMONCS Events XML Topic Alisases
	[Documentation]    Validate the DomeMONCS Events XML Topic Alisases.
	[Tags]    smoke    DomeMONCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeTHCS Commands XML Topic Alisases
	[Documentation]    Validate the DomeTHCS Commands XML Topic Alisases.
	[Tags]    smoke    DomeTHCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate DomeTHCS Events XML Topic Alisases
	[Documentation]    Validate the DomeTHCS Events XML Topic Alisases.
	[Tags]    smoke    DomeTHCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate EAS Events XML Topic Alisases
	[Documentation]    Validate the EAS Events XML Topic Alisases.
	[Tags]    smoke    EAS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate EFD Events XML Topic Alisases
	[Documentation]    Validate the EFD Events XML Topic Alisases.
	[Tags]    smoke    EFD
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate EFDTransformationServer Events XML Topic Alisases
	[Documentation]    Validate the EFDTransformationServer Events XML Topic Alisases.
	[Tags]    smoke    EFDTransformationServer
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Electrometer Commands XML Topic Alisases
	[Documentation]    Validate the Electrometer Commands XML Topic Alisases.
	[Tags]    smoke    Electrometer
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Electrometer Events XML Topic Alisases
	[Documentation]    Validate the Electrometer Events XML Topic Alisases.
	[Tags]    smoke    Electrometer
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Environment Events XML Topic Alisases
	[Documentation]    Validate the Environment Events XML Topic Alisases.
	[Tags]    smoke    Environment
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate FiberSpectrograph Commands XML Topic Alisases
	[Documentation]    Validate the FiberSpectrograph Commands XML Topic Alisases.
	[Tags]    smoke    FiberSpectrograph
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate FiberSpectrograph Events XML Topic Alisases
	[Documentation]    Validate the FiberSpectrograph Events XML Topic Alisases.
	[Tags]    smoke    FiberSpectrograph
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate GenericCamera Commands XML Topic Alisases
	[Documentation]    Validate the GenericCamera Commands XML Topic Alisases.
	[Tags]    smoke    GenericCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate GenericCamera Events XML Topic Alisases
	[Documentation]    Validate the GenericCamera Events XML Topic Alisases.
	[Tags]    smoke    GenericCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate IOTA Events XML Topic Alisases
	[Documentation]    Validate the IOTA Events XML Topic Alisases.
	[Tags]    smoke    IOTA
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Hexapod Commands XML Topic Alisases
	[Documentation]    Validate the Hexapod Commands XML Topic Alisases.
	[Tags]    smoke    Hexapod
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Hexapod Events XML Topic Alisases
	[Documentation]    Validate the Hexapod Events XML Topic Alisases.
	[Tags]    smoke    Hexapod
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate HVAC Commands XML Topic Alisases
	[Documentation]    Validate the HVAC Commands XML Topic Alisases.
	[Tags]    smoke    HVAC
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate HVAC Events XML Topic Alisases
	[Documentation]    Validate the HVAC Events XML Topic Alisases.
	[Tags]    smoke    HVAC
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate LinearStage Commands XML Topic Alisases
	[Documentation]    Validate the LinearStage Commands XML Topic Alisases.
	[Tags]    smoke    LinearStage
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate LinearStage Events XML Topic Alisases
	[Documentation]    Validate the LinearStage Events XML Topic Alisases.
	[Tags]    smoke    LinearStage
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTAOS Commands XML Topic Alisases
	[Documentation]    Validate the MTAOS Commands XML Topic Alisases.
	[Tags]    smoke    MTAOS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTAOS Events XML Topic Alisases
	[Documentation]    Validate the MTAOS Events XML Topic Alisases.
	[Tags]    smoke    MTAOS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTArchiver Events XML Topic Alisases
	[Documentation]    Validate the MTArchiver Events XML Topic Alisases.
	[Tags]    smoke    MTArchiver
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTCalCS Events XML Topic Alisases
	[Documentation]    Validate the MTCalCS Events XML Topic Alisases.
	[Tags]    smoke    MTCalCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCalCS/MTCalCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTCalCS/MTCalCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTCamera Commands XML Topic Alisases
	[Documentation]    Validate the MTCamera Commands XML Topic Alisases.
	[Tags]    smoke    MTCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTCamera Events XML Topic Alisases
	[Documentation]    Validate the MTCamera Events XML Topic Alisases.
	[Tags]    smoke    MTCamera
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTDomeTrajectory Events XML Topic Alisases
	[Documentation]    Validate the MTDomeTrajectory Events XML Topic Alisases.
	[Tags]    smoke    MTDomeTrajectory
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTEEC Commands XML Topic Alisases
	[Documentation]    Validate the MTEEC Commands XML Topic Alisases.
	[Tags]    smoke    MTEEC
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTEEC Events XML Topic Alisases
	[Documentation]    Validate the MTEEC Events XML Topic Alisases.
	[Tags]    smoke    MTEEC
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTGuider Events XML Topic Alisases
	[Documentation]    Validate the MTGuider Events XML Topic Alisases.
	[Tags]    smoke    MTGuider
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTHeaderService Events XML Topic Alisases
	[Documentation]    Validate the MTHeaderService Events XML Topic Alisases.
	[Tags]    smoke    MTHeaderService
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTLaserTracker Events XML Topic Alisases
	[Documentation]    Validate the MTLaserTracker Events XML Topic Alisases.
	[Tags]    smoke    MTLaserTracker
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM1M3 Commands XML Topic Alisases
	[Documentation]    Validate the MTM1M3 Commands XML Topic Alisases.
	[Tags]    smoke    MTM1M3
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM1M3 Events XML Topic Alisases
	[Documentation]    Validate the MTM1M3 Events XML Topic Alisases.
	[Tags]    smoke    MTM1M3
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM1M3TS Commands XML Topic Alisases
	[Documentation]    Validate the MTM1M3TS Commands XML Topic Alisases.
	[Tags]    smoke    MTM1M3TS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM1M3TS Events XML Topic Alisases
	[Documentation]    Validate the MTM1M3TS Events XML Topic Alisases.
	[Tags]    smoke    MTM1M3TS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM2 Commands XML Topic Alisases
	[Documentation]    Validate the MTM2 Commands XML Topic Alisases.
	[Tags]    smoke    MTM2
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTM2 Events XML Topic Alisases
	[Documentation]    Validate the MTM2 Events XML Topic Alisases.
	[Tags]    smoke    MTM2
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTMount Commands XML Topic Alisases
	[Documentation]    Validate the MTMount Commands XML Topic Alisases.
	[Tags]    smoke    MTMount
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTMount Events XML Topic Alisases
	[Documentation]    Validate the MTMount Events XML Topic Alisases.
	[Tags]    smoke    MTMount
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTPtg Commands XML Topic Alisases
	[Documentation]    Validate the MTPtg Commands XML Topic Alisases.
	[Tags]    smoke    MTPtg
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTPtg Events XML Topic Alisases
	[Documentation]    Validate the MTPtg Events XML Topic Alisases.
	[Tags]    smoke    MTPtg
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTTCS Commands XML Topic Alisases
	[Documentation]    Validate the MTTCS Commands XML Topic Alisases.
	[Tags]    smoke    MTTCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTTCS Events XML Topic Alisases
	[Documentation]    Validate the MTTCS Events XML Topic Alisases.
	[Tags]    smoke    MTTCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTVMS Commands XML Topic Alisases
	[Documentation]    Validate the MTVMS Commands XML Topic Alisases.
	[Tags]    smoke    MTVMS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate MTVMS Events XML Topic Alisases
	[Documentation]    Validate the MTVMS Events XML Topic Alisases.
	[Tags]    smoke    MTVMS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate OCS Commands XML Topic Alisases
	[Documentation]    Validate the OCS Commands XML Topic Alisases.
	[Tags]    smoke    OCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate OCS Events XML Topic Alisases
	[Documentation]    Validate the OCS Events XML Topic Alisases.
	[Tags]    smoke    OCS
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate PointingComponent Commands XML Topic Alisases
	[Documentation]    Validate the PointingComponent Commands XML Topic Alisases.
	[Tags]    smoke    PointingComponent
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate PointingComponent Events XML Topic Alisases
	[Documentation]    Validate the PointingComponent Events XML Topic Alisases.
	[Tags]    smoke    PointingComponent
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate PromptProcessing Events XML Topic Alisases
	[Documentation]    Validate the PromptProcessing Events XML Topic Alisases.
	[Tags]    smoke    PromptProcessing
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Rotator Commands XML Topic Alisases
	[Documentation]    Validate the Rotator Commands XML Topic Alisases.
	[Tags]    smoke    Rotator
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Rotator Events XML Topic Alisases
	[Documentation]    Validate the Rotator Events XML Topic Alisases.
	[Tags]    smoke    Rotator
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Scheduler Events XML Topic Alisases
	[Documentation]    Validate the Scheduler Events XML Topic Alisases.
	[Tags]    smoke    Scheduler
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Script Commands XML Topic Alisases
	[Documentation]    Validate the Script Commands XML Topic Alisases.
	[Tags]    smoke    Script
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Script Events XML Topic Alisases
	[Documentation]    Validate the Script Events XML Topic Alisases.
	[Tags]    smoke    Script
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ScriptQueue Commands XML Topic Alisases
	[Documentation]    Validate the ScriptQueue Commands XML Topic Alisases.
	[Tags]    smoke    ScriptQueue
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate ScriptQueue Events XML Topic Alisases
	[Documentation]    Validate the ScriptQueue Events XML Topic Alisases.
	[Tags]    smoke    ScriptQueue
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Sequencer Commands XML Topic Alisases
	[Documentation]    Validate the Sequencer Commands XML Topic Alisases.
	[Tags]    smoke    Sequencer
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Sequencer Events XML Topic Alisases
	[Documentation]    Validate the Sequencer Events XML Topic Alisases.
	[Tags]    smoke    Sequencer
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate SummitFacility Events XML Topic Alisases
	[Documentation]    Validate the SummitFacility Events XML Topic Alisases.
	[Tags]    smoke    SummitFacility
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Test Commands XML Topic Alisases
	[Documentation]    Validate the Test Commands XML Topic Alisases.
	[Tags]    smoke    Test
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Test Events XML Topic Alisases
	[Documentation]    Validate the Test Events XML Topic Alisases.
	[Tags]    smoke    Test
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate TunableLaser Commands XML Topic Alisases
	[Documentation]    Validate the TunableLaser Commands XML Topic Alisases.
	[Tags]    smoke    TunableLaser
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate TunableLaser Events XML Topic Alisases
	[Documentation]    Validate the TunableLaser Events XML Topic Alisases.
	[Tags]    smoke    TunableLaser
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Watcher Commands XML Topic Alisases
	[Documentation]    Validate the Watcher Commands XML Topic Alisases.
	[Tags]    smoke    Watcher
	${topic_name}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

Validate Watcher Events XML Topic Alisases
	[Documentation]    Validate the Watcher Events XML Topic Alisases.
	[Tags]    smoke    Watcher
	${topic_name}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |cut -d'_' -f 3-
	${alias}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml
	Log Many    ${topic_name}    ${alias}
	Should Match    ${topic_name}    ${alias}

