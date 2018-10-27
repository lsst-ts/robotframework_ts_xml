*** Settings ***
Documentation    Validate the subsystem XML definition files contain all the required generic, or State Machine, commands.
Suite Setup    Run Keywords    Create the Generic Commands Array    AND    Create the Generic Events Array    AND
...    Create the Enumeration Array    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Generic Commands
	[Documentation]    Validate the AtDome contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtDome
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtDome
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtDome Generic Events
	[Documentation]    Validate the AtDome contains all the required generic events.
	[Tags]    smoke    AtDome
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtDome
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtDome Event Enumeration
	[Documentation]    Validate the AtDome defines the required enumeration.
	[Tags]    smoke    AtDome    TSS-3060
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtDome
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

