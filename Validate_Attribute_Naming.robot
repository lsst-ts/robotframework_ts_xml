*** Settings ***
Documentation    Validate the subsystem XML attribute names are in lowerCamelCase.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
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

Validate Cbp Commands Attribute Names
	[Documentation]    Validate the Cbp Commands attribute names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Cbp Events Attribute Names
	[Documentation]    Validate the Cbp Events attribute names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |sed -e 's/\\n/,/g'
	Log    ${output}
	@{attributes}=    Split to Lines    ${output}
	: FOR    ${item}    IN    @{attributes}
	\    Run Keyword and Continue on Failure    Should Match Regexp    ${item}    ^[a-z]([a-z0-9]*)    msg="${item} does not conform to naming conventions."    values=False

Validate Cbp Telemetry Attribute Names
	[Documentation]    Validate the Cbp Telemetry attribute names conform to naming convention.
	[Tags]    smoke    Cbp    
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e 's/\\n/,/g'
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

