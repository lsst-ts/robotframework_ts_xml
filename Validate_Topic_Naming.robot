*** Settings ***
Documentation    Validate the subsystem XML topic and attribute names are in lowerCamelCase.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands Topic Names
	[Documentation]    Validate the Archiver Commands topic names conform to naming convention.
	[Tags]    smoke    Archiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Archiver Events Topic Names
	[Documentation]    Validate the Archiver Events topic names conform to naming convention.
	[Tags]    smoke    Archiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Archiver Telemetry Topic Names
	[Documentation]    Validate the Archiver Telemetry topic names conform to naming convention.
	[Tags]    smoke    Archiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtArchiver Commands Topic Names
	[Documentation]    Validate the AtArchiver Commands topic names conform to naming convention.
	[Tags]    smoke    AtArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtArchiver Events Topic Names
	[Documentation]    Validate the AtArchiver Events topic names conform to naming convention.
	[Tags]    smoke    AtArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtArchiver Telemetry Topic Names
	[Documentation]    Validate the AtArchiver Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtArchiver    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Commands Topic Names
	[Documentation]    Validate the AtDome Commands topic names conform to naming convention.
	[Tags]    smoke    AtDome    TSS-3059
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Events Topic Names
	[Documentation]    Validate the AtDome Events topic names conform to naming convention.
	[Tags]    smoke    AtDome    TSS-3059
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtDome Telemetry Topic Names
	[Documentation]    Validate the AtDome Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtDome    TSS-3059
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtHeaderService Commands Topic Names
	[Documentation]    Validate the AtHeaderService Commands topic names conform to naming convention.
	[Tags]    smoke    AtHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtHeaderService Events Topic Names
	[Documentation]    Validate the AtHeaderService Events topic names conform to naming convention.
	[Tags]    smoke    AtHeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMCS Commands Topic Names
	[Documentation]    Validate the AtMCS Commands topic names conform to naming convention.
	[Tags]    smoke    AtMCS    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMCS Events Topic Names
	[Documentation]    Validate the AtMCS Events topic names conform to naming convention.
	[Tags]    smoke    AtMCS    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMCS Telemetry Topic Names
	[Documentation]    Validate the AtMCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtMCS    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMonochromator Commands Topic Names
	[Documentation]    Validate the AtMonochromator Commands topic names conform to naming convention.
	[Tags]    smoke    AtMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMonochromator Events Topic Names
	[Documentation]    Validate the AtMonochromator Events topic names conform to naming convention.
	[Tags]    smoke    AtMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtMonochromator Telemetry Topic Names
	[Documentation]    Validate the AtMonochromator Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtMonochromator    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtPneumatics Commands Topic Names
	[Documentation]    Validate the AtPneumatics Commands topic names conform to naming convention.
	[Tags]    smoke    AtPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtPneumatics Events Topic Names
	[Documentation]    Validate the AtPneumatics Events topic names conform to naming convention.
	[Tags]    smoke    AtPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtPneumatics Telemetry Topic Names
	[Documentation]    Validate the AtPneumatics Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtPneumatics    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtScheduler Events Topic Names
	[Documentation]    Validate the AtScheduler Events topic names conform to naming convention.
	[Tags]    smoke    AtScheduler    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtScheduler Telemetry Topic Names
	[Documentation]    Validate the AtScheduler Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtScheduler    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtWhiteLight Commands Topic Names
	[Documentation]    Validate the AtWhiteLight Commands topic names conform to naming convention.
	[Tags]    smoke    AtWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtWhiteLight Events Topic Names
	[Documentation]    Validate the AtWhiteLight Events topic names conform to naming convention.
	[Tags]    smoke    AtWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtWhiteLight Telemetry Topic Names
	[Documentation]    Validate the AtWhiteLight Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtWhiteLight    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtCamera Commands Topic Names
	[Documentation]    Validate the AtCamera Commands topic names conform to naming convention.
	[Tags]    smoke    AtCamera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtCamera Events Topic Names
	[Documentation]    Validate the AtCamera Events topic names conform to naming convention.
	[Tags]    smoke    AtCamera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate AtCamera Telemetry Topic Names
	[Documentation]    Validate the AtCamera Telemetry topic names conform to naming convention.
	[Tags]    smoke    AtCamera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCS Commands Topic Names
	[Documentation]    Validate the ATCS Commands topic names conform to naming convention.
	[Tags]    smoke    ATCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCS Events Topic Names
	[Documentation]    Validate the ATCS Events topic names conform to naming convention.
	[Tags]    smoke    ATCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ATCS Telemetry Topic Names
	[Documentation]    Validate the ATCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    ATCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Camera Commands Topic Names
	[Documentation]    Validate the Camera Commands topic names conform to naming convention.
	[Tags]    smoke    Camera    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Camera Events Topic Names
	[Documentation]    Validate the Camera Events topic names conform to naming convention.
	[Tags]    smoke    Camera    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Camera Telemetry Topic Names
	[Documentation]    Validate the Camera Telemetry topic names conform to naming convention.
	[Tags]    smoke    Camera    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Cbp Commands Topic Names
	[Documentation]    Validate the Cbp Commands topic names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Cbp Events Topic Names
	[Documentation]    Validate the Cbp Events topic names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Cbp Telemetry Topic Names
	[Documentation]    Validate the Cbp Telemetry topic names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Commands Topic Names
	[Documentation]    Validate the Dome Commands topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Events Topic Names
	[Documentation]    Validate the Dome Events topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Dome Telemetry Topic Names
	[Documentation]    Validate the Dome Telemetry topic names conform to naming convention.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeADB Commands Topic Names
	[Documentation]    Validate the DomeADB Commands topic names conform to naming convention.
	[Tags]    smoke    DomeADB    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeADB Events Topic Names
	[Documentation]    Validate the DomeADB Events topic names conform to naming convention.
	[Tags]    smoke    DomeADB    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeADB Telemetry Topic Names
	[Documentation]    Validate the DomeADB Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeADB    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeAPS Commands Topic Names
	[Documentation]    Validate the DomeAPS Commands topic names conform to naming convention.
	[Tags]    smoke    DomeAPS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeAPS Events Topic Names
	[Documentation]    Validate the DomeAPS Events topic names conform to naming convention.
	[Tags]    smoke    DomeAPS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeAPS Telemetry Topic Names
	[Documentation]    Validate the DomeAPS Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeAPS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLouvers Commands Topic Names
	[Documentation]    Validate the DomeLouvers Commands topic names conform to naming convention.
	[Tags]    smoke    DomeLouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLouvers Events Topic Names
	[Documentation]    Validate the DomeLouvers Events topic names conform to naming convention.
	[Tags]    smoke    DomeLouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLouvers Telemetry Topic Names
	[Documentation]    Validate the DomeLouvers Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeLouvers    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLWS Commands Topic Names
	[Documentation]    Validate the DomeLWS Commands topic names conform to naming convention.
	[Tags]    smoke    DomeLWS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLWS Events Topic Names
	[Documentation]    Validate the DomeLWS Events topic names conform to naming convention.
	[Tags]    smoke    DomeLWS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeLWS Telemetry Topic Names
	[Documentation]    Validate the DomeLWS Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeLWS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeMONCS Commands Topic Names
	[Documentation]    Validate the DomeMONCS Commands topic names conform to naming convention.
	[Tags]    smoke    DomeMONCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeMONCS Events Topic Names
	[Documentation]    Validate the DomeMONCS Events topic names conform to naming convention.
	[Tags]    smoke    DomeMONCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeMONCS Telemetry Topic Names
	[Documentation]    Validate the DomeMONCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeMONCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeTHCS Commands Topic Names
	[Documentation]    Validate the DomeTHCS Commands topic names conform to naming convention.
	[Tags]    smoke    DomeTHCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeTHCS Events Topic Names
	[Documentation]    Validate the DomeTHCS Events topic names conform to naming convention.
	[Tags]    smoke    DomeTHCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate DomeTHCS Telemetry Topic Names
	[Documentation]    Validate the DomeTHCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    DomeTHCS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Commands Topic Names
	[Documentation]    Validate the EEC Commands topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Events Topic Names
	[Documentation]    Validate the EEC Events topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EEC Telemetry Topic Names
	[Documentation]    Validate the EEC Telemetry topic names conform to naming convention.
	[Tags]    smoke    EEC    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFD Events Topic Names
	[Documentation]    Validate the EFD Events topic names conform to naming convention.
	[Tags]    smoke    EFD    TSS-2985
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate EFD Telemetry Topic Names
	[Documentation]    Validate the EFD Telemetry topic names conform to naming convention.
	[Tags]    smoke    EFD    TSS-2985
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate HeaderService Commands Topic Names
	[Documentation]    Validate the HeaderService Commands topic names conform to naming convention.
	[Tags]    smoke    HeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate HeaderService Events Topic Names
	[Documentation]    Validate the HeaderService Events topic names conform to naming convention.
	[Tags]    smoke    HeaderService    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Commands Topic Names
	[Documentation]    Validate the Hexapod Commands topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Events Topic Names
	[Documentation]    Validate the Hexapod Events topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Hexapod Telemetry Topic Names
	[Documentation]    Validate the Hexapod Telemetry topic names conform to naming convention.
	[Tags]    smoke    Hexapod    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Laser Commands Topic Names
	[Documentation]    Validate the Laser Commands topic names conform to naming convention.
	[Tags]    smoke    Laser    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/Laser/Laser_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Laser Events Topic Names
	[Documentation]    Validate the Laser Events topic names conform to naming convention.
	[Tags]    smoke    Laser    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/Laser/Laser_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Laser Telemetry Topic Names
	[Documentation]    Validate the Laser Telemetry topic names conform to naming convention.
	[Tags]    smoke    Laser    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/Laser/Laser_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate M1M3 Commands Topic Names
	[Documentation]    Validate the M1M3 Commands topic names conform to naming convention.
	[Tags]    smoke    M1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate M1M3 Events Topic Names
	[Documentation]    Validate the M1M3 Events topic names conform to naming convention.
	[Tags]    smoke    M1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate M1M3 Telemetry Topic Names
	[Documentation]    Validate the M1M3 Telemetry topic names conform to naming convention.
	[Tags]    smoke    M1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate M2MS Commands Topic Names
	[Documentation]    Validate the M2MS Commands topic names conform to naming convention.
	[Tags]    smoke    M2MS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate M2MS Events Topic Names
	[Documentation]    Validate the M2MS Events topic names conform to naming convention.
	[Tags]    smoke    M2MS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate M2MS Telemetry Topic Names
	[Documentation]    Validate the M2MS Telemetry topic names conform to naming convention.
	[Tags]    smoke    M2MS    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MtAtElectrometer Commands Topic Names
	[Documentation]    Validate the MtAtElectrometer Commands topic names conform to naming convention.
	[Tags]    smoke    MtAtElectrometer    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MtAtElectrometer Events Topic Names
	[Documentation]    Validate the MtAtElectrometer Events topic names conform to naming convention.
	[Tags]    smoke    MtAtElectrometer    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate MtAtElectrometer Telemetry Topic Names
	[Documentation]    Validate the MtAtElectrometer Telemetry topic names conform to naming convention.
	[Tags]    smoke    MtAtElectrometer    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MtAtElectrometer/MtAtElectrometer_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate OCS Commands Topic Names
	[Documentation]    Validate the OCS Commands topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Events Topic Names
	[Documentation]    Validate the OCS Events topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate OCS Telemetry Topic Names
	[Documentation]    Validate the OCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Commands Topic Names
	[Documentation]    Validate the Rotator Commands topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Events Topic Names
	[Documentation]    Validate the Rotator Events topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Rotator Telemetry Topic Names
	[Documentation]    Validate the Rotator Telemetry topic names conform to naming convention.
	[Tags]    smoke    Rotator    skipped
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Commands Topic Names
	[Documentation]    Validate the Scheduler Commands topic names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Events Topic Names
	[Documentation]    Validate the Scheduler Events topic names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Scheduler Telemetry Topic Names
	[Documentation]    Validate the Scheduler Telemetry topic names conform to naming convention.
	[Tags]    smoke    Scheduler    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ScriptLoader Commands Topic Names
	[Documentation]    Validate the ScriptLoader Commands topic names conform to naming convention.
	[Tags]    smoke    ScriptLoader    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ScriptLoader/ScriptLoader_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate ScriptLoader Events Topic Names
	[Documentation]    Validate the ScriptLoader Events topic names conform to naming convention.
	[Tags]    smoke    ScriptLoader    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ScriptLoader/ScriptLoader_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SEDSpectrometer Commands Topic Names
	[Documentation]    Validate the SEDSpectrometer Commands topic names conform to naming convention.
	[Tags]    smoke    SEDSpectrometer    TSS-2986
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SEDSpectrometer Events Topic Names
	[Documentation]    Validate the SEDSpectrometer Events topic names conform to naming convention.
	[Tags]    smoke    SEDSpectrometer    TSS-2986
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate SEDSpectrometer Telemetry Topic Names
	[Documentation]    Validate the SEDSpectrometer Telemetry topic names conform to naming convention.
	[Tags]    smoke    SEDSpectrometer    TSS-2986
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Commands Topic Names
	[Documentation]    Validate the Sequencer Commands topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Events Topic Names
	[Documentation]    Validate the Sequencer Events topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Sequencer Telemetry Topic Names
	[Documentation]    Validate the Sequencer Telemetry topic names conform to naming convention.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Commands Topic Names
	[Documentation]    Validate the TCS Commands topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Events Topic Names
	[Documentation]    Validate the TCS Events topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TCS Telemetry Topic Names
	[Documentation]    Validate the TCS Telemetry topic names conform to naming convention.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsOfc Commands Topic Names
	[Documentation]    Validate the TcsOfc Commands topic names conform to naming convention.
	[Tags]    smoke    TcsOfc    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsOfc Events Topic Names
	[Documentation]    Validate the TcsOfc Events topic names conform to naming convention.
	[Tags]    smoke    TcsOfc    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsOfc Telemetry Topic Names
	[Documentation]    Validate the TcsOfc Telemetry topic names conform to naming convention.
	[Tags]    smoke    TcsOfc    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsWEP Commands Topic Names
	[Documentation]    Validate the TcsWEP Commands topic names conform to naming convention.
	[Tags]    smoke    TcsWEP    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsWEP Events Topic Names
	[Documentation]    Validate the TcsWEP Events topic names conform to naming convention.
	[Tags]    smoke    TcsWEP    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate TcsWEP Telemetry Topic Names
	[Documentation]    Validate the TcsWEP Telemetry topic names conform to naming convention.
	[Tags]    smoke    TcsWEP    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |sed -e 's/\\n/,/g'
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

Validate VMS Commands Topic Names
	[Documentation]    Validate the VMS Commands topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Events Topic Names
	[Documentation]    Validate the VMS Events topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate VMS Telemetry Topic Names
	[Documentation]    Validate the VMS Telemetry topic names conform to naming convention.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{topics}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{topics}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

