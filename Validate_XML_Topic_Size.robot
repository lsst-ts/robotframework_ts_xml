*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain a Topic greater than 65536 bytes in total size.
Suite Setup    Run Keywords    Create the DataType:Size Dictionary    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Event archiver_logevent_archiverEntitySummaryState Topic Size
	[Documentation]    Validate the archiver_logevent_archiverEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Archiver Event archiver_logevent_archiverEntityStartup Topic Size
	[Documentation]    Validate the archiver_logevent_archiverEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Archiver Event archiver_logevent_archiverEntityShutdown Topic Size
	[Documentation]    Validate the archiver_logevent_archiverEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Archiver Telemetry archiver_SequencerHeartbeat Topic Size
	[Documentation]    Validate the archiver_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Command camera_command_configure Topic Size
	[Documentation]    Validate the camera_command_configure topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Command camera_command_initGuiders Topic Size
	[Documentation]    Validate the camera_command_initGuiders topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Command camera_command_initImage Topic Size
	[Documentation]    Validate the camera_command_initImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Command camera_command_setFilter Topic Size
	[Documentation]    Validate the camera_command_setFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Command camera_command_takeImages Topic Size
	[Documentation]    Validate the camera_command_takeImages topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_ccsConfigured Topic Size
	[Documentation]    Validate the camera_logevent_ccsConfigured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endInitializeGuider Topic Size
	[Documentation]    Validate the camera_logevent_endInitializeGuider topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endInitializeImage Topic Size
	[Documentation]    Validate the camera_logevent_endInitializeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endLoadFilter Topic Size
	[Documentation]    Validate the camera_logevent_endLoadFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endReadout Topic Size
	[Documentation]    Validate the camera_logevent_endReadout topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endRotateCarousel Topic Size
	[Documentation]    Validate the camera_logevent_endRotateCarousel topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endSetFilter Topic Size
	[Documentation]    Validate the camera_logevent_endSetFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endShutterClose Topic Size
	[Documentation]    Validate the camera_logevent_endShutterClose topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endShutterOpen Topic Size
	[Documentation]    Validate the camera_logevent_endShutterOpen topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endTakeImage Topic Size
	[Documentation]    Validate the camera_logevent_endTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_endUnloadFilter Topic Size
	[Documentation]    Validate the camera_logevent_endUnloadFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_notReadyToTakeImage Topic Size
	[Documentation]    Validate the camera_logevent_notReadyToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_prepareToTakeImage Topic Size
	[Documentation]    Validate the camera_logevent_prepareToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_readyToTakeImage Topic Size
	[Documentation]    Validate the camera_logevent_readyToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startIntegration Topic Size
	[Documentation]    Validate the camera_logevent_startIntegration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startLoadFilter Topic Size
	[Documentation]    Validate the camera_logevent_startLoadFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startReadout Topic Size
	[Documentation]    Validate the camera_logevent_startReadout topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startRotateCarousel Topic Size
	[Documentation]    Validate the camera_logevent_startRotateCarousel topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startSetFilter Topic Size
	[Documentation]    Validate the camera_logevent_startSetFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startShutterClose Topic Size
	[Documentation]    Validate the camera_logevent_startShutterClose topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startShutterOpen Topic Size
	[Documentation]    Validate the camera_logevent_startShutterOpen topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Event camera_logevent_startUnloadFilter Topic Size
	[Documentation]    Validate the camera_logevent_startUnloadFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[22]/item)" -n ${folder}/sal_interfaces/camera/camera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[22]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[22]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Cold Topic Size
	[Documentation]    Validate the camera_Cold topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_SAS Topic Size
	[Documentation]    Validate the camera_SAS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_SDS Topic Size
	[Documentation]    Validate the camera_SDS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Filter Topic Size
	[Documentation]    Validate the camera_Filter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Prot Topic Size
	[Documentation]    Validate the camera_Prot topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_CCS Topic Size
	[Documentation]    Validate the camera_CCS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Purge Topic Size
	[Documentation]    Validate the camera_Purge topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_WDS Topic Size
	[Documentation]    Validate the camera_WDS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Cluster_Encoder Topic Size
	[Documentation]    Validate the camera_Cluster_Encoder topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Shutter Topic Size
	[Documentation]    Validate the camera_Shutter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_GDS Topic Size
	[Documentation]    Validate the camera_GDS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_GAS Topic Size
	[Documentation]    Validate the camera_GAS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_PCMS Topic Size
	[Documentation]    Validate the camera_PCMS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_Cryo Topic Size
	[Documentation]    Validate the camera_Cryo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Camera Telemetry camera_WAS Topic Size
	[Documentation]    Validate the camera_WAS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[15]/item)" -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Catchuparchiver Event catchuparchiver_logevent_catchuparchiverEntitySummaryState Topic Size
	[Documentation]    Validate the catchuparchiver_logevent_catchuparchiverEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Catchuparchiver Event catchuparchiver_logevent_catchuparchiverEntityStartup Topic Size
	[Documentation]    Validate the catchuparchiver_logevent_catchuparchiverEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Catchuparchiver Event catchuparchiver_logevent_catchuparchiverEntityShutdown Topic Size
	[Documentation]    Validate the catchuparchiver_logevent_catchuparchiverEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Catchuparchiver Telemetry catchuparchiver_SequencerHeartbeat Topic Size
	[Documentation]    Validate the catchuparchiver_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_Crawl Topic Size
	[Documentation]    Validate the dome_command_Crawl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_Move Topic Size
	[Documentation]    Validate the dome_command_Move topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_Park Topic Size
	[Documentation]    Validate the dome_command_Park topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_SetLouvers Topic Size
	[Documentation]    Validate the dome_command_SetLouvers topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_CloseShutter Topic Size
	[Documentation]    Validate the dome_command_CloseShutter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_OpenShutter Topic Size
	[Documentation]    Validate the dome_command_OpenShutter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Command dome_command_StopShutter Topic Size
	[Documentation]    Validate the dome_command_StopShutter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Event dome_logevent_StateChanged Topic Size
	[Documentation]    Validate the dome_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/dome/dome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Dome Telemetry dome_Summary Topic Size
	[Documentation]    Validate the dome_Summary topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Command domeADB_command_Crawl Topic Size
	[Documentation]    Validate the domeADB_command_Crawl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Command domeADB_command_Move Topic Size
	[Documentation]    Validate the domeADB_command_Move topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Command domeADB_command_VelocityMove Topic Size
	[Documentation]    Validate the domeADB_command_VelocityMove topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Command domeADB_command_Echo Topic Size
	[Documentation]    Validate the domeADB_command_Echo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeADB_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_DriveEnabled Topic Size
	[Documentation]    Validate the domeADB_logevent_DriveEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_DriveDisabled Topic Size
	[Documentation]    Validate the domeADB_logevent_DriveDisabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_DriveReady Topic Size
	[Documentation]    Validate the domeADB_logevent_DriveReady topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_DriveOverTemp Topic Size
	[Documentation]    Validate the domeADB_logevent_DriveOverTemp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_DriveFault Topic Size
	[Documentation]    Validate the domeADB_logevent_DriveFault topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_RotationEnabled Topic Size
	[Documentation]    Validate the domeADB_logevent_RotationEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_RotationPrevented Topic Size
	[Documentation]    Validate the domeADB_logevent_RotationPrevented topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_LockingPinEngaged Topic Size
	[Documentation]    Validate the domeADB_logevent_LockingPinEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_LockingPinDisengaged Topic Size
	[Documentation]    Validate the domeADB_logevent_LockingPinDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_BrakeEngaged Topic Size
	[Documentation]    Validate the domeADB_logevent_BrakeEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_BrakeDisengaged Topic Size
	[Documentation]    Validate the domeADB_logevent_BrakeDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_SpeedLimitReached Topic Size
	[Documentation]    Validate the domeADB_logevent_SpeedLimitReached topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_AccelerationLimitReached Topic Size
	[Documentation]    Validate the domeADB_logevent_AccelerationLimitReached topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_SpeedLimitSubsided Topic Size
	[Documentation]    Validate the domeADB_logevent_SpeedLimitSubsided topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_AccelerationLimitSubsided Topic Size
	[Documentation]    Validate the domeADB_logevent_AccelerationLimitSubsided topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeADB_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_MotionModeChanged Topic Size
	[Documentation]    Validate the domeADB_logevent_MotionModeChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Event domeADB_logevent_SubsystemError Topic Size
	[Documentation]    Validate the domeADB_logevent_SubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeADB Telemetry domeADB_status Topic Size
	[Documentation]    Validate the domeADB_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Command domeAPS_command_Close Topic Size
	[Documentation]    Validate the domeAPS_command_Close topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Command domeAPS_command_Open Topic Size
	[Documentation]    Validate the domeAPS_command_Open topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Command domeAPS_command_Echo Topic Size
	[Documentation]    Validate the domeAPS_command_Echo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeAPS_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_DriveEnabled Topic Size
	[Documentation]    Validate the domeAPS_logevent_DriveEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_DriveDisabled Topic Size
	[Documentation]    Validate the domeAPS_logevent_DriveDisabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_DriveReady Topic Size
	[Documentation]    Validate the domeAPS_logevent_DriveReady topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_DriveOverTemp Topic Size
	[Documentation]    Validate the domeAPS_logevent_DriveOverTemp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_DriveFault Topic Size
	[Documentation]    Validate the domeAPS_logevent_DriveFault topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_MovementEnabled Topic Size
	[Documentation]    Validate the domeAPS_logevent_MovementEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_MovementPrevented Topic Size
	[Documentation]    Validate the domeAPS_logevent_MovementPrevented topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_LockingPinEngaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_LockingPinEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_LockingPinDisengaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_LockingPinDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_LockingPinHomed Topic Size
	[Documentation]    Validate the domeAPS_logevent_LockingPinHomed topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_LockingPinFloating Topic Size
	[Documentation]    Validate the domeAPS_logevent_LockingPinFloating topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_CentralLockingPinEngaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_CentralLockingPinEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_CentralLockingPinDisengaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_CentralLockingPinDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_CentralLockingPinHomed Topic Size
	[Documentation]    Validate the domeAPS_logevent_CentralLockingPinHomed topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_CentralLockingPinFloating Topic Size
	[Documentation]    Validate the domeAPS_logevent_CentralLockingPinFloating topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_BrakeEngaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_BrakeEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_BrakeDisengaged Topic Size
	[Documentation]    Validate the domeAPS_logevent_BrakeDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeAPS_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Event domeAPS_logevent_APSSubsystemError Topic Size
	[Documentation]    Validate the domeAPS_logevent_APSSubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeAPS Telemetry domeAPS_status Topic Size
	[Documentation]    Validate the domeAPS_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Command domeLouvers_command_SetPosition Topic Size
	[Documentation]    Validate the domeLouvers_command_SetPosition topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Command domeLouvers_command_Echo Topic Size
	[Documentation]    Validate the domeLouvers_command_Echo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeLouvers_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_DriveEnabled Topic Size
	[Documentation]    Validate the domeLouvers_logevent_DriveEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_DriveDisabled Topic Size
	[Documentation]    Validate the domeLouvers_logevent_DriveDisabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_DriveReady Topic Size
	[Documentation]    Validate the domeLouvers_logevent_DriveReady topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_DriveOverTemp Topic Size
	[Documentation]    Validate the domeLouvers_logevent_DriveOverTemp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_DriveFault Topic Size
	[Documentation]    Validate the domeLouvers_logevent_DriveFault topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_MovementEnabled Topic Size
	[Documentation]    Validate the domeLouvers_logevent_MovementEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_MovementPrevented Topic Size
	[Documentation]    Validate the domeLouvers_logevent_MovementPrevented topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeLouvers_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Event domeLouvers_logevent_SubsystemError Topic Size
	[Documentation]    Validate the domeLouvers_logevent_SubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLouvers Telemetry domeLouvers_status Topic Size
	[Documentation]    Validate the domeLouvers_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Command domeLWS_command_CrawlLWS Topic Size
	[Documentation]    Validate the domeLWS_command_CrawlLWS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Command domeLWS_command_MoveLWS Topic Size
	[Documentation]    Validate the domeLWS_command_MoveLWS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Command domeLWS_command_VelocityMoveLWS Topic Size
	[Documentation]    Validate the domeLWS_command_VelocityMoveLWS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Command domeLWS_command_EchoLWS Topic Size
	[Documentation]    Validate the domeLWS_command_EchoLWS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeLWS_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_DriveEnabled Topic Size
	[Documentation]    Validate the domeLWS_logevent_DriveEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_DriveDisabled Topic Size
	[Documentation]    Validate the domeLWS_logevent_DriveDisabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_DriveReady Topic Size
	[Documentation]    Validate the domeLWS_logevent_DriveReady topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_DriveOverTemp Topic Size
	[Documentation]    Validate the domeLWS_logevent_DriveOverTemp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_DriveFault Topic Size
	[Documentation]    Validate the domeLWS_logevent_DriveFault topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_MovementEnabled Topic Size
	[Documentation]    Validate the domeLWS_logevent_MovementEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_MovementPrevented Topic Size
	[Documentation]    Validate the domeLWS_logevent_MovementPrevented topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_LockingPinEngaged Topic Size
	[Documentation]    Validate the domeLWS_logevent_LockingPinEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_LockingPinDisengaged Topic Size
	[Documentation]    Validate the domeLWS_logevent_LockingPinDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_LockingPinHomed Topic Size
	[Documentation]    Validate the domeLWS_logevent_LockingPinHomed topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_LockingPinFloating Topic Size
	[Documentation]    Validate the domeLWS_logevent_LockingPinFloating topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_BrakeEngaged Topic Size
	[Documentation]    Validate the domeLWS_logevent_BrakeEngaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_BrakeDisengaged Topic Size
	[Documentation]    Validate the domeLWS_logevent_BrakeDisengaged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_SpeedLimitReached Topic Size
	[Documentation]    Validate the domeLWS_logevent_SpeedLimitReached topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_AccelerationLimitReached Topic Size
	[Documentation]    Validate the domeLWS_logevent_AccelerationLimitReached topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_SpeedLimitSubsided Topic Size
	[Documentation]    Validate the domeLWS_logevent_SpeedLimitSubsided topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_AccelerationLimitSubsided Topic Size
	[Documentation]    Validate the domeLWS_logevent_AccelerationLimitSubsided topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeLWS_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_MotionModeChanged Topic Size
	[Documentation]    Validate the domeLWS_logevent_MotionModeChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Event domeLWS_logevent_SubsystemError Topic Size
	[Documentation]    Validate the domeLWS_logevent_SubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeLWS Telemetry domeLWS_status Topic Size
	[Documentation]    Validate the domeLWS_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Command domeMONCS_command_Echo Topic Size
	[Documentation]    Validate the domeMONCS_command_Echo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Event domeMONCS_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeMONCS_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Event domeMONCS_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeMONCS_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Event domeMONCS_logevent_SubsystemError Topic Size
	[Documentation]    Validate the domeMONCS_logevent_SubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Event domeMONCS_logevent_Interlock Topic Size
	[Documentation]    Validate the domeMONCS_logevent_Interlock topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeMONCS Telemetry domeMONCS_status Topic Size
	[Documentation]    Validate the domeMONCS_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Command domeTHCS_command_Echo Topic Size
	[Documentation]    Validate the domeTHCS_command_Echo topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Event domeTHCS_logevent_StateChanged Topic Size
	[Documentation]    Validate the domeTHCS_logevent_StateChanged topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Event domeTHCS_logevent_MovementEnabled Topic Size
	[Documentation]    Validate the domeTHCS_logevent_MovementEnabled topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Event domeTHCS_logevent_MovementPrevented Topic Size
	[Documentation]    Validate the domeTHCS_logevent_MovementPrevented topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Event domeTHCS_logevent_EchoResponse Topic Size
	[Documentation]    Validate the domeTHCS_logevent_EchoResponse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Event domeTHCS_logevent_SubsystemError Topic Size
	[Documentation]    Validate the domeTHCS_logevent_SubsystemError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate DomeTHCS Telemetry domeTHCS_status Topic Size
	[Documentation]    Validate the domeTHCS_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_configureAcceleration Topic Size
	[Documentation]    Validate the hexapod_command_configureAcceleration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_configureLimits Topic Size
	[Documentation]    Validate the hexapod_command_configureLimits topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_configureLut Topic Size
	[Documentation]    Validate the hexapod_command_configureLut topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_move Topic Size
	[Documentation]    Validate the hexapod_command_move topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_configureVelocity Topic Size
	[Documentation]    Validate the hexapod_command_configureVelocity topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_offset Topic Size
	[Documentation]    Validate the hexapod_command_offset topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_pivot Topic Size
	[Documentation]    Validate the hexapod_command_pivot topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Command hexapod_command_test Topic Size
	[Documentation]    Validate the hexapod_command_test topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_error Topic Size
	[Documentation]    Validate the hexapod_logevent_error topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_interlock Topic Size
	[Documentation]    Validate the hexapod_logevent_interlock topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_limit Topic Size
	[Documentation]    Validate the hexapod_logevent_limit topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_slewOK Topic Size
	[Documentation]    Validate the hexapod_logevent_slewOK topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_tempError Topic Size
	[Documentation]    Validate the hexapod_logevent_tempError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_trackLost Topic Size
	[Documentation]    Validate the hexapod_logevent_trackLost topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Event hexapod_logevent_tracking Topic Size
	[Documentation]    Validate the hexapod_logevent_tracking topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_Metrology Topic Size
	[Documentation]    Validate the hexapod_Metrology topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_LimitSensors Topic Size
	[Documentation]    Validate the hexapod_LimitSensors topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_Electrical Topic Size
	[Documentation]    Validate the hexapod_Electrical topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_Application Topic Size
	[Documentation]    Validate the hexapod_Application topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_Actuators Topic Size
	[Documentation]    Validate the hexapod_Actuators topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Hexapod Telemetry hexapod_TC Topic Size
	[Documentation]    Validate the hexapod_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Command m1m3_command_configure Topic Size
	[Documentation]    Validate the m1m3_command_configure topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Command m1m3_command_status Topic Size
	[Documentation]    Validate the m1m3_command_status topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Command m1m3_command_target Topic Size
	[Documentation]    Validate the m1m3_command_target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Command m1m3_command_update Topic Size
	[Documentation]    Validate the m1m3_command_update topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_interlock Topic Size
	[Documentation]    Validate the m1m3_logevent_interlock topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_limitError Topic Size
	[Documentation]    Validate the m1m3_logevent_limitError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_targetDone Topic Size
	[Documentation]    Validate the m1m3_logevent_targetDone topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_targetError Topic Size
	[Documentation]    Validate the m1m3_logevent_targetError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_tempError Topic Size
	[Documentation]    Validate the m1m3_logevent_tempError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_updateDone Topic Size
	[Documentation]    Validate the m1m3_logevent_updateDone topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Event m1m3_logevent_updateError Topic Size
	[Documentation]    Validate the m1m3_logevent_updateError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_LimitSensors Topic Size
	[Documentation]    Validate the m1m3_LimitSensors topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Metrology Topic Size
	[Documentation]    Validate the m1m3_Metrology topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Application Topic Size
	[Documentation]    Validate the m1m3_Application topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_LUT Topic Size
	[Documentation]    Validate the m1m3_LUT topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Actuators Topic Size
	[Documentation]    Validate the m1m3_Actuators topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_TC Topic Size
	[Documentation]    Validate the m1m3_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Electrical Topic Size
	[Documentation]    Validate the m1m3_Electrical topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Surface Topic Size
	[Documentation]    Validate the m1m3_Surface topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M1M3 Telemetry m1m3_Support Topic Size
	[Documentation]    Validate the m1m3_Support topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Command m2ms_command_ApplyBendingMode Topic Size
	[Documentation]    Validate the m2ms_command_ApplyBendingMode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Command m2ms_command_ApplyForce Topic Size
	[Documentation]    Validate the m2ms_command_ApplyForce topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Command m2ms_command_SetCorrectionMode Topic Size
	[Documentation]    Validate the m2ms_command_SetCorrectionMode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Command m2ms_command_PositionMirror Topic Size
	[Documentation]    Validate the m2ms_command_PositionMirror topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Command m2ms_command_MoveAxialActuator Topic Size
	[Documentation]    Validate the m2ms_command_MoveAxialActuator topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Event m2ms_logevent_M2SummaryState Topic Size
	[Documentation]    Validate the m2ms_logevent_M2SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Event m2ms_logevent_M2DetailedState Topic Size
	[Documentation]    Validate the m2ms_logevent_M2DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Event m2ms_logevent_M2FaultState Topic Size
	[Documentation]    Validate the m2ms_logevent_M2FaultState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Event m2ms_logevent_M2AssemblyInPosition Topic Size
	[Documentation]    Validate the m2ms_logevent_M2AssemblyInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_MirrorPositionMeasured Topic Size
	[Documentation]    Validate the m2ms_MirrorPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_AxialForcesMeasured Topic Size
	[Documentation]    Validate the m2ms_AxialForcesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_TangentForcesMeasured Topic Size
	[Documentation]    Validate the m2ms_TangentForcesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_ZenithAngleMeasured Topic Size
	[Documentation]    Validate the m2ms_ZenithAngleMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_AxialActuatorAbsolutePositionSteps Topic Size
	[Documentation]    Validate the m2ms_AxialActuatorAbsolutePositionSteps topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_TangentActuatorAbsolutePositionSteps Topic Size
	[Documentation]    Validate the m2ms_TangentActuatorAbsolutePositionSteps topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured Topic Size
	[Documentation]    Validate the m2ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured Topic Size
	[Documentation]    Validate the m2ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_PowerStatus Topic Size
	[Documentation]    Validate the m2ms_PowerStatus topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_TemperaturesMeasured Topic Size
	[Documentation]    Validate the m2ms_TemperaturesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_RawDisplacement Topic Size
	[Documentation]    Validate the m2ms_RawDisplacement topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_StepVectorUpdate Topic Size
	[Documentation]    Validate the m2ms_StepVectorUpdate topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_TargetForces Topic Size
	[Documentation]    Validate the m2ms_TargetForces topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_SystemStatus Topic Size
	[Documentation]    Validate the m2ms_SystemStatus topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_RawTelemetry Topic Size
	[Documentation]    Validate the m2ms_RawTelemetry topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[15]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate M2MS Telemetry m2ms_ActuatorLimitSwitches Topic Size
	[Documentation]    Validate the m2ms_ActuatorLimitSwitches topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[16]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_closeMirrorCover Topic Size
	[Documentation]    Validate the MTMount_command_closeMirrorCover topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_configure Topic Size
	[Documentation]    Validate the MTMount_command_configure topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_disableCamWrap Topic Size
	[Documentation]    Validate the MTMount_command_disableCamWrap topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_enableCamWrap Topic Size
	[Documentation]    Validate the MTMount_command_enableCamWrap topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_moveToTarget Topic Size
	[Documentation]    Validate the MTMount_command_moveToTarget topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_openMirrorCover Topic Size
	[Documentation]    Validate the MTMount_command_openMirrorCover topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_trackTarget Topic Size
	[Documentation]    Validate the MTMount_command_trackTarget topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Command MTMount_command_clearerror Topic Size
	[Documentation]    Validate the MTMount_command_clearerror topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Event MTMount_logevent_mountState Topic Size
	[Documentation]    Validate the MTMount_logevent_mountState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Event MTMount_logevent_mountWarning Topic Size
	[Documentation]    Validate the MTMount_logevent_mountWarning topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Event MTMount_logevent_mountError Topic Size
	[Documentation]    Validate the MTMount_logevent_mountError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Event MTMount_logevent_mountInPosition Topic Size
	[Documentation]    Validate the MTMount_logevent_mountInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Az Topic Size
	[Documentation]    Validate the MTMount_Az topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Alt Topic Size
	[Documentation]    Validate the MTMount_Alt topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Az_CW Topic Size
	[Documentation]    Validate the MTMount_Az_CW topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Az_OSS Topic Size
	[Documentation]    Validate the MTMount_Az_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Alt_OSS Topic Size
	[Documentation]    Validate the MTMount_Alt_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Az_TC Topic Size
	[Documentation]    Validate the MTMount_Az_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Alt_TC Topic Size
	[Documentation]    Validate the MTMount_Alt_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Bal Topic Size
	[Documentation]    Validate the MTMount_Bal topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_MC Topic Size
	[Documentation]    Validate the MTMount_MC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Cam_CW Topic Size
	[Documentation]    Validate the MTMount_Cam_CW topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_Cab_TC Topic Size
	[Documentation]    Validate the MTMount_Cab_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_DP_1 Topic Size
	[Documentation]    Validate the MTMount_DP_1 topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_DP_2 Topic Size
	[Documentation]    Validate the MTMount_DP_2 topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate MTMount Telemetry MTMount_MotionParameters Topic Size
	[Documentation]    Validate the MTMount_MotionParameters topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Command ocs_command_sequence Topic Size
	[Documentation]    Validate the ocs_command_sequence topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Command ocs_command_script Topic Size
	[Documentation]    Validate the ocs_command_script topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsEntitySummaryState Topic Size
	[Documentation]    Validate the ocs_logevent_ocsEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsEntityStartup Topic Size
	[Documentation]    Validate the ocs_logevent_ocsEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsEntityShutdown Topic Size
	[Documentation]    Validate the ocs_logevent_ocsEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsCommandIssued Topic Size
	[Documentation]    Validate the ocs_logevent_ocsCommandIssued topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsCommandStatus Topic Size
	[Documentation]    Validate the ocs_logevent_ocsCommandStatus topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsCurrentScript Topic Size
	[Documentation]    Validate the ocs_logevent_ocsCurrentScript topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsNextScript Topic Size
	[Documentation]    Validate the ocs_logevent_ocsNextScript topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsScriptStart Topic Size
	[Documentation]    Validate the ocs_logevent_ocsScriptStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsScriptEnd Topic Size
	[Documentation]    Validate the ocs_logevent_ocsScriptEnd topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsScriptError Topic Size
	[Documentation]    Validate the ocs_logevent_ocsScriptError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Event ocs_logevent_ocsScriptEntititesInUse Topic Size
	[Documentation]    Validate the ocs_logevent_ocsScriptEntititesInUse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate OCS Telemetry ocs_SequencerHeartbeat Topic Size
	[Documentation]    Validate the ocs_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Processingcluster Event processingcluster_logevent_processingclusterEntitySummaryState Topic Size
	[Documentation]    Validate the processingcluster_logevent_processingclusterEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Processingcluster Event processingcluster_logevent_processingclusterEntityStartup Topic Size
	[Documentation]    Validate the processingcluster_logevent_processingclusterEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Processingcluster Event processingcluster_logevent_processingclusterEntityShutdown Topic Size
	[Documentation]    Validate the processingcluster_logevent_processingclusterEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Processingcluster Telemetry processingcluster_SequencerHeartbeat Topic Size
	[Documentation]    Validate the processingcluster_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Command rotator_command_configureAcceleration Topic Size
	[Documentation]    Validate the rotator_command_configureAcceleration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Command rotator_command_configureVelocity Topic Size
	[Documentation]    Validate the rotator_command_configureVelocity topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Command rotator_command_move Topic Size
	[Documentation]    Validate the rotator_command_move topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Command rotator_command_track Topic Size
	[Documentation]    Validate the rotator_command_track topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Command rotator_command_test Topic Size
	[Documentation]    Validate the rotator_command_test topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_error Topic Size
	[Documentation]    Validate the rotator_logevent_error topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_interlock Topic Size
	[Documentation]    Validate the rotator_logevent_interlock topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_limit Topic Size
	[Documentation]    Validate the rotator_logevent_limit topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_moveOK Topic Size
	[Documentation]    Validate the rotator_logevent_moveOK topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_tempError Topic Size
	[Documentation]    Validate the rotator_logevent_tempError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_trackLost Topic Size
	[Documentation]    Validate the rotator_logevent_trackLost topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Event rotator_logevent_tracking Topic Size
	[Documentation]    Validate the rotator_logevent_tracking topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Telemetry rotator_LimitSensors Topic Size
	[Documentation]    Validate the rotator_LimitSensors topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Telemetry rotator_Position Topic Size
	[Documentation]    Validate the rotator_Position topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Telemetry rotator_Electrical Topic Size
	[Documentation]    Validate the rotator_Electrical topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Rotator Telemetry rotator_TC Topic Size
	[Documentation]    Validate the rotator_TC topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_timeHandler Topic Size
	[Documentation]    Validate the scheduler_timeHandler topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_cloud Topic Size
	[Documentation]    Validate the scheduler_cloud topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_seeing Topic Size
	[Documentation]    Validate the scheduler_seeing topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_filterSwap Topic Size
	[Documentation]    Validate the scheduler_filterSwap topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_schedulerConfig Topic Size
	[Documentation]    Validate the scheduler_schedulerConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_driverConfig Topic Size
	[Documentation]    Validate the scheduler_driverConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_field Topic Size
	[Documentation]    Validate the scheduler_field topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_obsSiteConfig Topic Size
	[Documentation]    Validate the scheduler_obsSiteConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_telescopeConfig Topic Size
	[Documentation]    Validate the scheduler_telescopeConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_rotatorConfig Topic Size
	[Documentation]    Validate the scheduler_rotatorConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_domeConfig Topic Size
	[Documentation]    Validate the scheduler_domeConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_cameraConfig Topic Size
	[Documentation]    Validate the scheduler_cameraConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_slewConfig Topic Size
	[Documentation]    Validate the scheduler_slewConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_opticsLoopCorrConfig Topic Size
	[Documentation]    Validate the scheduler_opticsLoopCorrConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_parkConfig Topic Size
	[Documentation]    Validate the scheduler_parkConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[15]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_generalPropConfig Topic Size
	[Documentation]    Validate the scheduler_generalPropConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[16]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_sequencePropConfig Topic Size
	[Documentation]    Validate the scheduler_sequencePropConfig topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[17]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[17]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_blockPusher Topic Size
	[Documentation]    Validate the scheduler_blockPusher topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[18]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[18]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_observatoryState Topic Size
	[Documentation]    Validate the scheduler_observatoryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[19]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[19]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_target Topic Size
	[Documentation]    Validate the scheduler_target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[20]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[20]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_observation Topic Size
	[Documentation]    Validate the scheduler_observation topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[21]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[21]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_interestedProposal Topic Size
	[Documentation]    Validate the scheduler_interestedProposal topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[22]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[22]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[22]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_parameters Topic Size
	[Documentation]    Validate the scheduler_parameters topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[23]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[23]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[23]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_Application Topic Size
	[Documentation]    Validate the scheduler_Application topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[24]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[24]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[24]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_program Topic Size
	[Documentation]    Validate the scheduler_program topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[25]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[25]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[25]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_progress Topic Size
	[Documentation]    Validate the scheduler_progress topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[26]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[26]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[26]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_rankingData Topic Size
	[Documentation]    Validate the scheduler_rankingData topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[27]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[27]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[27]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_econstraints Topic Size
	[Documentation]    Validate the scheduler_econstraints topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[28]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[28]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[28]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Scheduler Telemetry scheduler_iconstraints Topic Size
	[Documentation]    Validate the scheduler_iconstraints topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[29]/item)" -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[29]/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[29]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Command sequencer_command_sequence Topic Size
	[Documentation]    Validate the sequencer_command_sequence topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Command sequencer_command_script Topic Size
	[Documentation]    Validate the sequencer_command_script topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerEntitySummaryState Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerEntityStartup Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerEntityShutdown Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerCommandIssued Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerCommandIssued topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerCommandStatus Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerCommandStatus topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerCurrentScript Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerCurrentScript topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerNextScript Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerNextScript topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerScriptStart Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerScriptStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerScriptEnd Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerScriptEnd topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerScriptError Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerScriptError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Event sequencer_logevent_sequencerScriptEntititesInUse Topic Size
	[Documentation]    Validate the sequencer_logevent_sequencerScriptEntititesInUse topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate Sequencer Telemetry sequencer_SequencerHeartbeat Topic Size
	[Documentation]    Validate the sequencer_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Command tcs_command_wfpCalculate Topic Size
	[Documentation]    Validate the tcs_command_wfpCalculate topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Command tcs_command_wfpSimulate Topic Size
	[Documentation]    Validate the tcs_command_wfpSimulate topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Command tcs_command_injectError Topic Size
	[Documentation]    Validate the tcs_command_injectError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_wfpDataReady Topic Size
	[Documentation]    Validate the tcs_logevent_wfpDataReady topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_zemaxError Topic Size
	[Documentation]    Validate the tcs_logevent_zemaxError topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_InternalCommand Topic Size
	[Documentation]    Validate the tcs_logevent_InternalCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_DetailedState Topic Size
	[Documentation]    Validate the tcs_logevent_DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_Heartbeat Topic Size
	[Documentation]    Validate the tcs_logevent_Heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_LoopTimeOutOfRange Topic Size
	[Documentation]    Validate the tcs_logevent_LoopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_RejectedCommand Topic Size
	[Documentation]    Validate the tcs_logevent_RejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Event tcs_logevent_HeartbeatIn Topic Size
	[Documentation]    Validate the tcs_logevent_HeartbeatIn topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_PointingModel Topic Size
	[Documentation]    Validate the tcs_kernel_PointingModel topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_AOCS Topic Size
	[Documentation]    Validate the tcs_AOCS topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_TimeKeeper Topic Size
	[Documentation]    Validate the tcs_kernel_TimeKeeper topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_Site Topic Size
	[Documentation]    Validate the tcs_kernel_Site topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_Target Topic Size
	[Documentation]    Validate the tcs_kernel_Target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_PointingControl Topic Size
	[Documentation]    Validate the tcs_kernel_PointingControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_TrackRefSys Topic Size
	[Documentation]    Validate the tcs_kernel_TrackRefSys topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_ZEMAX Topic Size
	[Documentation]    Validate the tcs_ZEMAX topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_PointingLog Topic Size
	[Documentation]    Validate the tcs_kernel_PointingLog topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_DawdleFilter Topic Size
	[Documentation]    Validate the tcs_kernel_DawdleFilter topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_OpticsVt Topic Size
	[Documentation]    Validate the tcs_kernel_OpticsVt topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_WEP Topic Size
	[Documentation]    Validate the tcs_WEP topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_TrackingTarget Topic Size
	[Documentation]    Validate the tcs_kernel_TrackingTarget topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_kernel_FK5Target Topic Size
	[Documentation]    Validate the tcs_kernel_FK5Target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_LoopTime_ms Topic Size
	[Documentation]    Validate the tcs_LoopTime_ms topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[15]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

Validate TCS Telemetry tcs_Timestamp Topic Size
	[Documentation]    Validate the tcs_Timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[16]/item)" -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Log Many    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < 65536

*** Keywords ***
Create the DataType:Size Dictionary
	[Tags]    smoke
	&{dict}=    Create Dictionary    boolean=2    char=1    double=8    float=4    int=4    long=4    short=2    string=1    ushort=2    ulong=4
	Log Many    &{dict}
	Set Suite Variable    &{dict}

