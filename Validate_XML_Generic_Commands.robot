*** Settings ***
Documentation    Validate the subsystem XML definition files contain all the required generic, or State Machine, commands.
Suite Setup    Run Keywords    Create the Generic Array    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Generic Commands
	[Documentation]    Validate the Archiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    archiver
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtArchiver Generic Commands
	[Documentation]    Validate the AtArchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    atArchiver
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtHeaderService Generic Commands
	[Documentation]    Validate the AtHeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    atHeaderService
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtMonochromator Generic Commands
	[Documentation]    Validate the AtMonochromator contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    atMonochromator
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate AtCamera Generic Commands
	[Documentation]    Validate the AtCamera contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    atcamera
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Calibrationelectrometer Generic Commands
	[Documentation]    Validate the Calibrationelectrometer contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    calibrationElectrometer
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Camera Generic Commands
	[Documentation]    Validate the Camera contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    camera
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate CatchupArchiver Generic Commands
	[Documentation]    Validate the CatchupArchiver contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    catchuparchiver
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Dome Generic Commands
	[Documentation]    Validate the Dome contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    dome
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeADB Generic Commands
	[Documentation]    Validate the DomeADB contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeADB
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeAPS Generic Commands
	[Documentation]    Validate the DomeAPS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeAPS
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeLouvers Generic Commands
	[Documentation]    Validate the DomeLouvers contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLouvers
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeLWS Generic Commands
	[Documentation]    Validate the DomeLWS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeLWS
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeMONCS Generic Commands
	[Documentation]    Validate the DomeMONCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeMONCS
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate DomeTHCS Generic Commands
	[Documentation]    Validate the DomeTHCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    domeTHCS
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate EEC Generic Commands
	[Documentation]    Validate the EEC contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    eec
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate HeaderService Generic Commands
	[Documentation]    Validate the HeaderService contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    headerService
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Hexapod Generic Commands
	[Documentation]    Validate the Hexapod contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    hexapod
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate M1M3 Generic Commands
	[Documentation]    Validate the M1M3 contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    m1m3
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate M2MS Generic Commands
	[Documentation]    Validate the M2MS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    m2ms
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate MTMount Generic Commands
	[Documentation]    Validate the MTMount contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTMount
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate OCS Generic Commands
	[Documentation]    Validate the OCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    ocs
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate PromptProcessing Generic Commands
	[Documentation]    Validate the PromptProcessing contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    promptprocessing
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Rotator Generic Commands
	[Documentation]    Validate the Rotator contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    rotator
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate Sequencer Generic Commands
	[Documentation]    Validate the Sequencer contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    sequencer
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate SummitFacility Generic Commands
	[Documentation]    Validate the SummitFacility contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    summitFacility
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TCS Generic Commands
	[Documentation]    Validate the TCS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcs
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate TcsOfc Generic Commands
	[Documentation]    Validate the TcsOfc contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    tcsOfc
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

Validate VMS Generic Commands
	[Documentation]    Validate the VMS contains all the required generic, or State Machine, commands.
	[Tags]    smoke
	Comment    Define CSC.
	Set Test Variable    ${csc}    vms
	Comment    Get the Commands for the CSC.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml
	@{Commands}=    Split to Lines    ${commands}
	:FOR    ${state}    IN    @{Generics}
	\    ${string}=    Catenate   SEPARATOR=    ${csc}    _command_     ${state}
	\    Run Keyword And Continue On Failure    Should Contain    ${Commands}    ${string}

*** Keywords ***
Create the Generic Array
	[Tags]    smoke
	@{Generics}=    Create List    start    stop    enable    disable    standby
	Log Many    @{Generics}
	Set Suite Variable    @{Generics}

