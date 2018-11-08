*** Settings ***
Documentation    Validate the Generics XML definition file contains the required topics.
Suite Setup    Run Keywords    Create the Generic Commands Array    AND    Create the Generic Events Array    AND
...    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
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

Validate ATArchiver_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATArchiver_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATArchiver_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATArchiver_logevent_${item}

Validate ATArchiver_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATArchiver_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATArchiver_command_${generic}

Validate ATCamera_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATCamera_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATCamera_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATCamera_logevent_${item}

Validate ATCamera_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATCamera_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATCamera_command_${generic}

Validate ATDome_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATDome_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATDome_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATDome_logevent_${item}

Validate ATDome_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATDome_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATDome_command_${generic}

Validate ATHeaderService_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATHeaderService_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATHeaderService_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATHeaderService_logevent_${item}

Validate ATMCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATMCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATMCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATMCS_logevent_${item}

Validate ATMCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATMCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATMCS_command_${generic}

Validate ATMonochromator_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATMonochromator_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATMonochromator_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATMonochromator_logevent_${item}

Validate ATMonochromator_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATMonochromator_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATMonochromator_command_${generic}

Validate ATPneumatics_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATPneumatics_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATPneumatics_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATPneumatics_logevent_${item}

Validate ATPneumatics_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATPneumatics_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATPneumatics_command_${generic}

Validate ATSpectrograph_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATSpectrograph_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATSpectrograph_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATSpectrograph_logevent_${item}

Validate ATSpectrograph_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATSpectrograph_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATSpectrograph_command_${generic}

Validate ATTCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATTCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATTCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATTCS_logevent_${item}

Validate ATTCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATTCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATTCS_command_${generic}

Validate ATThermoelectricCooler_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATThermoelectricCooler_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATThermoelectricCooler_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATThermoelectricCooler_logevent_${item}

Validate ATThermoelectricCooler_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATThermoelectricCooler_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATThermoelectricCooler_command_${generic}

Validate ATWhiteLight_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the ATWhiteLight_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    ATWhiteLight_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    ATWhiteLight_logevent_${item}

Validate ATWhiteLight_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the ATWhiteLight_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    ATWhiteLight_command_${generic}

Validate CatchupArchiver_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the CatchupArchiver_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    CatchupArchiver_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    CatchupArchiver_logevent_${item}

Validate CBP_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the CBP_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    CBP_command_${generic}

Validate Dome_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Dome_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Dome_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Dome_logevent_${item}

Validate Dome_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Dome_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Dome_command_${generic}

Validate DomeADB_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeADB_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeADB_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeADB_logevent_${item}

Validate DomeADB_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeADB_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeADB_command_${generic}

Validate DomeAPS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeAPS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeAPS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeAPS_logevent_${item}

Validate DomeAPS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeAPS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeAPS_command_${generic}

Validate DomeLouvers_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeLouvers_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeLouvers_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeLouvers_logevent_${item}

Validate DomeLouvers_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeLouvers_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeLouvers_command_${generic}

Validate DomeLWS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeLWS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeLWS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeLWS_logevent_${item}

Validate DomeLWS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeLWS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeLWS_command_${generic}

Validate DomeMONCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeMONCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeMONCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeMONCS_logevent_${item}

Validate DomeMONCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeMONCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeMONCS_command_${generic}

Validate DomeTHCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the DomeTHCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    DomeTHCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    DomeTHCS_logevent_${item}

Validate DomeTHCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the DomeTHCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    DomeTHCS_command_${generic}

Validate EEC_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the EEC_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    EEC_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    EEC_logevent_${item}

Validate EEC_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the EEC_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EEC/EEC_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    EEC_command_${generic}

Validate EFD_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the EFD_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    EFD_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    EFD_logevent_${item}

Validate Electrometer_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Electrometer_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Electrometer_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Electrometer_logevent_${item}

Validate Electrometer_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Electrometer_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Electrometer_command_${generic}

Validate FiberSpectrograph_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the FiberSpectrograph_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    FiberSpectrograph_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    FiberSpectrograph_logevent_${item}

Validate FiberSpectrograph_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the FiberSpectrograph_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    FiberSpectrograph_command_${generic}

Validate Hexapod_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Hexapod_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Hexapod_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Hexapod_logevent_${item}

Validate Hexapod_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Hexapod_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Hexapod_command_${generic}

Validate LinearStage_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the LinearStage_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    LinearStage_command_${generic}

Validate MTArchiver_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTArchiver_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTArchiver_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTArchiver_logevent_${item}

Validate MTCamera_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTCamera_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTCamera_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTCamera_logevent_${item}

Validate MTCamera_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTCamera_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTCamera_command_${generic}

Validate MTHeaderService_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTHeaderService_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTHeaderService_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTHeaderService_logevent_${item}

Validate MTM1M3_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTM1M3_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTM1M3_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTM1M3_logevent_${item}

Validate MTM1M3_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTM1M3_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTM1M3_command_${generic}

Validate MTM2_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTM2_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTM2_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTM2_logevent_${item}

Validate MTM2_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTM2_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTM2_command_${generic}

Validate MTMount_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTMount_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTMount_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTMount_logevent_${item}

Validate MTMount_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTMount_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTMount_command_${generic}

Validate MTOFC_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTOFC_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTOFC_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTOFC_logevent_${item}

Validate MTOFC_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTOFC_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTOFC_command_${generic}

Validate MTWEP_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTWEP_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTWEP/MTWEP_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTWEP_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTWEP_logevent_${item}

Validate OCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the OCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    OCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    OCS_logevent_${item}

Validate OCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the OCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    OCS_command_${generic}

Validate PromptProcessing_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the PromptProcessing_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    PromptProcessing_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    PromptProcessing_logevent_${item}

Validate Rotator_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Rotator_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Rotator_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Rotator_logevent_${item}

Validate Rotator_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Rotator_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Rotator_command_${generic}

Validate Scheduler_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Scheduler_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Scheduler_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Scheduler_logevent_${item}

Validate Sequencer_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Sequencer_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Sequencer_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Sequencer_logevent_${item}

Validate Sequencer_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Sequencer_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Sequencer_command_${generic}

Validate SummitFacility_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the SummitFacility_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    SummitFacility_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    SummitFacility_logevent_${item}

Validate MTTCS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTTCS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTTCS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTTCS_logevent_${item}

Validate MTTCS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTTCS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTTCS_command_${generic}

Validate Test_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the Test_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    Test_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    Test_logevent_${item}

Validate Test_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the Test_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    Test_command_${generic}

Validate TunableLaser_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the TunableLaser_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    TunableLaser_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    TunableLaser_logevent_${item}

Validate TunableLaser_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the TunableLaser_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    TunableLaser_command_${generic}

Validate MTVMS_Events.xml Does Not Contain Generic Events
	[Documentation]    Validate the MTVMS_Events.xml does not contain Generic Events.
	[Tags]    smoke    
	Comment    Get the CSC Events.
	${events}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml
	Log    ${events}
	:FOR    ${item}    IN    @{GenericEvents}
	\    Log Many    ${events}    MTVMS_logevent_${item}
	\    Run Keyword And Continue On Failure    Should Not Contain    ${events}    MTVMS_logevent_${item}

Validate MTVMS_Commands.xml Does Not Contain Generic Commands
	[Documentation]    Validate the MTVMS_Commands.xml does not contain Generic Commands.
	[Tags]    smoke    
	Comment    Get the CSC Commands.
	${commands}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml
	:FOR    ${generic}    IN    @{GenericCommands}
	\    Run Keyword And Continue On Failure    Test Commands    ${commands}    MTVMS_command_${generic}

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

Test Commands
	[Arguments]    ${commands}    ${generic}
	Comment    Convert to list.
	@{commands}=    Split String    ${commands}
	:FOR    ${item}    IN    @{commands}
	\    Log Many    ${item}    ${generic}
	\    Should Not Match    ${item}    ${generic}

