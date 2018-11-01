*** Settings ***
Documentation    Validate the subsystem XML topic and attribute names are in lowerCamelCase.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATArchiver Commands Topic Names
	[Documentation]    Validate the ATArchiver Commands topic names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATArchiver Events Topic Names
	[Documentation]    Validate the ATArchiver Events topic names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATArchiver Telemetry Topic Names
	[Documentation]    Validate the ATArchiver Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Commands Topic Names
	[Documentation]    Validate the ATCamera Commands topic names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Events Topic Names
	[Documentation]    Validate the ATCamera Events topic names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCamera Telemetry Topic Names
	[Documentation]    Validate the ATCamera Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Commands Topic Names
	[Documentation]    Validate the AtDome Commands topic names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Events Topic Names
	[Documentation]    Validate the AtDome Events topic names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Telemetry Topic Names
	[Documentation]    Validate the AtDome Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtDome    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATHeaderService Events Topic Names
	[Documentation]    Validate the ATHeaderService Events topic names conform to naming convention.
	[Tags]    smoke    ATHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Commands Topic Names
	[Documentation]    Validate the ATMCS Commands topic names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Events Topic Names
	[Documentation]    Validate the ATMCS Events topic names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMCS Telemetry Topic Names
	[Documentation]    Validate the ATMCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATMCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Commands Topic Names
	[Documentation]    Validate the ATMonochromator Commands topic names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Events Topic Names
	[Documentation]    Validate the ATMonochromator Events topic names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATMonochromator Telemetry Topic Names
	[Documentation]    Validate the ATMonochromator Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Commands Topic Names
	[Documentation]    Validate the ATPneumatics Commands topic names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Events Topic Names
	[Documentation]    Validate the ATPneumatics Events topic names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATPneumatics Telemetry Topic Names
	[Documentation]    Validate the ATPneumatics Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Commands Topic Names
	[Documentation]    Validate the ATSpectrograph Commands topic names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Events Topic Names
	[Documentation]    Validate the ATSpectrograph Events topic names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATSpectrograph Telemetry Topic Names
	[Documentation]    Validate the ATSpectrograph Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATSpectrograph    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Commands Topic Names
	[Documentation]    Validate the ATTCS Commands topic names conform to naming convention.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Events Topic Names
	[Documentation]    Validate the ATTCS Events topic names conform to naming convention.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATTCS Telemetry Topic Names
	[Documentation]    Validate the ATTCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Commands Topic Names
	[Documentation]    Validate the ATWhiteLight Commands topic names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Events Topic Names
	[Documentation]    Validate the ATWhiteLight Events topic names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATWhiteLight Telemetry Topic Names
	[Documentation]    Validate the ATWhiteLight Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CatchupArchiver Events Topic Names
	[Documentation]    Validate the CatchupArchiver Events topic names conform to naming convention.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CatchupArchiver Telemetry Topic Names
	[Documentation]    Validate the CatchupArchiver Telemetry topic names conform to naming convention.
	[Tags]    smoke    CatchupArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CBP Commands Topic Names
	[Documentation]    Validate the CBP Commands topic names conform to naming convention.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate CBP Telemetry Topic Names
	[Documentation]    Validate the CBP Telemetry topic names conform to naming convention.
	[Tags]    smoke    CBP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Commands Topic Names
	[Documentation]    Validate the Dome Commands topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Events Topic Names
	[Documentation]    Validate the Dome Events topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Telemetry Topic Names
	[Documentation]    Validate the Dome Telemetry topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Commands Topic Names
	[Documentation]    Validate the Domeadb Commands topic names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Events Topic Names
	[Documentation]    Validate the Domeadb Events topic names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeadb Telemetry Topic Names
	[Documentation]    Validate the Domeadb Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domeadb    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Commands Topic Names
	[Documentation]    Validate the Domeaps Commands topic names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Events Topic Names
	[Documentation]    Validate the Domeaps Events topic names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domeaps Telemetry Topic Names
	[Documentation]    Validate the Domeaps Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domeaps    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Commands Topic Names
	[Documentation]    Validate the Domelouvers Commands topic names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Events Topic Names
	[Documentation]    Validate the Domelouvers Events topic names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelouvers Telemetry Topic Names
	[Documentation]    Validate the Domelouvers Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domelouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Commands Topic Names
	[Documentation]    Validate the Domelws Commands topic names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Events Topic Names
	[Documentation]    Validate the Domelws Events topic names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domelws Telemetry Topic Names
	[Documentation]    Validate the Domelws Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domelws    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Commands Topic Names
	[Documentation]    Validate the Domemoncs Commands topic names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Events Topic Names
	[Documentation]    Validate the Domemoncs Events topic names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domemoncs Telemetry Topic Names
	[Documentation]    Validate the Domemoncs Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domemoncs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Commands Topic Names
	[Documentation]    Validate the Domethcs Commands topic names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Events Topic Names
	[Documentation]    Validate the Domethcs Events topic names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Domethcs Telemetry Topic Names
	[Documentation]    Validate the Domethcs Telemetry topic names conform to naming convention.
	[Tags]    smoke    Domethcs    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Commands Topic Names
	[Documentation]    Validate the EEC Commands topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Events Topic Names
	[Documentation]    Validate the EEC Events topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Telemetry Topic Names
	[Documentation]    Validate the EEC Telemetry topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/EEC/EEC_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Electrometer Commands Topic Names
	[Documentation]    Validate the Electrometer Commands topic names conform to naming convention.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Electrometer Events Topic Names
	[Documentation]    Validate the Electrometer Events topic names conform to naming convention.
	[Tags]    smoke    Electrometer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Commands Topic Names
	[Documentation]    Validate the Hexapod Commands topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Events Topic Names
	[Documentation]    Validate the Hexapod Events topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Telemetry Topic Names
	[Documentation]    Validate the Hexapod Telemetry topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Commands Topic Names
	[Documentation]    Validate the LinearStage Commands topic names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Events Topic Names
	[Documentation]    Validate the LinearStage Events topic names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate LinearStage Telemetry Topic Names
	[Documentation]    Validate the LinearStage Telemetry topic names conform to naming convention.
	[Tags]    smoke    LinearStage    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTArchiver Events Topic Names
	[Documentation]    Validate the MTArchiver Events topic names conform to naming convention.
	[Tags]    smoke    MTArchiver    TSS-3281
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTArchiver Telemetry Topic Names
	[Documentation]    Validate the MTArchiver Telemetry topic names conform to naming convention.
	[Tags]    smoke    MTArchiver    TSS-3281
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Commands Topic Names
	[Documentation]    Validate the Mtcamera Commands topic names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Events Topic Names
	[Documentation]    Validate the Mtcamera Events topic names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Mtcamera Telemetry Topic Names
	[Documentation]    Validate the Mtcamera Telemetry topic names conform to naming convention.
	[Tags]    smoke    Mtcamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTHeaderService Events Topic Names
	[Documentation]    Validate the MTHeaderService Events topic names conform to naming convention.
	[Tags]    smoke    MTHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Commands Topic Names
	[Documentation]    Validate the MTM1M3 Commands topic names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Events Topic Names
	[Documentation]    Validate the MTM1M3 Events topic names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTM1M3 Telemetry Topic Names
	[Documentation]    Validate the MTM1M3 Telemetry topic names conform to naming convention.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Commands Topic Names
	[Documentation]    Validate the MTMount Commands topic names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Events Topic Names
	[Documentation]    Validate the MTMount Events topic names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTMount Telemetry Topic Names
	[Documentation]    Validate the MTMount Telemetry topic names conform to naming convention.
	[Tags]    smoke    MTMount    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTOFC Commands Topic Names
	[Documentation]    Validate the MTOFC Commands topic names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTOFC Events Topic Names
	[Documentation]    Validate the MTOFC Events topic names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTOFC Telemetry Topic Names
	[Documentation]    Validate the MTOFC Telemetry topic names conform to naming convention.
	[Tags]    smoke    MTOFC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTWEP Events Topic Names
	[Documentation]    Validate the MTWEP Events topic names conform to naming convention.
	[Tags]    smoke    MTWEP    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MTWEP Telemetry Topic Names
	[Documentation]    Validate the MTWEP Telemetry topic names conform to naming convention.
	[Tags]    smoke    MTWEP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Commands Topic Names
	[Documentation]    Validate the OCS Commands topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Events Topic Names
	[Documentation]    Validate the OCS Events topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Telemetry Topic Names
	[Documentation]    Validate the OCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PromptProcessing Events Topic Names
	[Documentation]    Validate the PromptProcessing Events topic names conform to naming convention.
	[Tags]    smoke    PromptProcessing    TSS-3280
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate PromptProcessing Telemetry Topic Names
	[Documentation]    Validate the PromptProcessing Telemetry topic names conform to naming convention.
	[Tags]    smoke    PromptProcessing    TSS-3280
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Commands Topic Names
	[Documentation]    Validate the Rotator Commands topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Events Topic Names
	[Documentation]    Validate the Rotator Events topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Telemetry Topic Names
	[Documentation]    Validate the Rotator Telemetry topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Events Topic Names
	[Documentation]    Validate the Scheduler Events topic names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Telemetry Topic Names
	[Documentation]    Validate the Scheduler Telemetry topic names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Commands Topic Names
	[Documentation]    Validate the Sequencer Commands topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Events Topic Names
	[Documentation]    Validate the Sequencer Events topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Telemetry Topic Names
	[Documentation]    Validate the Sequencer Telemetry topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SummitFacility Events Topic Names
	[Documentation]    Validate the SummitFacility Events topic names conform to naming convention.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SummitFacility Telemetry Topic Names
	[Documentation]    Validate the SummitFacility Telemetry topic names conform to naming convention.
	[Tags]    smoke    SummitFacility    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Commands Topic Names
	[Documentation]    Validate the TCS Commands topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/TCS/TCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Events Topic Names
	[Documentation]    Validate the TCS Events topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Telemetry Topic Names
	[Documentation]    Validate the TCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/TCS/TCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Commands Topic Names
	[Documentation]    Validate the Test Commands topic names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Events Topic Names
	[Documentation]    Validate the Test Events topic names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Test Telemetry Topic Names
	[Documentation]    Validate the Test Telemetry topic names conform to naming convention.
	[Tags]    smoke    Test    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Commands Topic Names
	[Documentation]    Validate the TunableLaser Commands topic names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Events Topic Names
	[Documentation]    Validate the TunableLaser Events topic names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TunableLaser Telemetry Topic Names
	[Documentation]    Validate the TunableLaser Telemetry topic names conform to naming convention.
	[Tags]    smoke    TunableLaser    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Commands Topic Names
	[Documentation]    Validate the VMS Commands topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/VMS/VMS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Events Topic Names
	[Documentation]    Validate the VMS Events topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Telemetry Topic Names
	[Documentation]    Validate the VMS Telemetry topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/VMS/VMS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

