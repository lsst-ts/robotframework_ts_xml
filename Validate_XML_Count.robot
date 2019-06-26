*** Settings ***
Documentation    Validate the subsystem XML definition files contain a count value.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands XML Counts
	[Documentation]    Validate the ATAOS Commands XML count.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATAOS Events XML Counts
	[Documentation]    Validate the ATAOS Events XML count.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATAOS Telemetry XML Counts
	[Documentation]    Validate the ATAOS Telemetry XML count.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATArchiver Commands XML Counts
	[Documentation]    Validate the ATArchiver Commands XML count.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATArchiver Events XML Counts
	[Documentation]    Validate the ATArchiver Events XML count.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATArchiver Telemetry XML Counts
	[Documentation]    Validate the ATArchiver Telemetry XML count.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATBuilding Events XML Counts
	[Documentation]    Validate the ATBuilding Events XML count.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATBuilding Telemetry XML Counts
	[Documentation]    Validate the ATBuilding Telemetry XML count.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCalCS Events XML Counts
	[Documentation]    Validate the ATCalCS Events XML count.
	[Tags]    smoke    ATCalCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATCalCS/ATCalCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCalCS Telemetry XML Counts
	[Documentation]    Validate the ATCalCS Telemetry XML count.
	[Tags]    smoke    ATCalCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATCalCS/ATCalCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCamera Commands XML Counts
	[Documentation]    Validate the ATCamera Commands XML count.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCamera Events XML Counts
	[Documentation]    Validate the ATCamera Events XML count.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCamera Telemetry XML Counts
	[Documentation]    Validate the ATCamera Telemetry XML count.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATDome Commands XML Counts
	[Documentation]    Validate the ATDome Commands XML count.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATDome Events XML Counts
	[Documentation]    Validate the ATDome Events XML count.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATDome Telemetry XML Counts
	[Documentation]    Validate the ATDome Telemetry XML count.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATDomeTrajectory Events XML Counts
	[Documentation]    Validate the ATDomeTrajectory Events XML count.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATEEC Commands XML Counts
	[Documentation]    Validate the ATEEC Commands XML count.
	[Tags]    smoke    ATEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATEEC Events XML Counts
	[Documentation]    Validate the ATEEC Events XML count.
	[Tags]    smoke    ATEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATEEC/ATEEC_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATHeaderService Events XML Counts
	[Documentation]    Validate the ATHeaderService Events XML count.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATHexapod Commands XML Counts
	[Documentation]    Validate the ATHexapod Commands XML count.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATHexapod Events XML Counts
	[Documentation]    Validate the ATHexapod Events XML count.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATHexapod Telemetry XML Counts
	[Documentation]    Validate the ATHexapod Telemetry XML count.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMCS Commands XML Counts
	[Documentation]    Validate the ATMCS Commands XML count.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMCS Events XML Counts
	[Documentation]    Validate the ATMCS Events XML count.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMCS Telemetry XML Counts
	[Documentation]    Validate the ATMCS Telemetry XML count.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMonochromator Commands XML Counts
	[Documentation]    Validate the ATMonochromator Commands XML count.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMonochromator Events XML Counts
	[Documentation]    Validate the ATMonochromator Events XML count.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATMonochromator Telemetry XML Counts
	[Documentation]    Validate the ATMonochromator Telemetry XML count.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPneumatics Commands XML Counts
	[Documentation]    Validate the ATPneumatics Commands XML count.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPneumatics Events XML Counts
	[Documentation]    Validate the ATPneumatics Events XML count.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPneumatics Telemetry XML Counts
	[Documentation]    Validate the ATPneumatics Telemetry XML count.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPtg Commands XML Counts
	[Documentation]    Validate the ATPtg Commands XML count.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPtg Events XML Counts
	[Documentation]    Validate the ATPtg Events XML count.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATPtg Telemetry XML Counts
	[Documentation]    Validate the ATPtg Telemetry XML count.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATSpectrograph Commands XML Counts
	[Documentation]    Validate the ATSpectrograph Commands XML count.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATSpectrograph Events XML Counts
	[Documentation]    Validate the ATSpectrograph Events XML count.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATSpectrograph Telemetry XML Counts
	[Documentation]    Validate the ATSpectrograph Telemetry XML count.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATTCS Commands XML Counts
	[Documentation]    Validate the ATTCS Commands XML count.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATTCS Events XML Counts
	[Documentation]    Validate the ATTCS Events XML count.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATTCS Telemetry XML Counts
	[Documentation]    Validate the ATTCS Telemetry XML count.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATThermoelectricCooler Commands XML Counts
	[Documentation]    Validate the ATThermoelectricCooler Commands XML count.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATThermoelectricCooler Events XML Counts
	[Documentation]    Validate the ATThermoelectricCooler Events XML count.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATThermoelectricCooler Telemetry XML Counts
	[Documentation]    Validate the ATThermoelectricCooler Telemetry XML count.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATWhiteLight Commands XML Counts
	[Documentation]    Validate the ATWhiteLight Commands XML count.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATWhiteLight Events XML Counts
	[Documentation]    Validate the ATWhiteLight Events XML count.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATWhiteLight Telemetry XML Counts
	[Documentation]    Validate the ATWhiteLight Telemetry XML count.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CatchupArchiver Events XML Counts
	[Documentation]    Validate the CatchupArchiver Events XML count.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CatchupArchiver Telemetry XML Counts
	[Documentation]    Validate the CatchupArchiver Telemetry XML count.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CBP Commands XML Counts
	[Documentation]    Validate the CBP Commands XML count.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CBP Telemetry XML Counts
	[Documentation]    Validate the CBP Telemetry XML count.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DIMM Events XML Counts
	[Documentation]    Validate the DIMM Events XML count.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DIMM Telemetry XML Counts
	[Documentation]    Validate the DIMM Telemetry XML count.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Commands XML Counts
	[Documentation]    Validate the Dome Commands XML count.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Events XML Counts
	[Documentation]    Validate the Dome Events XML count.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Telemetry XML Counts
	[Documentation]    Validate the Dome Telemetry XML count.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Commands XML Counts
	[Documentation]    Validate the DomeADB Commands XML count.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Events XML Counts
	[Documentation]    Validate the DomeADB Events XML count.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Telemetry XML Counts
	[Documentation]    Validate the DomeADB Telemetry XML count.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Commands XML Counts
	[Documentation]    Validate the DomeAPS Commands XML count.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Events XML Counts
	[Documentation]    Validate the DomeAPS Events XML count.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Telemetry XML Counts
	[Documentation]    Validate the DomeAPS Telemetry XML count.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Commands XML Counts
	[Documentation]    Validate the DomeLouvers Commands XML count.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Events XML Counts
	[Documentation]    Validate the DomeLouvers Events XML count.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Telemetry XML Counts
	[Documentation]    Validate the DomeLouvers Telemetry XML count.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Commands XML Counts
	[Documentation]    Validate the DomeLWS Commands XML count.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Events XML Counts
	[Documentation]    Validate the DomeLWS Events XML count.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Telemetry XML Counts
	[Documentation]    Validate the DomeLWS Telemetry XML count.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Commands XML Counts
	[Documentation]    Validate the DomeMONCS Commands XML count.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Events XML Counts
	[Documentation]    Validate the DomeMONCS Events XML count.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Telemetry XML Counts
	[Documentation]    Validate the DomeMONCS Telemetry XML count.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Commands XML Counts
	[Documentation]    Validate the DomeTHCS Commands XML count.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Events XML Counts
	[Documentation]    Validate the DomeTHCS Events XML count.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Telemetry XML Counts
	[Documentation]    Validate the DomeTHCS Telemetry XML count.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EAS Events XML Counts
	[Documentation]    Validate the EAS Events XML count.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EAS Telemetry XML Counts
	[Documentation]    Validate the EAS Telemetry XML count.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFD Events XML Counts
	[Documentation]    Validate the EFD Events XML count.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFD Telemetry XML Counts
	[Documentation]    Validate the EFD Telemetry XML count.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFDTransformationServer Events XML Counts
	[Documentation]    Validate the EFDTransformationServer Events XML count.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFDTransformationServer Telemetry XML Counts
	[Documentation]    Validate the EFDTransformationServer Telemetry XML count.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Electrometer Commands XML Counts
	[Documentation]    Validate the Electrometer Commands XML count.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Electrometer Events XML Counts
	[Documentation]    Validate the Electrometer Events XML count.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Environment Events XML Counts
	[Documentation]    Validate the Environment Events XML count.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Environment Telemetry XML Counts
	[Documentation]    Validate the Environment Telemetry XML count.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate FiberSpectrograph Commands XML Counts
	[Documentation]    Validate the FiberSpectrograph Commands XML count.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate FiberSpectrograph Events XML Counts
	[Documentation]    Validate the FiberSpectrograph Events XML count.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate FiberSpectrograph Telemetry XML Counts
	[Documentation]    Validate the FiberSpectrograph Telemetry XML count.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate GenericCamera Commands XML Counts
	[Documentation]    Validate the GenericCamera Commands XML count.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate GenericCamera Events XML Counts
	[Documentation]    Validate the GenericCamera Events XML count.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate GenericCamera Telemetry XML Counts
	[Documentation]    Validate the GenericCamera Telemetry XML count.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate IOTA Events XML Counts
	[Documentation]    Validate the IOTA Events XML count.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate IOTA Telemetry XML Counts
	[Documentation]    Validate the IOTA Telemetry XML count.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Commands XML Counts
	[Documentation]    Validate the Hexapod Commands XML count.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Events XML Counts
	[Documentation]    Validate the Hexapod Events XML count.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Telemetry XML Counts
	[Documentation]    Validate the Hexapod Telemetry XML count.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HVAC Commands XML Counts
	[Documentation]    Validate the HVAC Commands XML count.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HVAC Events XML Counts
	[Documentation]    Validate the HVAC Events XML count.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HVAC Telemetry XML Counts
	[Documentation]    Validate the HVAC Telemetry XML count.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Commands XML Counts
	[Documentation]    Validate the LinearStage Commands XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Events XML Counts
	[Documentation]    Validate the LinearStage Events XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Telemetry XML Counts
	[Documentation]    Validate the LinearStage Telemetry XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTAOS Commands XML Counts
	[Documentation]    Validate the MTAOS Commands XML count.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTAOS Events XML Counts
	[Documentation]    Validate the MTAOS Events XML count.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTAOS Telemetry XML Counts
	[Documentation]    Validate the MTAOS Telemetry XML count.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTArchiver Events XML Counts
	[Documentation]    Validate the MTArchiver Events XML count.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTArchiver Telemetry XML Counts
	[Documentation]    Validate the MTArchiver Telemetry XML count.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTCalCS Events XML Counts
	[Documentation]    Validate the MTCalCS Events XML count.
	[Tags]    smoke    MTCalCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTCalCS/MTCalCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTCalCS Telemetry XML Counts
	[Documentation]    Validate the MTCalCS Telemetry XML count.
	[Tags]    smoke    MTCalCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTCalCS/MTCalCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTCamera Commands XML Counts
	[Documentation]    Validate the MTCamera Commands XML count.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTCamera Events XML Counts
	[Documentation]    Validate the MTCamera Events XML count.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTCamera Telemetry XML Counts
	[Documentation]    Validate the MTCamera Telemetry XML count.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTDomeTrajectory Events XML Counts
	[Documentation]    Validate the MTDomeTrajectory Events XML count.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTDomeTrajectory Telemetry XML Counts
	[Documentation]    Validate the MTDomeTrajectory Telemetry XML count.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTEEC Commands XML Counts
	[Documentation]    Validate the MTEEC Commands XML count.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTEEC Events XML Counts
	[Documentation]    Validate the MTEEC Events XML count.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTGuider Events XML Counts
	[Documentation]    Validate the MTGuider Events XML count.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTGuider Telemetry XML Counts
	[Documentation]    Validate the MTGuider Telemetry XML count.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTHeaderService Events XML Counts
	[Documentation]    Validate the MTHeaderService Events XML count.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTLaserTracker Events XML Counts
	[Documentation]    Validate the MTLaserTracker Events XML count.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTLaserTracker Telemetry XML Counts
	[Documentation]    Validate the MTLaserTracker Telemetry XML count.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3 Commands XML Counts
	[Documentation]    Validate the MTM1M3 Commands XML count.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3 Events XML Counts
	[Documentation]    Validate the MTM1M3 Events XML count.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3 Telemetry XML Counts
	[Documentation]    Validate the MTM1M3 Telemetry XML count.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3TS Commands XML Counts
	[Documentation]    Validate the MTM1M3TS Commands XML count.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3TS Events XML Counts
	[Documentation]    Validate the MTM1M3TS Events XML count.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM1M3TS Telemetry XML Counts
	[Documentation]    Validate the MTM1M3TS Telemetry XML count.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM2 Commands XML Counts
	[Documentation]    Validate the MTM2 Commands XML count.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM2 Events XML Counts
	[Documentation]    Validate the MTM2 Events XML count.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTM2 Telemetry XML Counts
	[Documentation]    Validate the MTM2 Telemetry XML count.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Commands XML Counts
	[Documentation]    Validate the MTMount Commands XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Events XML Counts
	[Documentation]    Validate the MTMount Events XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Telemetry XML Counts
	[Documentation]    Validate the MTMount Telemetry XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTPtg Commands XML Counts
	[Documentation]    Validate the MTPtg Commands XML count.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTPtg Events XML Counts
	[Documentation]    Validate the MTPtg Events XML count.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTPtg Telemetry XML Counts
	[Documentation]    Validate the MTPtg Telemetry XML count.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTTCS Commands XML Counts
	[Documentation]    Validate the MTTCS Commands XML count.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTTCS Events XML Counts
	[Documentation]    Validate the MTTCS Events XML count.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTTCS Telemetry XML Counts
	[Documentation]    Validate the MTTCS Telemetry XML count.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTVMS Commands XML Counts
	[Documentation]    Validate the MTVMS Commands XML count.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTVMS Events XML Counts
	[Documentation]    Validate the MTVMS Events XML count.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTVMS Telemetry XML Counts
	[Documentation]    Validate the MTVMS Telemetry XML count.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Commands XML Counts
	[Documentation]    Validate the OCS Commands XML count.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Events XML Counts
	[Documentation]    Validate the OCS Events XML count.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Telemetry XML Counts
	[Documentation]    Validate the OCS Telemetry XML count.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PointingComponent Commands XML Counts
	[Documentation]    Validate the PointingComponent Commands XML count.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PointingComponent Events XML Counts
	[Documentation]    Validate the PointingComponent Events XML count.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PointingComponent Telemetry XML Counts
	[Documentation]    Validate the PointingComponent Telemetry XML count.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PromptProcessing Events XML Counts
	[Documentation]    Validate the PromptProcessing Events XML count.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PromptProcessing Telemetry XML Counts
	[Documentation]    Validate the PromptProcessing Telemetry XML count.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Commands XML Counts
	[Documentation]    Validate the Rotator Commands XML count.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Events XML Counts
	[Documentation]    Validate the Rotator Events XML count.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Telemetry XML Counts
	[Documentation]    Validate the Rotator Telemetry XML count.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Scheduler Events XML Counts
	[Documentation]    Validate the Scheduler Events XML count.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Scheduler Telemetry XML Counts
	[Documentation]    Validate the Scheduler Telemetry XML count.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Script Commands XML Counts
	[Documentation]    Validate the Script Commands XML count.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Script Events XML Counts
	[Documentation]    Validate the Script Events XML count.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ScriptQueue Commands XML Counts
	[Documentation]    Validate the ScriptQueue Commands XML count.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ScriptQueue Events XML Counts
	[Documentation]    Validate the ScriptQueue Events XML count.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Commands XML Counts
	[Documentation]    Validate the Sequencer Commands XML count.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Events XML Counts
	[Documentation]    Validate the Sequencer Events XML count.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Telemetry XML Counts
	[Documentation]    Validate the Sequencer Telemetry XML count.
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate SummitFacility Events XML Counts
	[Documentation]    Validate the SummitFacility Events XML count.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate SummitFacility Telemetry XML Counts
	[Documentation]    Validate the SummitFacility Telemetry XML count.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Commands XML Counts
	[Documentation]    Validate the Test Commands XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Events XML Counts
	[Documentation]    Validate the Test Events XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Telemetry XML Counts
	[Documentation]    Validate the Test Telemetry XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TunableLaser Commands XML Counts
	[Documentation]    Validate the TunableLaser Commands XML count.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TunableLaser Events XML Counts
	[Documentation]    Validate the TunableLaser Events XML count.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TunableLaser Telemetry XML Counts
	[Documentation]    Validate the TunableLaser Telemetry XML count.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Watcher Commands XML Counts
	[Documentation]    Validate the Watcher Commands XML count.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Watcher Events XML Counts
	[Documentation]    Validate the Watcher Events XML count.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

