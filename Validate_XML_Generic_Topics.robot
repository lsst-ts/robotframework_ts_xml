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
Validate ATArchiver Generic Commands
	[Documentation]    Validate the ATArchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATArchiver
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATArchiver Generic Events
	[Documentation]    Validate the ATArchiver contains all the required generic events.
	[Tags]    smoke    ATArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATArchiver
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATArchiver Event Enumeration
	[Documentation]    Validate the ATArchiver defines the required enumeration.
	[Tags]    smoke    ATArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATArchiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATCamera Generic Commands
	[Documentation]    Validate the ATCamera contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCamera
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATCamera Generic Events
	[Documentation]    Validate the ATCamera contains all the required generic events.
	[Tags]    smoke    ATCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCamera
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATCamera Event Enumeration
	[Documentation]    Validate the ATCamera defines the required enumeration.
	[Tags]    smoke    ATCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCamera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

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

Validate ATHeaderService Generic Commands
	[Documentation]    Validate the ATHeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATHeaderService
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATHeaderService Generic Events
	[Documentation]    Validate the ATHeaderService contains all the required generic events.
	[Tags]    smoke    ATHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATHeaderService
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATHeaderService Event Enumeration
	[Documentation]    Validate the ATHeaderService defines the required enumeration.
	[Tags]    smoke    ATHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATHeaderService
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATMCS Generic Commands
	[Documentation]    Validate the ATMCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATMCS Generic Events
	[Documentation]    Validate the ATMCS contains all the required generic events.
	[Tags]    smoke    ATMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATMCS Event Enumeration
	[Documentation]    Validate the ATMCS defines the required enumeration.
	[Tags]    smoke    ATMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATMonochromator Generic Commands
	[Documentation]    Validate the ATMonochromator contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMonochromator
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATMonochromator Generic Events
	[Documentation]    Validate the ATMonochromator contains all the required generic events.
	[Tags]    smoke    ATMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMonochromator
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATMonochromator Event Enumeration
	[Documentation]    Validate the ATMonochromator defines the required enumeration.
	[Tags]    smoke    ATMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMonochromator
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATPneumatics Generic Commands
	[Documentation]    Validate the ATPneumatics contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPneumatics
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATPneumatics Generic Events
	[Documentation]    Validate the ATPneumatics contains all the required generic events.
	[Tags]    smoke    ATPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPneumatics
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATPneumatics Event Enumeration
	[Documentation]    Validate the ATPneumatics defines the required enumeration.
	[Tags]    smoke    ATPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPneumatics
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATSpectrograph Generic Commands
	[Documentation]    Validate the ATSpectrograph contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATSpectrograph
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATSpectrograph Generic Events
	[Documentation]    Validate the ATSpectrograph contains all the required generic events.
	[Tags]    smoke    ATSpectrograph
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATSpectrograph Event Enumeration
	[Documentation]    Validate the ATSpectrograph defines the required enumeration.
	[Tags]    smoke    ATSpectrograph
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATTCS Generic Commands
	[Documentation]    Validate the ATTCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATTCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATTCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATTCS Generic Events
	[Documentation]    Validate the ATTCS contains all the required generic events.
	[Tags]    smoke    ATTCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATTCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATTCS Event Enumeration
	[Documentation]    Validate the ATTCS defines the required enumeration.
	[Tags]    smoke    ATTCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATTCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATWhiteLight Generic Commands
	[Documentation]    Validate the ATWhiteLight contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATWhiteLight
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATWhiteLight Generic Events
	[Documentation]    Validate the ATWhiteLight contains all the required generic events.
	[Tags]    smoke    ATWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATWhiteLight
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATWhiteLight Event Enumeration
	[Documentation]    Validate the ATWhiteLight defines the required enumeration.
	[Tags]    smoke    ATWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATWhiteLight
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Catchuparchiver Generic Commands
	[Documentation]    Validate the Catchuparchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Catchuparchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    CatchupArchiver
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Catchuparchiver Generic Events
	[Documentation]    Validate the Catchuparchiver contains all the required generic events.
	[Tags]    smoke    Catchuparchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    CatchupArchiver
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Catchuparchiver Event Enumeration
	[Documentation]    Validate the Catchuparchiver defines the required enumeration.
	[Tags]    smoke    Catchuparchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    CatchupArchiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate CBP Generic Commands
	[Documentation]    Validate the CBP contains all the required generic, or State Machine, commands.
	[Tags]    smoke    CBP
	Comment    Define CSC.
	Set Test Variable    ${csc}    CBP
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate CBP Generic Events
	[Documentation]    Validate the CBP contains all the required generic events.
	[Tags]    smoke    CBP
	Comment    Define CSC.
	Set Test Variable    ${csc}    CBP
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate CBP Event Enumeration
	[Documentation]    Validate the CBP defines the required enumeration.
	[Tags]    smoke    CBP
	Comment    Define CSC.
	Set Test Variable    ${csc}    CBP
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Dome Generic Commands
	[Documentation]    Validate the Dome contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Dome
	Comment    Define CSC.
	Set Test Variable    ${csc}    Dome
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Dome Generic Events
	[Documentation]    Validate the Dome contains all the required generic events.
	[Tags]    smoke    Dome
	Comment    Define CSC.
	Set Test Variable    ${csc}    Dome
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Dome Event Enumeration
	[Documentation]    Validate the Dome defines the required enumeration.
	[Tags]    smoke    Dome
	Comment    Define CSC.
	Set Test Variable    ${csc}    Dome
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domeadb Generic Commands
	[Documentation]    Validate the Domeadb contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domeadb
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeADB
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domeadb Generic Events
	[Documentation]    Validate the Domeadb contains all the required generic events.
	[Tags]    smoke    Domeadb
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeADB
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domeadb Event Enumeration
	[Documentation]    Validate the Domeadb defines the required enumeration.
	[Tags]    smoke    Domeadb
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeADB
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domeaps Generic Commands
	[Documentation]    Validate the Domeaps contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domeaps
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeAPS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domeaps Generic Events
	[Documentation]    Validate the Domeaps contains all the required generic events.
	[Tags]    smoke    Domeaps
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeAPS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domeaps Event Enumeration
	[Documentation]    Validate the Domeaps defines the required enumeration.
	[Tags]    smoke    Domeaps
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeAPS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domelouvers Generic Commands
	[Documentation]    Validate the Domelouvers contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domelouvers
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLouvers
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domelouvers Generic Events
	[Documentation]    Validate the Domelouvers contains all the required generic events.
	[Tags]    smoke    Domelouvers
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLouvers
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domelouvers Event Enumeration
	[Documentation]    Validate the Domelouvers defines the required enumeration.
	[Tags]    smoke    Domelouvers
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLouvers
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domelws Generic Commands
	[Documentation]    Validate the Domelws contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domelws
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLWS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domelws Generic Events
	[Documentation]    Validate the Domelws contains all the required generic events.
	[Tags]    smoke    Domelws
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLWS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domelws Event Enumeration
	[Documentation]    Validate the Domelws defines the required enumeration.
	[Tags]    smoke    Domelws
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLWS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domemoncs Generic Commands
	[Documentation]    Validate the Domemoncs contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domemoncs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeMONCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domemoncs Generic Events
	[Documentation]    Validate the Domemoncs contains all the required generic events.
	[Tags]    smoke    Domemoncs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeMONCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domemoncs Event Enumeration
	[Documentation]    Validate the Domemoncs defines the required enumeration.
	[Tags]    smoke    Domemoncs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeMONCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Domethcs Generic Commands
	[Documentation]    Validate the Domethcs contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Domethcs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeTHCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Domethcs Generic Events
	[Documentation]    Validate the Domethcs contains all the required generic events.
	[Tags]    smoke    Domethcs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeTHCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Domethcs Event Enumeration
	[Documentation]    Validate the Domethcs defines the required enumeration.
	[Tags]    smoke    Domethcs
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeTHCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate EEC Generic Commands
	[Documentation]    Validate the EEC contains all the required generic, or State Machine, commands.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    EEC
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate EEC Generic Events
	[Documentation]    Validate the EEC contains all the required generic events.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    EEC
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate EEC Event Enumeration
	[Documentation]    Validate the EEC defines the required enumeration.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    EEC
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Electrometer Generic Commands
	[Documentation]    Validate the Electrometer contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Electrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Electrometer
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Electrometer Generic Events
	[Documentation]    Validate the Electrometer contains all the required generic events.
	[Tags]    smoke    Electrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Electrometer
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Electrometer Event Enumeration
	[Documentation]    Validate the Electrometer defines the required enumeration.
	[Tags]    smoke    Electrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Electrometer
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Hexapod Generic Commands
	[Documentation]    Validate the Hexapod contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Hexapod
	Comment    Define CSC.
	Set Test Variable    ${csc}    Hexapod
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Hexapod Generic Events
	[Documentation]    Validate the Hexapod contains all the required generic events.
	[Tags]    smoke    Hexapod
	Comment    Define CSC.
	Set Test Variable    ${csc}    Hexapod
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Hexapod Event Enumeration
	[Documentation]    Validate the Hexapod defines the required enumeration.
	[Tags]    smoke    Hexapod
	Comment    Define CSC.
	Set Test Variable    ${csc}    Hexapod
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate LinearStage Generic Commands
	[Documentation]    Validate the LinearStage contains all the required generic, or State Machine, commands.
	[Tags]    smoke    LinearStage
	Comment    Define CSC.
	Set Test Variable    ${csc}    LinearStage
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate LinearStage Generic Events
	[Documentation]    Validate the LinearStage contains all the required generic events.
	[Tags]    smoke    LinearStage
	Comment    Define CSC.
	Set Test Variable    ${csc}    LinearStage
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate LinearStage Event Enumeration
	[Documentation]    Validate the LinearStage defines the required enumeration.
	[Tags]    smoke    LinearStage
	Comment    Define CSC.
	Set Test Variable    ${csc}    LinearStage
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Mtarchiver Generic Commands
	[Documentation]    Validate the Mtarchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Mtarchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTArchiver
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Mtarchiver Generic Events
	[Documentation]    Validate the Mtarchiver contains all the required generic events.
	[Tags]    smoke    Mtarchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTArchiver
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Mtarchiver Event Enumeration
	[Documentation]    Validate the Mtarchiver defines the required enumeration.
	[Tags]    smoke    Mtarchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTArchiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Mtcamera Generic Commands
	[Documentation]    Validate the Mtcamera contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Mtcamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCamera
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Mtcamera Generic Events
	[Documentation]    Validate the Mtcamera contains all the required generic events.
	[Tags]    smoke    Mtcamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCamera
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Mtcamera Event Enumeration
	[Documentation]    Validate the Mtcamera defines the required enumeration.
	[Tags]    smoke    Mtcamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCamera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate MTHeaderService Generic Commands
	[Documentation]    Validate the MTHeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke    MTHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTHeaderService
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate MTHeaderService Generic Events
	[Documentation]    Validate the MTHeaderService contains all the required generic events.
	[Tags]    smoke    MTHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTHeaderService
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate MTHeaderService Event Enumeration
	[Documentation]    Validate the MTHeaderService defines the required enumeration.
	[Tags]    smoke    MTHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTHeaderService
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate MTM1M3 Generic Commands
	[Documentation]    Validate the MTM1M3 contains all the required generic, or State Machine, commands.
	[Tags]    smoke    MTM1M3
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate MTM1M3 Generic Events
	[Documentation]    Validate the MTM1M3 contains all the required generic events.
	[Tags]    smoke    MTM1M3
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate MTM1M3 Event Enumeration
	[Documentation]    Validate the MTM1M3 defines the required enumeration.
	[Tags]    smoke    MTM1M3
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate M2MS Generic Commands
	[Documentation]    Validate the M2MS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    M2MS
	Comment    Define CSC.
	Set Test Variable    ${csc}    M2MS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/M2MS/M2MS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate M2MS Generic Events
	[Documentation]    Validate the M2MS contains all the required generic events.
	[Tags]    smoke    M2MS
	Comment    Define CSC.
	Set Test Variable    ${csc}    M2MS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/M2MS/M2MS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate M2MS Event Enumeration
	[Documentation]    Validate the M2MS defines the required enumeration.
	[Tags]    smoke    M2MS
	Comment    Define CSC.
	Set Test Variable    ${csc}    M2MS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/M2MS/M2MS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate MTMount Generic Commands
	[Documentation]    Validate the MTMount contains all the required generic, or State Machine, commands.
	[Tags]    smoke    MTMount    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTMount
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate MTMount Generic Events
	[Documentation]    Validate the MTMount contains all the required generic events.
	[Tags]    smoke    MTMount    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTMount
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate MTMount Event Enumeration
	[Documentation]    Validate the MTMount defines the required enumeration.
	[Tags]    smoke    MTMount    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTMount
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate MTOFC Generic Commands
	[Documentation]    Validate the MTOFC contains all the required generic, or State Machine, commands.
	[Tags]    smoke    MTOFC
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTOFC
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate MTOFC Generic Events
	[Documentation]    Validate the MTOFC contains all the required generic events.
	[Tags]    smoke    MTOFC
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTOFC
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate MTOFC Event Enumeration
	[Documentation]    Validate the MTOFC defines the required enumeration.
	[Tags]    smoke    MTOFC
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTOFC
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate OCS Generic Commands
	[Documentation]    Validate the OCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    OCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    OCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate OCS Generic Events
	[Documentation]    Validate the OCS contains all the required generic events.
	[Tags]    smoke    OCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    OCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate OCS Event Enumeration
	[Documentation]    Validate the OCS defines the required enumeration.
	[Tags]    smoke    OCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    OCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate PromptProcessing Generic Commands
	[Documentation]    Validate the PromptProcessing contains all the required generic, or State Machine, commands.
	[Tags]    smoke    PromptProcessing
	Comment    Define CSC.
	Set Test Variable    ${csc}    PromptProcessing
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate PromptProcessing Generic Events
	[Documentation]    Validate the PromptProcessing contains all the required generic events.
	[Tags]    smoke    PromptProcessing
	Comment    Define CSC.
	Set Test Variable    ${csc}    PromptProcessing
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate PromptProcessing Event Enumeration
	[Documentation]    Validate the PromptProcessing defines the required enumeration.
	[Tags]    smoke    PromptProcessing
	Comment    Define CSC.
	Set Test Variable    ${csc}    PromptProcessing
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Rotator Generic Commands
	[Documentation]    Validate the Rotator contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Rotator
	Comment    Define CSC.
	Set Test Variable    ${csc}    Rotator
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Rotator Generic Events
	[Documentation]    Validate the Rotator contains all the required generic events.
	[Tags]    smoke    Rotator
	Comment    Define CSC.
	Set Test Variable    ${csc}    Rotator
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Rotator Event Enumeration
	[Documentation]    Validate the Rotator defines the required enumeration.
	[Tags]    smoke    Rotator
	Comment    Define CSC.
	Set Test Variable    ${csc}    Rotator
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Sequencer Generic Commands
	[Documentation]    Validate the Sequencer contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Sequencer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Sequencer
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Sequencer Generic Events
	[Documentation]    Validate the Sequencer contains all the required generic events.
	[Tags]    smoke    Sequencer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Sequencer
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Sequencer Event Enumeration
	[Documentation]    Validate the Sequencer defines the required enumeration.
	[Tags]    smoke    Sequencer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Sequencer
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate SummitFacility Generic Commands
	[Documentation]    Validate the SummitFacility contains all the required generic, or State Machine, commands.
	[Tags]    smoke    SummitFacility
	Comment    Define CSC.
	Set Test Variable    ${csc}    SummitFacility
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate SummitFacility Generic Events
	[Documentation]    Validate the SummitFacility contains all the required generic events.
	[Tags]    smoke    SummitFacility
	Comment    Define CSC.
	Set Test Variable    ${csc}    SummitFacility
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate SummitFacility Event Enumeration
	[Documentation]    Validate the SummitFacility defines the required enumeration.
	[Tags]    smoke    SummitFacility
	Comment    Define CSC.
	Set Test Variable    ${csc}    SummitFacility
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate TCS Generic Commands
	[Documentation]    Validate the TCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    TCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    TCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TCS/TCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TCS Generic Events
	[Documentation]    Validate the TCS contains all the required generic events.
	[Tags]    smoke    TCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    TCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate TCS Event Enumeration
	[Documentation]    Validate the TCS defines the required enumeration.
	[Tags]    smoke    TCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    TCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/TCS/TCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Test Generic Commands
	[Documentation]    Validate the Test contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Test
	Comment    Define CSC.
	Set Test Variable    ${csc}    Test
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Test Generic Events
	[Documentation]    Validate the Test contains all the required generic events.
	[Tags]    smoke    Test
	Comment    Define CSC.
	Set Test Variable    ${csc}    Test
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Test Event Enumeration
	[Documentation]    Validate the Test defines the required enumeration.
	[Tags]    smoke    Test
	Comment    Define CSC.
	Set Test Variable    ${csc}    Test
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate TunableLaser Generic Commands
	[Documentation]    Validate the TunableLaser contains all the required generic, or State Machine, commands.
	[Tags]    smoke    TunableLaser
	Comment    Define CSC.
	Set Test Variable    ${csc}    TunableLaser
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TunableLaser Generic Events
	[Documentation]    Validate the TunableLaser contains all the required generic events.
	[Tags]    smoke    TunableLaser
	Comment    Define CSC.
	Set Test Variable    ${csc}    TunableLaser
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate TunableLaser Event Enumeration
	[Documentation]    Validate the TunableLaser defines the required enumeration.
	[Tags]    smoke    TunableLaser
	Comment    Define CSC.
	Set Test Variable    ${csc}    TunableLaser
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate VMS Generic Commands
	[Documentation]    Validate the VMS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    VMS
	Comment    Define CSC.
	Set Test Variable    ${csc}    VMS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/VMS/VMS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate VMS Generic Events
	[Documentation]    Validate the VMS contains all the required generic events.
	[Tags]    smoke    VMS
	Comment    Define CSC.
	Set Test Variable    ${csc}    VMS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate VMS Event Enumeration
	[Documentation]    Validate the VMS defines the required enumeration.
	[Tags]    smoke    VMS
	Comment    Define CSC.
	Set Test Variable    ${csc}    VMS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/VMS/VMS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
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
	@{Enumerations}=    Create List    SummaryState_DisabledState    SummaryState_EnabledState
	...    SummaryState_FaultState    SummaryState_OfflineState    SummaryState_StandbyState
	Log Many    @{Enumerations}
	Set Suite Variable    @{Enumerations}

