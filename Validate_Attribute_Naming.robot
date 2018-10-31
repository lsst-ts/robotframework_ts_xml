*** Settings ***
Documentation    Validate the subsystem XML attribute names are in lowerCamelCase.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
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

Validate AtDome Commands Attribute Names
	[Documentation]    Validate the AtDome Commands attribute names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Events Attribute Names
	[Documentation]    Validate the AtDome Events attribute names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Telemetry Attribute Names
	[Documentation]    Validate the AtDome Telemetry attribute names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHeaderService Commands Attribute Names
	[Documentation]    Validate the ATHeaderService Commands attribute names conform to naming convention.
	[Tags]    smoke    ATHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml |sed -e 's/\\n/,/g'
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
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Events Attribute Names
	[Documentation]    Validate the ATTCS Events attribute names conform to naming convention.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Telemetry Attribute Names
	[Documentation]    Validate the ATTCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Catchuparchiver Commands Attribute Names
	[Documentation]    Validate the Catchuparchiver Commands attribute names conform to naming convention.
	[Tags]    smoke    Catchuparchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Catchuparchiver Events Attribute Names
	[Documentation]    Validate the Catchuparchiver Events attribute names conform to naming convention.
	[Tags]    smoke    Catchuparchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Catchuparchiver Telemetry Attribute Names
	[Documentation]    Validate the Catchuparchiver Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Catchuparchiver    
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

Validate Dome Commands Attribute Names
	[Documentation]    Validate the Dome Commands attribute names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Events Attribute Names
	[Documentation]    Validate the Dome Events attribute names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Telemetry Attribute Names
	[Documentation]    Validate the Dome Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Commands Attribute Names
	[Documentation]    Validate the Domeadb Commands attribute names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Events Attribute Names
	[Documentation]    Validate the Domeadb Events attribute names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Telemetry Attribute Names
	[Documentation]    Validate the Domeadb Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Commands Attribute Names
	[Documentation]    Validate the Domeaps Commands attribute names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Events Attribute Names
	[Documentation]    Validate the Domeaps Events attribute names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Telemetry Attribute Names
	[Documentation]    Validate the Domeaps Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Commands Attribute Names
	[Documentation]    Validate the Domelouvers Commands attribute names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Events Attribute Names
	[Documentation]    Validate the Domelouvers Events attribute names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Telemetry Attribute Names
	[Documentation]    Validate the Domelouvers Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Commands Attribute Names
	[Documentation]    Validate the Domelws Commands attribute names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Events Attribute Names
	[Documentation]    Validate the Domelws Events attribute names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Telemetry Attribute Names
	[Documentation]    Validate the Domelws Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Commands Attribute Names
	[Documentation]    Validate the Domemoncs Commands attribute names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Events Attribute Names
	[Documentation]    Validate the Domemoncs Events attribute names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Telemetry Attribute Names
	[Documentation]    Validate the Domemoncs Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Commands Attribute Names
	[Documentation]    Validate the Domethcs Commands attribute names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Events Attribute Names
	[Documentation]    Validate the Domethcs Events attribute names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Telemetry Attribute Names
	[Documentation]    Validate the Domethcs Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Commands Attribute Names
	[Documentation]    Validate the EEC Commands attribute names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Events Attribute Names
	[Documentation]    Validate the EEC Events attribute names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Telemetry Attribute Names
	[Documentation]    Validate the EEC Telemetry attribute names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate Mtarchiver Commands Attribute Names
	[Documentation]    Validate the Mtarchiver Commands attribute names conform to naming convention.
	[Tags]    smoke    Mtarchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtarchiver Events Attribute Names
	[Documentation]    Validate the Mtarchiver Events attribute names conform to naming convention.
	[Tags]    smoke    Mtarchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtarchiver Telemetry Attribute Names
	[Documentation]    Validate the Mtarchiver Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Mtarchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Commands Attribute Names
	[Documentation]    Validate the Mtcamera Commands attribute names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Events Attribute Names
	[Documentation]    Validate the Mtcamera Events attribute names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Telemetry Attribute Names
	[Documentation]    Validate the Mtcamera Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTHeaderService Commands Attribute Names
	[Documentation]    Validate the MTHeaderService Commands attribute names conform to naming convention.
	[Tags]    smoke    MTHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Commands.xml |sed -e 's/\\n/,/g'
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

Validate MTM1M3 Commands Attribute Names
	[Documentation]    Validate the MTM1M3 Commands attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Events Attribute Names
	[Documentation]    Validate the MTM1M3 Events attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Telemetry Attribute Names
	[Documentation]    Validate the MTM1M3 Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate MTOFC Commands Attribute Names
	[Documentation]    Validate the MTOFC Commands attribute names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTOFC Events Attribute Names
	[Documentation]    Validate the MTOFC Events attribute names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTOFC Telemetry Attribute Names
	[Documentation]    Validate the MTOFC Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTWEP Events Attribute Names
	[Documentation]    Validate the MTWEP Events attribute names conform to naming convention.
	[Tags]    smoke    MTWEP    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTWEP Telemetry Attribute Names
	[Documentation]    Validate the MTWEP Telemetry attribute names conform to naming convention.
	[Tags]    smoke    MTWEP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Commands Attribute Names
	[Documentation]    Validate the OCS Commands attribute names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Events Attribute Names
	[Documentation]    Validate the OCS Events attribute names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Telemetry Attribute Names
	[Documentation]    Validate the OCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PromptProcessing Commands Attribute Names
	[Documentation]    Validate the PromptProcessing Commands attribute names conform to naming convention.
	[Tags]    smoke    PromptProcessing    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |sed -e 's/\\n/,/g'
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

Validate Sequencer Commands Attribute Names
	[Documentation]    Validate the Sequencer Commands attribute names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Events Attribute Names
	[Documentation]    Validate the Sequencer Events attribute names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Telemetry Attribute Names
	[Documentation]    Validate the Sequencer Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SummitFacility Commands Attribute Names
	[Documentation]    Validate the SummitFacility Commands attribute names conform to naming convention.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml |sed -e 's/\\n/,/g'
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

Validate TCS Commands Attribute Names
	[Documentation]    Validate the TCS Commands attribute names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Events Attribute Names
	[Documentation]    Validate the TCS Events attribute names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Telemetry Attribute Names
	[Documentation]    Validate the TCS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/TCS/TCS_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate VMS Commands Attribute Names
	[Documentation]    Validate the VMS Commands attribute names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Events Attribute Names
	[Documentation]    Validate the VMS Events attribute names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Telemetry Attribute Names
	[Documentation]    Validate the VMS Telemetry attribute names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/VMS/VMS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

