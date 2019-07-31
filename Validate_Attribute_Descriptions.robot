*** Settings ***
Documentation    Validate the subsystem XML attribute descriptions are populated.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands Attribute Descriptions
	[Documentation]    Validate the ATAOS Commands attribute descriptions are populated.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATAOS Events Attribute Descriptions
	[Documentation]    Validate the ATAOS Events attribute descriptions are populated.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATAOS Telemetry Attribute Descriptions
	[Documentation]    Validate the ATAOS Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATArchiver Commands Attribute Descriptions
	[Documentation]    Validate the ATArchiver Commands attribute descriptions are populated.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATArchiver Events Attribute Descriptions
	[Documentation]    Validate the ATArchiver Events attribute descriptions are populated.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATArchiver Telemetry Attribute Descriptions
	[Documentation]    Validate the ATArchiver Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATBuilding Events Attribute Descriptions
	[Documentation]    Validate the ATBuilding Events attribute descriptions are populated.
	[Tags]    smoke    ATBuilding    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATBuilding Telemetry Attribute Descriptions
	[Documentation]    Validate the ATBuilding Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATBuilding    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATCamera Commands Attribute Descriptions
	[Documentation]    Validate the ATCamera Commands attribute descriptions are populated.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATCamera Events Attribute Descriptions
	[Documentation]    Validate the ATCamera Events attribute descriptions are populated.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATCamera Telemetry Attribute Descriptions
	[Documentation]    Validate the ATCamera Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATDome Commands Attribute Descriptions
	[Documentation]    Validate the ATDome Commands attribute descriptions are populated.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATDome Events Attribute Descriptions
	[Documentation]    Validate the ATDome Events attribute descriptions are populated.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATDome Telemetry Attribute Descriptions
	[Documentation]    Validate the ATDome Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATDomeTrajectory Events Attribute Descriptions
	[Documentation]    Validate the ATDomeTrajectory Events attribute descriptions are populated.
	[Tags]    smoke    ATDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATHeaderService Events Attribute Descriptions
	[Documentation]    Validate the ATHeaderService Events attribute descriptions are populated.
	[Tags]    smoke    ATHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATHexapod Commands Attribute Descriptions
	[Documentation]    Validate the ATHexapod Commands attribute descriptions are populated.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATHexapod Events Attribute Descriptions
	[Documentation]    Validate the ATHexapod Events attribute descriptions are populated.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATHexapod Telemetry Attribute Descriptions
	[Documentation]    Validate the ATHexapod Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMCS Commands Attribute Descriptions
	[Documentation]    Validate the ATMCS Commands attribute descriptions are populated.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMCS Events Attribute Descriptions
	[Documentation]    Validate the ATMCS Events attribute descriptions are populated.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMCS Telemetry Attribute Descriptions
	[Documentation]    Validate the ATMCS Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMonochromator Commands Attribute Descriptions
	[Documentation]    Validate the ATMonochromator Commands attribute descriptions are populated.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMonochromator Events Attribute Descriptions
	[Documentation]    Validate the ATMonochromator Events attribute descriptions are populated.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATMonochromator Telemetry Attribute Descriptions
	[Documentation]    Validate the ATMonochromator Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPneumatics Commands Attribute Descriptions
	[Documentation]    Validate the ATPneumatics Commands attribute descriptions are populated.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPneumatics Events Attribute Descriptions
	[Documentation]    Validate the ATPneumatics Events attribute descriptions are populated.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPneumatics Telemetry Attribute Descriptions
	[Documentation]    Validate the ATPneumatics Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPtg Commands Attribute Descriptions
	[Documentation]    Validate the ATPtg Commands attribute descriptions are populated.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPtg Events Attribute Descriptions
	[Documentation]    Validate the ATPtg Events attribute descriptions are populated.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATPtg Telemetry Attribute Descriptions
	[Documentation]    Validate the ATPtg Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATSpectrograph Commands Attribute Descriptions
	[Documentation]    Validate the ATSpectrograph Commands attribute descriptions are populated.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATSpectrograph Events Attribute Descriptions
	[Documentation]    Validate the ATSpectrograph Events attribute descriptions are populated.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATSpectrograph Telemetry Attribute Descriptions
	[Documentation]    Validate the ATSpectrograph Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATTCS Commands Attribute Descriptions
	[Documentation]    Validate the ATTCS Commands attribute descriptions are populated.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATTCS Events Attribute Descriptions
	[Documentation]    Validate the ATTCS Events attribute descriptions are populated.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATTCS Telemetry Attribute Descriptions
	[Documentation]    Validate the ATTCS Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATWhiteLight Commands Attribute Descriptions
	[Documentation]    Validate the ATWhiteLight Commands attribute descriptions are populated.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATWhiteLight Events Attribute Descriptions
	[Documentation]    Validate the ATWhiteLight Events attribute descriptions are populated.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ATWhiteLight Telemetry Attribute Descriptions
	[Documentation]    Validate the ATWhiteLight Telemetry attribute descriptions are populated.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate CatchupArchiver Events Attribute Descriptions
	[Documentation]    Validate the CatchupArchiver Events attribute descriptions are populated.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate CatchupArchiver Telemetry Attribute Descriptions
	[Documentation]    Validate the CatchupArchiver Telemetry attribute descriptions are populated.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate CBP Commands Attribute Descriptions
	[Documentation]    Validate the CBP Commands attribute descriptions are populated.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate CBP Telemetry Attribute Descriptions
	[Documentation]    Validate the CBP Telemetry attribute descriptions are populated.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate DIMM Events Attribute Descriptions
	[Documentation]    Validate the DIMM Events attribute descriptions are populated.
	[Tags]    smoke    DIMM    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate DIMM Telemetry Attribute Descriptions
	[Documentation]    Validate the DIMM Telemetry attribute descriptions are populated.
	[Tags]    smoke    DIMM    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Dome Commands Attribute Descriptions
	[Documentation]    Validate the Dome Commands attribute descriptions are populated.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Dome Events Attribute Descriptions
	[Documentation]    Validate the Dome Events attribute descriptions are populated.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Dome Telemetry Attribute Descriptions
	[Documentation]    Validate the Dome Telemetry attribute descriptions are populated.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate DSM Events Attribute Descriptions
	[Documentation]    Validate the DSM Events attribute descriptions are populated.
	[Tags]    smoke    DSM    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate DSM Telemetry Attribute Descriptions
	[Documentation]    Validate the DSM Telemetry attribute descriptions are populated.
	[Tags]    smoke    DSM    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EAS Events Attribute Descriptions
	[Documentation]    Validate the EAS Events attribute descriptions are populated.
	[Tags]    smoke    EAS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EAS Telemetry Attribute Descriptions
	[Documentation]    Validate the EAS Telemetry attribute descriptions are populated.
	[Tags]    smoke    EAS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EFD Events Attribute Descriptions
	[Documentation]    Validate the EFD Events attribute descriptions are populated.
	[Tags]    smoke    EFD    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EFD Telemetry Attribute Descriptions
	[Documentation]    Validate the EFD Telemetry attribute descriptions are populated.
	[Tags]    smoke    EFD    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EFDTransformationServer Events Attribute Descriptions
	[Documentation]    Validate the EFDTransformationServer Events attribute descriptions are populated.
	[Tags]    smoke    EFDTransformationServer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate EFDTransformationServer Telemetry Attribute Descriptions
	[Documentation]    Validate the EFDTransformationServer Telemetry attribute descriptions are populated.
	[Tags]    smoke    EFDTransformationServer    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Electrometer Commands Attribute Descriptions
	[Documentation]    Validate the Electrometer Commands attribute descriptions are populated.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Electrometer Events Attribute Descriptions
	[Documentation]    Validate the Electrometer Events attribute descriptions are populated.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Environment Events Attribute Descriptions
	[Documentation]    Validate the Environment Events attribute descriptions are populated.
	[Tags]    smoke    Environment    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Environment Telemetry Attribute Descriptions
	[Documentation]    Validate the Environment Telemetry attribute descriptions are populated.
	[Tags]    smoke    Environment    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate FiberSpectrograph Commands Attribute Descriptions
	[Documentation]    Validate the FiberSpectrograph Commands attribute descriptions are populated.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate FiberSpectrograph Events Attribute Descriptions
	[Documentation]    Validate the FiberSpectrograph Events attribute descriptions are populated.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate FiberSpectrograph Telemetry Attribute Descriptions
	[Documentation]    Validate the FiberSpectrograph Telemetry attribute descriptions are populated.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate GenericCamera Commands Attribute Descriptions
	[Documentation]    Validate the GenericCamera Commands attribute descriptions are populated.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate GenericCamera Events Attribute Descriptions
	[Documentation]    Validate the GenericCamera Events attribute descriptions are populated.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate GenericCamera Telemetry Attribute Descriptions
	[Documentation]    Validate the GenericCamera Telemetry attribute descriptions are populated.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate IOTA Events Attribute Descriptions
	[Documentation]    Validate the IOTA Events attribute descriptions are populated.
	[Tags]    smoke    IOTA    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate IOTA Telemetry Attribute Descriptions
	[Documentation]    Validate the IOTA Telemetry attribute descriptions are populated.
	[Tags]    smoke    IOTA    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Hexapod Commands Attribute Descriptions
	[Documentation]    Validate the Hexapod Commands attribute descriptions are populated.
	[Tags]    smoke    Hexapod    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Hexapod Events Attribute Descriptions
	[Documentation]    Validate the Hexapod Events attribute descriptions are populated.
	[Tags]    smoke    Hexapod    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Hexapod Telemetry Attribute Descriptions
	[Documentation]    Validate the Hexapod Telemetry attribute descriptions are populated.
	[Tags]    smoke    Hexapod    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate HVAC Commands Attribute Descriptions
	[Documentation]    Validate the HVAC Commands attribute descriptions are populated.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate HVAC Events Attribute Descriptions
	[Documentation]    Validate the HVAC Events attribute descriptions are populated.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate HVAC Telemetry Attribute Descriptions
	[Documentation]    Validate the HVAC Telemetry attribute descriptions are populated.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate LinearStage Commands Attribute Descriptions
	[Documentation]    Validate the LinearStage Commands attribute descriptions are populated.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate LinearStage Events Attribute Descriptions
	[Documentation]    Validate the LinearStage Events attribute descriptions are populated.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate LinearStage Telemetry Attribute Descriptions
	[Documentation]    Validate the LinearStage Telemetry attribute descriptions are populated.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTAOS Commands Attribute Descriptions
	[Documentation]    Validate the MTAOS Commands attribute descriptions are populated.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTAOS Events Attribute Descriptions
	[Documentation]    Validate the MTAOS Events attribute descriptions are populated.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTAOS Telemetry Attribute Descriptions
	[Documentation]    Validate the MTAOS Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTArchiver Events Attribute Descriptions
	[Documentation]    Validate the MTArchiver Events attribute descriptions are populated.
	[Tags]    smoke    MTArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTArchiver Telemetry Attribute Descriptions
	[Documentation]    Validate the MTArchiver Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTCamera Commands Attribute Descriptions
	[Documentation]    Validate the MTCamera Commands attribute descriptions are populated.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTCamera Events Attribute Descriptions
	[Documentation]    Validate the MTCamera Events attribute descriptions are populated.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTCamera Telemetry Attribute Descriptions
	[Documentation]    Validate the MTCamera Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTDomeTrajectory Events Attribute Descriptions
	[Documentation]    Validate the MTDomeTrajectory Events attribute descriptions are populated.
	[Tags]    smoke    MTDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTDomeTrajectory Telemetry Attribute Descriptions
	[Documentation]    Validate the MTDomeTrajectory Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTEEC Commands Attribute Descriptions
	[Documentation]    Validate the MTEEC Commands attribute descriptions are populated.
	[Tags]    smoke    MTEEC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTEEC Events Attribute Descriptions
	[Documentation]    Validate the MTEEC Events attribute descriptions are populated.
	[Tags]    smoke    MTEEC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTGuider Events Attribute Descriptions
	[Documentation]    Validate the MTGuider Events attribute descriptions are populated.
	[Tags]    smoke    MTGuider    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTGuider Telemetry Attribute Descriptions
	[Documentation]    Validate the MTGuider Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTGuider    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTHeaderService Events Attribute Descriptions
	[Documentation]    Validate the MTHeaderService Events attribute descriptions are populated.
	[Tags]    smoke    MTHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTLaserTracker Events Attribute Descriptions
	[Documentation]    Validate the MTLaserTracker Events attribute descriptions are populated.
	[Tags]    smoke    MTLaserTracker    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTLaserTracker Telemetry Attribute Descriptions
	[Documentation]    Validate the MTLaserTracker Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTLaserTracker    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3 Commands Attribute Descriptions
	[Documentation]    Validate the MTM1M3 Commands attribute descriptions are populated.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3 Events Attribute Descriptions
	[Documentation]    Validate the MTM1M3 Events attribute descriptions are populated.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3 Telemetry Attribute Descriptions
	[Documentation]    Validate the MTM1M3 Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3TS Commands Attribute Descriptions
	[Documentation]    Validate the MTM1M3TS Commands attribute descriptions are populated.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3TS Events Attribute Descriptions
	[Documentation]    Validate the MTM1M3TS Events attribute descriptions are populated.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM1M3TS Telemetry Attribute Descriptions
	[Documentation]    Validate the MTM1M3TS Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM2 Commands Attribute Descriptions
	[Documentation]    Validate the MTM2 Commands attribute descriptions are populated.
	[Tags]    smoke    MTM2    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM2 Events Attribute Descriptions
	[Documentation]    Validate the MTM2 Events attribute descriptions are populated.
	[Tags]    smoke    MTM2    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTM2 Telemetry Attribute Descriptions
	[Documentation]    Validate the MTM2 Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTM2    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTMount Commands Attribute Descriptions
	[Documentation]    Validate the MTMount Commands attribute descriptions are populated.
	[Tags]    smoke    MTMount    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTMount Events Attribute Descriptions
	[Documentation]    Validate the MTMount Events attribute descriptions are populated.
	[Tags]    smoke    MTMount    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTMount Telemetry Attribute Descriptions
	[Documentation]    Validate the MTMount Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTMount    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTPtg Commands Attribute Descriptions
	[Documentation]    Validate the MTPtg Commands attribute descriptions are populated.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTPtg Events Attribute Descriptions
	[Documentation]    Validate the MTPtg Events attribute descriptions are populated.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTPtg Telemetry Attribute Descriptions
	[Documentation]    Validate the MTPtg Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTTCS Commands Attribute Descriptions
	[Documentation]    Validate the MTTCS Commands attribute descriptions are populated.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTTCS Events Attribute Descriptions
	[Documentation]    Validate the MTTCS Events attribute descriptions are populated.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTTCS Telemetry Attribute Descriptions
	[Documentation]    Validate the MTTCS Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTVMS Commands Attribute Descriptions
	[Documentation]    Validate the MTVMS Commands attribute descriptions are populated.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTVMS Events Attribute Descriptions
	[Documentation]    Validate the MTVMS Events attribute descriptions are populated.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate MTVMS Telemetry Attribute Descriptions
	[Documentation]    Validate the MTVMS Telemetry attribute descriptions are populated.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate OCS Commands Attribute Descriptions
	[Documentation]    Validate the OCS Commands attribute descriptions are populated.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate OCS Events Attribute Descriptions
	[Documentation]    Validate the OCS Events attribute descriptions are populated.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate OCS Telemetry Attribute Descriptions
	[Documentation]    Validate the OCS Telemetry attribute descriptions are populated.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate PointingComponent Commands Attribute Descriptions
	[Documentation]    Validate the PointingComponent Commands attribute descriptions are populated.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate PointingComponent Events Attribute Descriptions
	[Documentation]    Validate the PointingComponent Events attribute descriptions are populated.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate PointingComponent Telemetry Attribute Descriptions
	[Documentation]    Validate the PointingComponent Telemetry attribute descriptions are populated.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate PromptProcessing Events Attribute Descriptions
	[Documentation]    Validate the PromptProcessing Events attribute descriptions are populated.
	[Tags]    smoke    PromptProcessing    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate PromptProcessing Telemetry Attribute Descriptions
	[Documentation]    Validate the PromptProcessing Telemetry attribute descriptions are populated.
	[Tags]    smoke    PromptProcessing    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Rotator Commands Attribute Descriptions
	[Documentation]    Validate the Rotator Commands attribute descriptions are populated.
	[Tags]    smoke    Rotator    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Rotator Events Attribute Descriptions
	[Documentation]    Validate the Rotator Events attribute descriptions are populated.
	[Tags]    smoke    Rotator    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Rotator Telemetry Attribute Descriptions
	[Documentation]    Validate the Rotator Telemetry attribute descriptions are populated.
	[Tags]    smoke    Rotator    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Scheduler Events Attribute Descriptions
	[Documentation]    Validate the Scheduler Events attribute descriptions are populated.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Scheduler Telemetry Attribute Descriptions
	[Documentation]    Validate the Scheduler Telemetry attribute descriptions are populated.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Script Commands Attribute Descriptions
	[Documentation]    Validate the Script Commands attribute descriptions are populated.
	[Tags]    smoke    Script    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Script Events Attribute Descriptions
	[Documentation]    Validate the Script Events attribute descriptions are populated.
	[Tags]    smoke    Script    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ScriptQueue Commands Attribute Descriptions
	[Documentation]    Validate the ScriptQueue Commands attribute descriptions are populated.
	[Tags]    smoke    ScriptQueue    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate ScriptQueue Events Attribute Descriptions
	[Documentation]    Validate the ScriptQueue Events attribute descriptions are populated.
	[Tags]    smoke    ScriptQueue    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate SummitFacility Events Attribute Descriptions
	[Documentation]    Validate the SummitFacility Events attribute descriptions are populated.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate SummitFacility Telemetry Attribute Descriptions
	[Documentation]    Validate the SummitFacility Telemetry attribute descriptions are populated.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Test Commands Attribute Descriptions
	[Documentation]    Validate the Test Commands attribute descriptions are populated.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Test Events Attribute Descriptions
	[Documentation]    Validate the Test Events attribute descriptions are populated.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Test Telemetry Attribute Descriptions
	[Documentation]    Validate the Test Telemetry attribute descriptions are populated.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate TunableLaser Commands Attribute Descriptions
	[Documentation]    Validate the TunableLaser Commands attribute descriptions are populated.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate TunableLaser Events Attribute Descriptions
	[Documentation]    Validate the TunableLaser Events attribute descriptions are populated.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate TunableLaser Telemetry Attribute Descriptions
	[Documentation]    Validate the TunableLaser Telemetry attribute descriptions are populated.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Description" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Watcher Commands Attribute Descriptions
	[Documentation]    Validate the Watcher Commands attribute descriptions are populated.
	[Tags]    smoke    Watcher    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Description" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

Validate Watcher Events Attribute Descriptions
	[Documentation]    Validate the Watcher Events attribute descriptions are populated.
	[Tags]    smoke    Watcher    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Description" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |sed -e 's/^[ \t]*//' -e ':a' -e 'N' -e '$!ba' -e 's/\\n/|/g'
	Log    ${output}
	Should Not Contain    ${output}    ||    msg=Contains unpopulated descriptions.    values=False
	Should Not Start With    ${output}    |    msg=Contains unpopulated descriptions.    values=False

