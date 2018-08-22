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
	[Tags]    smoke    Archiver    
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
	[Tags]    smoke    AtArchiver    
	Comment    Define CSC.
	Set Test Variable    ${csc}    atArchiver
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
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

Validate AtWhiteLight Generic Commands
	[Documentation]    Validate the AtWhiteLight contains all the required generic, or State Machine, commands.
	[Tags]    smoke    AtWhiteLight    
	Comment    Define CSC.
	Set Test Variable    ${csc}    atWhiteLight
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtWhiteLight Generic Events
	[Documentation]    Validate the AtWhiteLight contains all the required generic events.
	[Tags]    smoke    AtWhiteLight    
	Comment    Define CSC.
	Set Test Variable    ${csc}    atWhiteLight
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate AtWhiteLight Event Enumeration
	[Documentation]    Validate the AtWhiteLight defines the required enumeration.
	[Tags]    smoke    AtWhiteLight    
	Comment    Define CSC.
	Set Test Variable    ${csc}    atWhiteLight
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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
	[Tags]    smoke    AtCamera    
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcamera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate ATCS Generic Commands
	[Documentation]    Validate the ATCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke    ATCS    
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
	[Tags]    smoke    ATCS    
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

Validate CalibrationElectrometer Generic Commands
	[Documentation]    Validate the CalibrationElectrometer contains all the required generic, or State Machine, commands.
	[Tags]    smoke    CalibrationElectrometer    
	Comment    Define CSC.
	Set Test Variable    ${csc}    calibrationElectrometer
	Comment    Get the Commands for the CSC.
	${topics}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml
	@{Commands}=    Split to Lines    ${topics}
	:FOR    ${state}    IN    @{GenericCommands}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate CalibrationElectrometer Generic Events
	[Documentation]    Validate the CalibrationElectrometer contains all the required generic events.
	[Tags]    smoke    CalibrationElectrometer    
	Comment    Define CSC.
	Set Test Variable    ${csc}    calibrationElectrometer
	Comment    Get the Events.
	${topics}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml
	@{Events}=    Split to Lines    ${topics}
	:FOR    ${item}    IN    @{GenericEvents}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _logevent_    ${item}
	\    Run Keyword And Continue On Failure    Should Contain    ${Events}    ${string}

Validate CalibrationElectrometer Event Enumeration
	[Documentation]    Validate the CalibrationElectrometer defines the required enumeration.
	[Tags]    smoke    CalibrationElectrometer    
	Comment    Define CSC.
	Set Test Variable    ${csc}    calibrationElectrometer
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml
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
	[Tags]    smoke    Camera    
	Comment    Define CSC.
	Set Test Variable    ${csc}    camera
	Comment    Get the Event Enumerations.
	${enums}=    Run    ${xml} sel -t -m "//SALEventSet/Enumeration" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	:FOR    ${item}    IN    @{Enumerations}
	\    Run Keyword And Continue On Failure    Should Contain    ${enums}    ${item}

Validate Dome Generic Commands
	[Documentation]    Validate the Dome contains all the required generic, or State Machine, commands.
	[Tags]    smoke    Dome    
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
	[Tags]    smoke    Dome    
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
	[Tags]    smoke    Dome    
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
	[Tags]    smoke    EEC    
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

