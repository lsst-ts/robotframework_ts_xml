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
Validate Archiver Generic Commands
	[Documentation]    Validate the Archiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Archiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    archiver
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Archiver Generic Events
	[Documentation]    Validate the Archiver contains all the required generic events.
	[Tags]    smoke    Archiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    archiver
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Archiver Event Enumeration
	[Documentation]    Validate the Archiver defines the required enumeration.
	[Tags]    smoke    Archiver    TSS-2979
	Comment    Define CSC.
	Set Test Variable    ${csc}    archiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtArchiver Generic Commands
	[Documentation]    Validate the AtArchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    atArchiver
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtArchiver Generic Events
	[Documentation]    Validate the AtArchiver contains all the required generic events.
	[Tags]    smoke    AtArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    atArchiver
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtArchiver Event Enumeration
	[Documentation]    Validate the AtArchiver defines the required enumeration.
	[Tags]    smoke    AtArchiver    TSS-2980
	Comment    Define CSC.
	Set Test Variable    ${csc}    atArchiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
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

Validate AtHeaderService Generic Commands
	[Documentation]    Validate the AtHeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    atHeaderService
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtHeaderService Generic Events
	[Documentation]    Validate the AtHeaderService contains all the required generic events.
	[Tags]    smoke    AtHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    atHeaderService
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtHeaderService Event Enumeration
	[Documentation]    Validate the AtHeaderService defines the required enumeration.
	[Tags]    smoke    AtHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    atHeaderService
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtMCS Generic Commands
	[Documentation]    Validate the AtMCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtMCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtMCS Generic Events
	[Documentation]    Validate the AtMCS contains all the required generic events.
	[Tags]    smoke    AtMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtMCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtMCS Event Enumeration
	[Documentation]    Validate the AtMCS defines the required enumeration.
	[Tags]    smoke    AtMCS    TSS-3089
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtMCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/AtMCS/AtMCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtMonochromator Generic Commands
	[Documentation]    Validate the AtMonochromator contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    atMonochromator
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtMonochromator Generic Events
	[Documentation]    Validate the AtMonochromator contains all the required generic events.
	[Tags]    smoke    AtMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    atMonochromator
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtMonochromator Event Enumeration
	[Documentation]    Validate the AtMonochromator defines the required enumeration.
	[Tags]    smoke    AtMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    atMonochromator
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtPneumatics Generic Commands
	[Documentation]    Validate the AtPneumatics contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtPneumatics
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtPneumatics Generic Events
	[Documentation]    Validate the AtPneumatics contains all the required generic events.
	[Tags]    smoke    AtPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtPneumatics
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtPneumatics Event Enumeration
	[Documentation]    Validate the AtPneumatics defines the required enumeration.
	[Tags]    smoke    AtPneumatics    TSS-3062
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtPneumatics
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/AtPneumatics/AtPneumatics_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtThermoelectricCooler Generic Commands
	[Documentation]    Validate the AtThermoelectricCooler contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtThermoelectricCooler
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtThermoelectricCooler
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtThermoelectricCooler/AtThermoelectricCooler_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtThermoelectricCooler Generic Events
	[Documentation]    Validate the AtThermoelectricCooler contains all the required generic events.
	[Tags]    smoke    AtThermoelectricCooler
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtThermoelectricCooler
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtThermoelectricCooler/AtThermoelectricCooler_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtThermoelectricCooler Event Enumeration
	[Documentation]    Validate the AtThermoelectricCooler defines the required enumeration.
	[Tags]    smoke    AtThermoelectricCooler
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtThermoelectricCooler
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/AtThermoelectricCooler/AtThermoelectricCooler_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtWhiteLight Generic Commands
	[Documentation]    Validate the AtWhiteLight contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtWhiteLight
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtWhiteLight Generic Events
	[Documentation]    Validate the AtWhiteLight contains all the required generic events.
	[Tags]    smoke    AtWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtWhiteLight
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtWhiteLight Event Enumeration
	[Documentation]    Validate the AtWhiteLight defines the required enumeration.
	[Tags]    smoke    AtWhiteLight    TSS-3063
	Comment    Define CSC.
	Set Test Variable    ${csc}    AtWhiteLight
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate AtCamera Generic Commands
	[Documentation]    Validate the AtCamera contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcamera
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtCamera Generic Events
	[Documentation]    Validate the AtCamera contains all the required generic events.
	[Tags]    smoke    AtCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcamera
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtCamera Event Enumeration
	[Documentation]    Validate the AtCamera defines the required enumeration.
	[Tags]    smoke    AtCamera    TSS-2981
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcamera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATCS Generic Commands
	[Documentation]    Validate the ATCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATCS    TSS-2978
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcs
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate ATCS Generic Events
	[Documentation]    Validate the ATCS contains all the required generic events.
	[Tags]    smoke    ATCS    TSS-2978
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcs
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate ATCS Event Enumeration
	[Documentation]    Validate the ATCS defines the required enumeration.
	[Tags]    smoke    ATCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcs
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Camera Generic Commands
	[Documentation]    Validate the Camera contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Camera
	Comment    Define CSC.
	Set Test Variable    ${csc}    camera
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Camera Generic Events
	[Documentation]    Validate the Camera contains all the required generic events.
	[Tags]    smoke    Camera
	Comment    Define CSC.
	Set Test Variable    ${csc}    camera
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Camera Event Enumeration
	[Documentation]    Validate the Camera defines the required enumeration.
	[Tags]    smoke    Camera    TSS-2982
	Comment    Define CSC.
	Set Test Variable    ${csc}    camera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Dome Generic Commands
	[Documentation]    Validate the Dome contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Dome    TSS-1778
	Comment    Define CSC.
	Set Test Variable    ${csc}    dome
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Dome Generic Events
	[Documentation]    Validate the Dome contains all the required generic events.
	[Tags]    smoke    Dome    TSS-1778
	Comment    Define CSC.
	Set Test Variable    ${csc}    dome
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Dome Event Enumeration
	[Documentation]    Validate the Dome defines the required enumeration.
	[Tags]    smoke    Dome    TSS-1778
	Comment    Define CSC.
	Set Test Variable    ${csc}    dome
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeADB Generic Commands
	[Documentation]    Validate the DomeADB contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeADB    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeADB
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeADB Generic Events
	[Documentation]    Validate the DomeADB contains all the required generic events.
	[Tags]    smoke    DomeADB    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeADB
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeADB Event Enumeration
	[Documentation]    Validate the DomeADB defines the required enumeration.
	[Tags]    smoke    DomeADB    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeADB
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeAPS Generic Commands
	[Documentation]    Validate the DomeAPS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeAPS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeAPS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeAPS Generic Events
	[Documentation]    Validate the DomeAPS contains all the required generic events.
	[Tags]    smoke    DomeAPS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeAPS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeAPS Event Enumeration
	[Documentation]    Validate the DomeAPS defines the required enumeration.
	[Tags]    smoke    DomeAPS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeAPS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeLouvers Generic Commands
	[Documentation]    Validate the DomeLouvers contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeLouvers    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLouvers
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeLouvers Generic Events
	[Documentation]    Validate the DomeLouvers contains all the required generic events.
	[Tags]    smoke    DomeLouvers    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLouvers
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeLouvers Event Enumeration
	[Documentation]    Validate the DomeLouvers defines the required enumeration.
	[Tags]    smoke    DomeLouvers    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLouvers
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeLWS Generic Commands
	[Documentation]    Validate the DomeLWS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeLWS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLWS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeLWS Generic Events
	[Documentation]    Validate the DomeLWS contains all the required generic events.
	[Tags]    smoke    DomeLWS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLWS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeLWS Event Enumeration
	[Documentation]    Validate the DomeLWS defines the required enumeration.
	[Tags]    smoke    DomeLWS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLWS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeMONCS Generic Commands
	[Documentation]    Validate the DomeMONCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeMONCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeMONCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeMONCS Generic Events
	[Documentation]    Validate the DomeMONCS contains all the required generic events.
	[Tags]    smoke    DomeMONCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeMONCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeMONCS Event Enumeration
	[Documentation]    Validate the DomeMONCS defines the required enumeration.
	[Tags]    smoke    DomeMONCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeMONCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate DomeTHCS Generic Commands
	[Documentation]    Validate the DomeTHCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    DomeTHCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeTHCS
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeTHCS Generic Events
	[Documentation]    Validate the DomeTHCS contains all the required generic events.
	[Tags]    smoke    DomeTHCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeTHCS
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate DomeTHCS Event Enumeration
	[Documentation]    Validate the DomeTHCS defines the required enumeration.
	[Tags]    smoke    DomeTHCS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeTHCS
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate EEC Generic Commands
	[Documentation]    Validate the EEC contains all the required generic, or State Machine, commands.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    eec
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate EEC Generic Events
	[Documentation]    Validate the EEC contains all the required generic events.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    eec
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate EEC Event Enumeration
	[Documentation]    Validate the EEC defines the required enumeration.
	[Tags]    smoke    EEC    TSS-2983
	Comment    Define CSC.
	Set Test Variable    ${csc}    eec
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate HeaderService Generic Commands
	[Documentation]    Validate the HeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke    HeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    headerService
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate HeaderService Generic Events
	[Documentation]    Validate the HeaderService contains all the required generic events.
	[Tags]    smoke    HeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    headerService
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate HeaderService Event Enumeration
	[Documentation]    Validate the HeaderService defines the required enumeration.
	[Tags]    smoke    HeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    headerService
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Hexapod Generic Commands
	[Documentation]    Validate the Hexapod contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Hexapod    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    hexapod
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Hexapod Generic Events
	[Documentation]    Validate the Hexapod contains all the required generic events.
	[Tags]    smoke    Hexapod    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    hexapod
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Hexapod Event Enumeration
	[Documentation]    Validate the Hexapod defines the required enumeration.
	[Tags]    smoke    Hexapod    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    hexapod
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
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

Validate M1M3 Generic Commands
	[Documentation]    Validate the M1M3 contains all the required generic, or State Machine, commands.
	[Tags]    smoke    M1M3    TSS-2617
	Comment    Define CSC.
	Set Test Variable    ${csc}    m1m3
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate M1M3 Generic Events
	[Documentation]    Validate the M1M3 contains all the required generic events.
	[Tags]    smoke    M1M3    TSS-2617
	Comment    Define CSC.
	Set Test Variable    ${csc}    m1m3
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate M1M3 Event Enumeration
	[Documentation]    Validate the M1M3 defines the required enumeration.
	[Tags]    smoke    M1M3    TSS-2617
	Comment    Define CSC.
	Set Test Variable    ${csc}    m1m3
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate M2MS Generic Commands
	[Documentation]    Validate the M2MS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    M2MS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    m2ms
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate M2MS Generic Events
	[Documentation]    Validate the M2MS contains all the required generic events.
	[Tags]    smoke    M2MS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    m2ms
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate M2MS Event Enumeration
	[Documentation]    Validate the M2MS defines the required enumeration.
	[Tags]    smoke    M2MS    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    m2ms
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
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

Validate OCS Generic Commands
	[Documentation]    Validate the OCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    OCS    TSS-1792
	Comment    Define CSC.
	Set Test Variable    ${csc}    ocs
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate OCS Generic Events
	[Documentation]    Validate the OCS contains all the required generic events.
	[Tags]    smoke    OCS    TSS-1792
	Comment    Define CSC.
	Set Test Variable    ${csc}    ocs
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate OCS Event Enumeration
	[Documentation]    Validate the OCS defines the required enumeration.
	[Tags]    smoke    OCS    TSS-1792
	Comment    Define CSC.
	Set Test Variable    ${csc}    ocs
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Rotator Generic Commands
	[Documentation]    Validate the Rotator contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Rotator    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    rotator
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Rotator Generic Events
	[Documentation]    Validate the Rotator contains all the required generic events.
	[Tags]    smoke    Rotator    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    rotator
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Rotator Event Enumeration
	[Documentation]    Validate the Rotator defines the required enumeration.
	[Tags]    smoke    Rotator    skipped
	Comment    Define CSC.
	Set Test Variable    ${csc}    rotator
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Scheduler Generic Commands
	[Documentation]    Validate the Scheduler contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Scheduler
	Comment    Define CSC.
	Set Test Variable    ${csc}    scheduler
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Scheduler Generic Events
	[Documentation]    Validate the Scheduler contains all the required generic events.
	[Tags]    smoke    Scheduler
	Comment    Define CSC.
	Set Test Variable    ${csc}    scheduler
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Scheduler Event Enumeration
	[Documentation]    Validate the Scheduler defines the required enumeration.
	[Tags]    smoke    Scheduler
	Comment    Define CSC.
	Set Test Variable    ${csc}    scheduler
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate SEDSpectrometer Generic Commands
	[Documentation]    Validate the SEDSpectrometer contains all the required generic, or State Machine, commands.
	[Tags]    smoke    SEDSpectrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    sedSpectrometer
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate SEDSpectrometer Generic Events
	[Documentation]    Validate the SEDSpectrometer contains all the required generic events.
	[Tags]    smoke    SEDSpectrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    sedSpectrometer
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate SEDSpectrometer Event Enumeration
	[Documentation]    Validate the SEDSpectrometer defines the required enumeration.
	[Tags]    smoke    SEDSpectrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    sedSpectrometer
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/sedSpectrometer/sedSpectrometer_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Sequencer Generic Commands
	[Documentation]    Validate the Sequencer contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Sequencer    TSS-1793
	Comment    Define CSC.
	Set Test Variable    ${csc}    sequencer
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Sequencer Generic Events
	[Documentation]    Validate the Sequencer contains all the required generic events.
	[Tags]    smoke    Sequencer    TSS-1793
	Comment    Define CSC.
	Set Test Variable    ${csc}    sequencer
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate Sequencer Event Enumeration
	[Documentation]    Validate the Sequencer defines the required enumeration.
	[Tags]    smoke    Sequencer    TSS-1793
	Comment    Define CSC.
	Set Test Variable    ${csc}    sequencer
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate TCS Generic Commands
	[Documentation]    Validate the TCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    TCS    TSS-1795
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcs
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TCS Generic Events
	[Documentation]    Validate the TCS contains all the required generic events.
	[Tags]    smoke    TCS    TSS-1795
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcs
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate TCS Event Enumeration
	[Documentation]    Validate the TCS defines the required enumeration.
	[Tags]    smoke    TCS    TSS-1795
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcs
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate TcsOfc Generic Commands
	[Documentation]    Validate the TcsOfc contains all the required generic, or State Machine, commands.
	[Tags]    smoke    TcsOfc
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsOfc
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TcsOfc Generic Events
	[Documentation]    Validate the TcsOfc contains all the required generic events.
	[Tags]    smoke    TcsOfc
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsOfc
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate TcsOfc Event Enumeration
	[Documentation]    Validate the TcsOfc defines the required enumeration.
	[Tags]    smoke    TcsOfc
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsOfc
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate TcsWEP Generic Commands
	[Documentation]    Validate the TcsWEP contains all the required generic, or State Machine, commands.
	[Tags]    smoke    TcsWEP
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsWEP
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TcsWEP Generic Events
	[Documentation]    Validate the TcsWEP contains all the required generic events.
	[Tags]    smoke    TcsWEP
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsWEP
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate TcsWEP Event Enumeration
	[Documentation]    Validate the TcsWEP defines the required enumeration.
	[Tags]    smoke    TcsWEP
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsWEP
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml
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

Validate VMS Generic Commands
	[Documentation]    Validate the VMS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    VMS    TSS-2618
	Comment    Define CSC.
	Set Test Variable    ${csc}    vms
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate VMS Generic Events
	[Documentation]    Validate the VMS contains all the required generic events.
	[Tags]    smoke    VMS    TSS-2618
	Comment    Define CSC.
	Set Test Variable    ${csc}    vms
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate VMS Event Enumeration
	[Documentation]    Validate the VMS defines the required enumeration.
	[Tags]    smoke    VMS    TSS-2618
	Comment    Define CSC.
	Set Test Variable    ${csc}    vms
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml
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

