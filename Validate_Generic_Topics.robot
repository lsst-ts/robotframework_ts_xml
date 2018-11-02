*** Settings ***
Documentation    Validate the Generics XML definition file contains the required topics.
Suite Setup    Run Keywords    Create the Generic Commands Array    AND    Create the Generic Events Array    AND
...    Create the Enumeration Array    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate SALGenerics.xml
	[Documentation]    Validate the SALGenerics.xml dictionary file.
	[Tags]    smoke
	${output}=    Run    ${xml} val -e ${folder}/sal_interfaces/SALGenerics.xml
	Log    ${output}
	Should Contain    ${output}   SALGenerics.xml - valid

Validate SALGenerics.xml Generic Commands
	[Documentation]    Validate the SALGenerics.xml contains all the required generic, or State Machine, commands.
	[Tags]    smoke    
	Comment    Define CSC.
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALObjects/SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SALGenerics.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${command}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    SALGeneric_command_     ${command}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate SALGenerics.xml Generic Events
	[Documentation]    Validate the SALGenerics.xml contains all the required generic events.
	[Tags]    smoke    
	Comment    Define CSC.
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALObjects/SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SALGenerics.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    SALGeneric_logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate SALGenerics.xml SummaryState Event Enumeration
	[Documentation]    Validate the SALGenerics.xml defines the required enumerations.
	[Tags]    smoke    
	Comment    Define CSC.
	Comment    Get the SummaryState Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/SALGenerics.xml
	:FOR    ${item}    IN    @{Summary}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate SALGenerics.xml DetailedState Event Enumeration
	[Documentation]    Validate the SALGenerics.xml defines the required enumerations.
	[Tags]    smoke    
	Comment    Define CSC.
	Comment    Get the DetailedState Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/SALGenerics.xml
	:FOR    ${item}    IN    @{Detailed}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

*** Keywords ***
Create the Generic Commands Array
	[Tags]    smoke
	@{GenericCommands}=    Create List    start    enable    disable    standby
	Log Many    @{GenericCommands}
	Set Suite Variable    @{GenericCommands}

Create the Generic Events Array
	[Tags]    smoke
	@{GenericEvents}=    Create List    appliedSettingsMatchStart    errorCode    settingVersions    summaryState
	Log Many    @{GenericEvents}
	Set Suite Variable    @{GenericEvents}

Create the Enumeration Array
	[Tags]    smoke
	@{Summary}=    Create List    SummaryState_DisabledState    SummaryState_EnabledState
	...    SummaryState_FaultState    SummaryState_OfflineState    SummaryState_StandbyState
	Log Many    @{Summary}
	Set Suite Variable    @{Summary}
	@{Detailed}=    Create List    DetailedState_DisabledState    DetailedState_EnabledState
	...    DetailedState_FaultState    DetailedState_OfflineState    DetailedState_StandbyState
	Log Many    @{Detailed}
	Set Suite Variable    @{Detailed}

