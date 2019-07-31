*** Settings ***
Documentation    Validate the subsystem XML attribute names are in lowerCamelCase.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands Attribute Names
	[Documentation]    Validate the ATAOS Commands attribute names conform to naming convention.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATAOS Events Attribute Names
	[Documentation]    Validate the ATAOS Events attribute names conform to naming convention.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATAOS Telemetry Attribute Names
	[Documentation]    Validate the ATAOS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATAOS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATArchiver Commands Attribute Names
	[Documentation]    Validate the ATArchiver Commands attribute names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATArchiver Events Attribute Names
	[Documentation]    Validate the ATArchiver Events attribute names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATArchiver Telemetry Attribute Names
	[Documentation]    Validate the ATArchiver Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATBuilding Events Attribute Names
	[Documentation]    Validate the ATBuilding Events attribute names conform to naming convention.
	[Tags]    smoke    ATBuilding    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATBuilding Telemetry Attribute Names
	[Documentation]    Validate the ATBuilding Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATBuilding    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Commands Attribute Names
	[Documentation]    Validate the ATCamera Commands attribute names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Events Attribute Names
	[Documentation]    Validate the ATCamera Events attribute names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Telemetry Attribute Names
	[Documentation]    Validate the ATCamera Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATDome Commands Attribute Names
	[Documentation]    Validate the ATDome Commands attribute names conform to naming convention.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATDome Events Attribute Names
	[Documentation]    Validate the ATDome Events attribute names conform to naming convention.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATDome Telemetry Attribute Names
	[Documentation]    Validate the ATDome Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATDome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATDomeTrajectory Events Attribute Names
	[Documentation]    Validate the ATDomeTrajectory Events attribute names conform to naming convention.
	[Tags]    smoke    ATDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHeaderService Events Attribute Names
	[Documentation]    Validate the ATHeaderService Events attribute names conform to naming convention.
	[Tags]    smoke    ATHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHexapod Commands Attribute Names
	[Documentation]    Validate the ATHexapod Commands attribute names conform to naming convention.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHexapod Events Attribute Names
	[Documentation]    Validate the ATHexapod Events attribute names conform to naming convention.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHexapod Telemetry Attribute Names
	[Documentation]    Validate the ATHexapod Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATHexapod    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Commands Attribute Names
	[Documentation]    Validate the ATMCS Commands attribute names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Events Attribute Names
	[Documentation]    Validate the ATMCS Events attribute names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Telemetry Attribute Names
	[Documentation]    Validate the ATMCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Commands Attribute Names
	[Documentation]    Validate the ATMonochromator Commands attribute names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Events Attribute Names
	[Documentation]    Validate the ATMonochromator Events attribute names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Telemetry Attribute Names
	[Documentation]    Validate the ATMonochromator Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Commands Attribute Names
	[Documentation]    Validate the ATPneumatics Commands attribute names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Events Attribute Names
	[Documentation]    Validate the ATPneumatics Events attribute names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Telemetry Attribute Names
	[Documentation]    Validate the ATPneumatics Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPtg Commands Attribute Names
	[Documentation]    Validate the ATPtg Commands attribute names conform to naming convention.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPtg Events Attribute Names
	[Documentation]    Validate the ATPtg Events attribute names conform to naming convention.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPtg Telemetry Attribute Names
	[Documentation]    Validate the ATPtg Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATPtg    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Commands Attribute Names
	[Documentation]    Validate the ATSpectrograph Commands attribute names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Events Attribute Names
	[Documentation]    Validate the ATSpectrograph Events attribute names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Telemetry Attribute Names
	[Documentation]    Validate the ATSpectrograph Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Commands Attribute Names
	[Documentation]    Validate the ATTCS Commands attribute names conform to naming convention.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Events Attribute Names
	[Documentation]    Validate the ATTCS Events attribute names conform to naming convention.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Telemetry Attribute Names
	[Documentation]    Validate the ATTCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATTCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Commands Attribute Names
	[Documentation]    Validate the ATWhiteLight Commands attribute names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Events Attribute Names
	[Documentation]    Validate the ATWhiteLight Events attribute names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Telemetry Attribute Names
	[Documentation]    Validate the ATWhiteLight Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CatchupArchiver Events Attribute Names
	[Documentation]    Validate the CatchupArchiver Events attribute names conform to naming convention.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CatchupArchiver Telemetry Attribute Names
	[Documentation]    Validate the CatchupArchiver Telemetry attribute names conform to naming convention.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CBP Commands Attribute Names
	[Documentation]    Validate the CBP Commands attribute names conform to naming convention.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CBP Telemetry Attribute Names
	[Documentation]    Validate the CBP Telemetry attribute names conform to naming convention.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DIMM Events Attribute Names
	[Documentation]    Validate the DIMM Events attribute names conform to naming convention.
	[Tags]    smoke    DIMM    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DIMM Telemetry Attribute Names
	[Documentation]    Validate the DIMM Telemetry attribute names conform to naming convention.
	[Tags]    smoke    DIMM    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Commands Attribute Names
	[Documentation]    Validate the Dome Commands attribute names conform to naming convention.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Events Attribute Names
	[Documentation]    Validate the Dome Events attribute names conform to naming convention.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Telemetry Attribute Names
	[Documentation]    Validate the Dome Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Dome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DSM Events Attribute Names
	[Documentation]    Validate the DSM Events attribute names conform to naming convention.
	[Tags]    smoke    DSM    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DSM Telemetry Attribute Names
	[Documentation]    Validate the DSM Telemetry attribute names conform to naming convention.
	[Tags]    smoke    DSM    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EAS Events Attribute Names
	[Documentation]    Validate the EAS Events attribute names conform to naming convention.
	[Tags]    smoke    EAS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EAS Telemetry Attribute Names
	[Documentation]    Validate the EAS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    EAS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFD Events Attribute Names
	[Documentation]    Validate the EFD Events attribute names conform to naming convention.
	[Tags]    smoke    EFD    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFD Telemetry Attribute Names
	[Documentation]    Validate the EFD Telemetry attribute names conform to naming convention.
	[Tags]    smoke    EFD    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFDTransformationServer Events Attribute Names
	[Documentation]    Validate the EFDTransformationServer Events attribute names conform to naming convention.
	[Tags]    smoke    EFDTransformationServer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFDTransformationServer Telemetry Attribute Names
	[Documentation]    Validate the EFDTransformationServer Telemetry attribute names conform to naming convention.
	[Tags]    smoke    EFDTransformationServer    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Electrometer Commands Attribute Names
	[Documentation]    Validate the Electrometer Commands attribute names conform to naming convention.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Electrometer Events Attribute Names
	[Documentation]    Validate the Electrometer Events attribute names conform to naming convention.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Environment Events Attribute Names
	[Documentation]    Validate the Environment Events attribute names conform to naming convention.
	[Tags]    smoke    Environment    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Environment Telemetry Attribute Names
	[Documentation]    Validate the Environment Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Environment    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate FiberSpectrograph Commands Attribute Names
	[Documentation]    Validate the FiberSpectrograph Commands attribute names conform to naming convention.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate FiberSpectrograph Events Attribute Names
	[Documentation]    Validate the FiberSpectrograph Events attribute names conform to naming convention.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate FiberSpectrograph Telemetry Attribute Names
	[Documentation]    Validate the FiberSpectrograph Telemetry attribute names conform to naming convention.
	[Tags]    smoke    FiberSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate GenericCamera Commands Attribute Names
	[Documentation]    Validate the GenericCamera Commands attribute names conform to naming convention.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate GenericCamera Events Attribute Names
	[Documentation]    Validate the GenericCamera Events attribute names conform to naming convention.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate GenericCamera Telemetry Attribute Names
	[Documentation]    Validate the GenericCamera Telemetry attribute names conform to naming convention.
	[Tags]    smoke    GenericCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate IOTA Events Attribute Names
	[Documentation]    Validate the IOTA Events attribute names conform to naming convention.
	[Tags]    smoke    IOTA    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate IOTA Telemetry Attribute Names
	[Documentation]    Validate the IOTA Telemetry attribute names conform to naming convention.
	[Tags]    smoke    IOTA    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Commands Attribute Names
	[Documentation]    Validate the Hexapod Commands attribute names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Events Attribute Names
	[Documentation]    Validate the Hexapod Events attribute names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Telemetry Attribute Names
	[Documentation]    Validate the Hexapod Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate HVAC Commands Attribute Names
	[Documentation]    Validate the HVAC Commands attribute names conform to naming convention.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate HVAC Events Attribute Names
	[Documentation]    Validate the HVAC Events attribute names conform to naming convention.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate HVAC Telemetry Attribute Names
	[Documentation]    Validate the HVAC Telemetry attribute names conform to naming convention.
	[Tags]    smoke    HVAC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Commands Attribute Names
	[Documentation]    Validate the LinearStage Commands attribute names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Events Attribute Names
	[Documentation]    Validate the LinearStage Events attribute names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Telemetry Attribute Names
	[Documentation]    Validate the LinearStage Telemetry attribute names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTAOS Commands Attribute Names
	[Documentation]    Validate the MTAOS Commands attribute names conform to naming convention.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTAOS Events Attribute Names
	[Documentation]    Validate the MTAOS Events attribute names conform to naming convention.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTAOS Telemetry Attribute Names
	[Documentation]    Validate the MTAOS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTAOS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTArchiver Events Attribute Names
	[Documentation]    Validate the MTArchiver Events attribute names conform to naming convention.
	[Tags]    smoke    MTArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTArchiver Telemetry Attribute Names
	[Documentation]    Validate the MTArchiver Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTCamera Commands Attribute Names
	[Documentation]    Validate the MTCamera Commands attribute names conform to naming convention.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTCamera Events Attribute Names
	[Documentation]    Validate the MTCamera Events attribute names conform to naming convention.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTCamera Telemetry Attribute Names
	[Documentation]    Validate the MTCamera Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTDomeTrajectory Events Attribute Names
	[Documentation]    Validate the MTDomeTrajectory Events attribute names conform to naming convention.
	[Tags]    smoke    MTDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTDomeTrajectory Telemetry Attribute Names
	[Documentation]    Validate the MTDomeTrajectory Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTDomeTrajectory    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTEEC Commands Attribute Names
	[Documentation]    Validate the MTEEC Commands attribute names conform to naming convention.
	[Tags]    smoke    MTEEC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTEEC Events Attribute Names
	[Documentation]    Validate the MTEEC Events attribute names conform to naming convention.
	[Tags]    smoke    MTEEC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTGuider Events Attribute Names
	[Documentation]    Validate the MTGuider Events attribute names conform to naming convention.
	[Tags]    smoke    MTGuider    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTGuider Telemetry Attribute Names
	[Documentation]    Validate the MTGuider Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTGuider    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTHeaderService Events Attribute Names
	[Documentation]    Validate the MTHeaderService Events attribute names conform to naming convention.
	[Tags]    smoke    MTHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTLaserTracker Events Attribute Names
	[Documentation]    Validate the MTLaserTracker Events attribute names conform to naming convention.
	[Tags]    smoke    MTLaserTracker    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTLaserTracker Telemetry Attribute Names
	[Documentation]    Validate the MTLaserTracker Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTLaserTracker    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Commands Attribute Names
	[Documentation]    Validate the MTM1M3 Commands attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Events Attribute Names
	[Documentation]    Validate the MTM1M3 Events attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Telemetry Attribute Names
	[Documentation]    Validate the MTM1M3 Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3TS Commands Attribute Names
	[Documentation]    Validate the MTM1M3TS Commands attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3TS Events Attribute Names
	[Documentation]    Validate the MTM1M3TS Events attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3TS Telemetry Attribute Names
	[Documentation]    Validate the MTM1M3TS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3TS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM2 Commands Attribute Names
	[Documentation]    Validate the MTM2 Commands attribute names conform to naming convention.
	[Tags]    smoke    MTM2    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM2 Events Attribute Names
	[Documentation]    Validate the MTM2 Events attribute names conform to naming convention.
	[Tags]    smoke    MTM2    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM2 Telemetry Attribute Names
	[Documentation]    Validate the MTM2 Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTM2    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Commands Attribute Names
	[Documentation]    Validate the MTMount Commands attribute names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Events Attribute Names
	[Documentation]    Validate the MTMount Events attribute names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Telemetry Attribute Names
	[Documentation]    Validate the MTMount Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTPtg Commands Attribute Names
	[Documentation]    Validate the MTPtg Commands attribute names conform to naming convention.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTPtg Events Attribute Names
	[Documentation]    Validate the MTPtg Events attribute names conform to naming convention.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTPtg Telemetry Attribute Names
	[Documentation]    Validate the MTPtg Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTPtg    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTTCS Commands Attribute Names
	[Documentation]    Validate the MTTCS Commands attribute names conform to naming convention.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTTCS Events Attribute Names
	[Documentation]    Validate the MTTCS Events attribute names conform to naming convention.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTTCS Telemetry Attribute Names
	[Documentation]    Validate the MTTCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTTCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTVMS Commands Attribute Names
	[Documentation]    Validate the MTVMS Commands attribute names conform to naming convention.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTVMS Events Attribute Names
	[Documentation]    Validate the MTVMS Events attribute names conform to naming convention.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTVMS Telemetry Attribute Names
	[Documentation]    Validate the MTVMS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTVMS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Commands Attribute Names
	[Documentation]    Validate the OCS Commands attribute names conform to naming convention.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Events Attribute Names
	[Documentation]    Validate the OCS Events attribute names conform to naming convention.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Telemetry Attribute Names
	[Documentation]    Validate the OCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    OCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PointingComponent Commands Attribute Names
	[Documentation]    Validate the PointingComponent Commands attribute names conform to naming convention.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PointingComponent Events Attribute Names
	[Documentation]    Validate the PointingComponent Events attribute names conform to naming convention.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PointingComponent Telemetry Attribute Names
	[Documentation]    Validate the PointingComponent Telemetry attribute names conform to naming convention.
	[Tags]    smoke    PointingComponent    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PromptProcessing Events Attribute Names
	[Documentation]    Validate the PromptProcessing Events attribute names conform to naming convention.
	[Tags]    smoke    PromptProcessing    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PromptProcessing Telemetry Attribute Names
	[Documentation]    Validate the PromptProcessing Telemetry attribute names conform to naming convention.
	[Tags]    smoke    PromptProcessing    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Commands Attribute Names
	[Documentation]    Validate the Rotator Commands attribute names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Events Attribute Names
	[Documentation]    Validate the Rotator Events attribute names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Telemetry Attribute Names
	[Documentation]    Validate the Rotator Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Events Attribute Names
	[Documentation]    Validate the Scheduler Events attribute names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Telemetry Attribute Names
	[Documentation]    Validate the Scheduler Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Script Commands Attribute Names
	[Documentation]    Validate the Script Commands attribute names conform to naming convention.
	[Tags]    smoke    Script    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Script Events Attribute Names
	[Documentation]    Validate the Script Events attribute names conform to naming convention.
	[Tags]    smoke    Script    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ScriptQueue Commands Attribute Names
	[Documentation]    Validate the ScriptQueue Commands attribute names conform to naming convention.
	[Tags]    smoke    ScriptQueue    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ScriptQueue Events Attribute Names
	[Documentation]    Validate the ScriptQueue Events attribute names conform to naming convention.
	[Tags]    smoke    ScriptQueue    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SummitFacility Events Attribute Names
	[Documentation]    Validate the SummitFacility Events attribute names conform to naming convention.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SummitFacility Telemetry Attribute Names
	[Documentation]    Validate the SummitFacility Telemetry attribute names conform to naming convention.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Commands Attribute Names
	[Documentation]    Validate the Test Commands attribute names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Events Attribute Names
	[Documentation]    Validate the Test Events attribute names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Telemetry Attribute Names
	[Documentation]    Validate the Test Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Commands Attribute Names
	[Documentation]    Validate the TunableLaser Commands attribute names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Events Attribute Names
	[Documentation]    Validate the TunableLaser Events attribute names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Telemetry Attribute Names
	[Documentation]    Validate the TunableLaser Telemetry attribute names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Watcher Commands Attribute Names
	[Documentation]    Validate the Watcher Commands attribute names conform to naming convention.
	[Tags]    smoke    Watcher    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Watcher Events Attribute Names
	[Documentation]    Validate the Watcher Events attribute names conform to naming convention.
	[Tags]    smoke    Watcher    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

