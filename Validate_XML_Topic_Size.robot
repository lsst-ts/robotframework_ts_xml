*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain a Topic greater than 65536 bytes in total size or that exceeds 4096 total arguments.
Suite Setup    Run Keywords    Create the DataType:Size Dictionary    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Command archiver_command_setValue Topic Byte Size
	[Documentation]    Validate the archiver_command_setValue topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_setValue Topic Columns
	[Documentation]    Validate the archiver_command_setValue topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_start Topic Byte Size
	[Documentation]    Validate the archiver_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_start Topic Columns
	[Documentation]    Validate the archiver_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_exitControl Topic Byte Size
	[Documentation]    Validate the archiver_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_exitControl Topic Columns
	[Documentation]    Validate the archiver_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_abort Topic Byte Size
	[Documentation]    Validate the archiver_command_abort topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_abort Topic Columns
	[Documentation]    Validate the archiver_command_abort topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_disable Topic Byte Size
	[Documentation]    Validate the archiver_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_disable Topic Columns
	[Documentation]    Validate the archiver_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_enable Topic Byte Size
	[Documentation]    Validate the archiver_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_enable Topic Columns
	[Documentation]    Validate the archiver_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_enterControl Topic Byte Size
	[Documentation]    Validate the archiver_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_enterControl Topic Columns
	[Documentation]    Validate the archiver_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Command archiver_command_standby Topic Byte Size
	[Documentation]    Validate the archiver_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Command archiver_command_standby Topic Columns
	[Documentation]    Validate the archiver_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_archiverEntityShutdown Topic Byte Size
	[Documentation]    Validate the archiver_logevent_archiverEntityShutdown topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_archiverEntityShutdown Topic Columns
	[Documentation]    Validate the archiver_logevent_archiverEntityShutdown topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_DetailedState Topic Byte Size
	[Documentation]    Validate the archiver_logevent_DetailedState topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_DetailedState Topic Columns
	[Documentation]    Validate the archiver_logevent_DetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_archiverEntityStartup Topic Byte Size
	[Documentation]    Validate the archiver_logevent_archiverEntityStartup topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_archiverEntityStartup Topic Columns
	[Documentation]    Validate the archiver_logevent_archiverEntityStartup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_SummaryState Topic Byte Size
	[Documentation]    Validate the archiver_logevent_SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_SummaryState Topic Columns
	[Documentation]    Validate the archiver_logevent_SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_SettingsApplied Topic Byte Size
	[Documentation]    Validate the archiver_logevent_SettingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_SettingsApplied Topic Columns
	[Documentation]    Validate the archiver_logevent_SettingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_SettingVersions Topic Byte Size
	[Documentation]    Validate the archiver_logevent_SettingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_SettingVersions Topic Columns
	[Documentation]    Validate the archiver_logevent_SettingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_AppliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the archiver_logevent_AppliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_AppliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the archiver_logevent_AppliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the archiver_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the archiver_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_archiverEntitySummaryState Topic Byte Size
	[Documentation]    Validate the archiver_logevent_archiverEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Event archiver_logevent_archiverEntitySummaryState Topic Columns
	[Documentation]    Validate the archiver_logevent_archiverEntitySummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Telemetry archiver_SequencerHeartbeat Topic Byte Size
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
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Archiver Telemetry archiver_SequencerHeartbeat Topic Columns
	[Documentation]    Validate the archiver_SequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_abort Topic Byte Size
	[Documentation]    Validate the atArchiver_command_abort topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_abort Topic Columns
	[Documentation]    Validate the atArchiver_command_abort topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_enable Topic Byte Size
	[Documentation]    Validate the atArchiver_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_enable Topic Columns
	[Documentation]    Validate the atArchiver_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_disable Topic Byte Size
	[Documentation]    Validate the atArchiver_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_disable Topic Columns
	[Documentation]    Validate the atArchiver_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_standby Topic Byte Size
	[Documentation]    Validate the atArchiver_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_standby Topic Columns
	[Documentation]    Validate the atArchiver_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_exitControl Topic Byte Size
	[Documentation]    Validate the atArchiver_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_exitControl Topic Columns
	[Documentation]    Validate the atArchiver_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_start Topic Byte Size
	[Documentation]    Validate the atArchiver_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_start Topic Columns
	[Documentation]    Validate the atArchiver_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_enterControl Topic Byte Size
	[Documentation]    Validate the atArchiver_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_enterControl Topic Columns
	[Documentation]    Validate the atArchiver_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Command atArchiver_command_setValue Topic Byte Size
	[Documentation]    Validate the atArchiver_command_setValue topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Command atArchiver_command_setValue Topic Columns
	[Documentation]    Validate the atArchiver_command_setValue topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_DetailedState Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_DetailedState Topic Columns
	[Documentation]    Validate the atArchiver_logevent_DetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_archiverEntityStartup Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_archiverEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_archiverEntityStartup Topic Columns
	[Documentation]    Validate the atArchiver_logevent_archiverEntityStartup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_SettingVersions Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_SettingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_SettingVersions Topic Columns
	[Documentation]    Validate the atArchiver_logevent_SettingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_archiverEntitySummaryState Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_archiverEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_archiverEntitySummaryState Topic Columns
	[Documentation]    Validate the atArchiver_logevent_archiverEntitySummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the atArchiver_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_archiverEntityShutdown Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_archiverEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_archiverEntityShutdown Topic Columns
	[Documentation]    Validate the atArchiver_logevent_archiverEntityShutdown topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_SummaryState Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_SummaryState Topic Columns
	[Documentation]    Validate the atArchiver_logevent_SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_AppliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_AppliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_AppliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atArchiver_logevent_AppliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_SettingsApplied Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_SettingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Event atArchiver_logevent_SettingsApplied Topic Columns
	[Documentation]    Validate the atArchiver_logevent_SettingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Telemetry atArchiver_SequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the atArchiver_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtArchiver Telemetry atArchiver_SequencerHeartbeat Topic Columns
	[Documentation]    Validate the atArchiver_SequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_enable Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_enable Topic Columns
	[Documentation]    Validate the atHeaderService_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_exitControl Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_exitControl Topic Columns
	[Documentation]    Validate the atHeaderService_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_start Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_start Topic Columns
	[Documentation]    Validate the atHeaderService_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_standby Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_standby Topic Columns
	[Documentation]    Validate the atHeaderService_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_disable Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_disable Topic Columns
	[Documentation]    Validate the atHeaderService_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Command atHeaderService_command_enterControl Topic Byte Size
	[Documentation]    Validate the atHeaderService_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Command atHeaderService_command_enterControl Topic Columns
	[Documentation]    Validate the atHeaderService_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_Heartbeat Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_Heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_Heartbeat Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_Heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_AppliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_AppliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_AppliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_AppliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_LoopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_LoopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_LoopTimeOutOfRange Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_LoopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_RejectedCommand Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_RejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_RejectedCommand Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_RejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_SettingsApplied Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_SettingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_SettingsApplied Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_SettingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_DetailedState Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_DetailedState Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_DetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_LargeFileObjectAvailable Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_LargeFileObjectAvailable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_LargeFileObjectAvailable Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_LargeFileObjectAvailable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_SummaryState Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_SummaryState Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Event atHeaderService_logevent_SettingVersions Topic Byte Size
	[Documentation]    Validate the atHeaderService_logevent_SettingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Event atHeaderService_logevent_SettingVersions Topic Columns
	[Documentation]    Validate the atHeaderService_logevent_SettingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Telemetry atHeaderService_LoopTime_ms Topic Byte Size
	[Documentation]    Validate the atHeaderService_LoopTime_ms topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Telemetry atHeaderService_LoopTime_ms Topic Columns
	[Documentation]    Validate the atHeaderService_LoopTime_ms topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtHeaderService Telemetry atHeaderService_Timestamp Topic Byte Size
	[Documentation]    Validate the atHeaderService_Timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtHeaderService Telemetry atHeaderService_Timestamp Topic Columns
	[Documentation]    Validate the atHeaderService_Timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_disable Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_disable Topic Columns
	[Documentation]    Validate the atMonochromator_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_enable Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_enable Topic Columns
	[Documentation]    Validate the atMonochromator_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_exitControl Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_exitControl Topic Columns
	[Documentation]    Validate the atMonochromator_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_standby Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_standby Topic Columns
	[Documentation]    Validate the atMonochromator_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_start Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_start Topic Columns
	[Documentation]    Validate the atMonochromator_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_enterControl Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_enterControl Topic Columns
	[Documentation]    Validate the atMonochromator_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_ChangeWavelength Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_ChangeWavelength topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_ChangeWavelength Topic Columns
	[Documentation]    Validate the atMonochromator_command_ChangeWavelength topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_CalibrateWavelength Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_CalibrateWavelength topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_CalibrateWavelength Topic Columns
	[Documentation]    Validate the atMonochromator_command_CalibrateWavelength topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_Power Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_Power topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_Power Topic Columns
	[Documentation]    Validate the atMonochromator_command_Power topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_SelectGrating Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_SelectGrating topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_SelectGrating Topic Columns
	[Documentation]    Validate the atMonochromator_command_SelectGrating topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_PowerWhiteLight Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_PowerWhiteLight topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_PowerWhiteLight Topic Columns
	[Documentation]    Validate the atMonochromator_command_PowerWhiteLight topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_SetCoolingTemperature Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_SetCoolingTemperature topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_SetCoolingTemperature Topic Columns
	[Documentation]    Validate the atMonochromator_command_SetCoolingTemperature topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_ChangeLightIntensity Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_ChangeLightIntensity topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_ChangeLightIntensity Topic Columns
	[Documentation]    Validate the atMonochromator_command_ChangeLightIntensity topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_ChangeSlitWidth Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_ChangeSlitWidth topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_ChangeSlitWidth Topic Columns
	[Documentation]    Validate the atMonochromator_command_ChangeSlitWidth topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Command atMonochromator_command_updateMonochromatorSetup Topic Byte Size
	[Documentation]    Validate the atMonochromator_command_updateMonochromatorSetup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[15]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Command atMonochromator_command_updateMonochromatorSetup Topic Columns
	[Documentation]    Validate the atMonochromator_command_updateMonochromatorSetup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[15]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_AppliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_AppliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_AppliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_AppliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SettingVersions Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SettingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SettingVersions Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SettingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SummaryState Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SummaryState Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_DetailedState Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_DetailedState Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_DetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_InternalCommand Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_InternalCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_InternalCommand Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_InternalCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_Heartbeat Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_Heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_Heartbeat Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_Heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_LoopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_LoopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_LoopTimeOutOfRange Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_LoopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_RejectedCommand Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_RejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_RejectedCommand Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_RejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_CoolingMonitoring Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_CoolingMonitoring topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_CoolingMonitoring Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_CoolingMonitoring topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonoCommunication Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonoCommunication topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonoCommunication Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonoCommunication topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_LightStatus Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_LightStatus topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_LightStatus Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_LightStatus topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SelectedGrating Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SelectedGrating topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SelectedGrating Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SelectedGrating topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_Wavelength Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_Wavelength topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_Wavelength Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_Wavelength topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_LightIntensity Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_LightIntensity topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_LightIntensity Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_LightIntensity topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SlitWidth Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SlitWidth topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SlitWidth Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SlitWidth topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_inPosition Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_inPosition topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_inPosition Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_inPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_MonochromatorConnected Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_MonochromatorConnected topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_MonochromatorConnected Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_MonochromatorConnected topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonoHeartbeat Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonoHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonoHeartbeat Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonoHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedLoop Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedLoop topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedLoop Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedLoop topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonochromatorRanges Topic Byte Size
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonochromatorRanges topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Event atMonochromator_logevent_SettingsAppliedMonochromatorRanges Topic Columns
	[Documentation]    Validate the atMonochromator_logevent_SettingsAppliedMonochromatorRanges topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Telemetry atMonochromator_Timestamp Topic Byte Size
	[Documentation]    Validate the atMonochromator_Timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Telemetry atMonochromator_Timestamp Topic Columns
	[Documentation]    Validate the atMonochromator_Timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtMonochromator Telemetry atMonochromator_LoopTime_ms Topic Byte Size
	[Documentation]    Validate the atMonochromator_LoopTime_ms topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtMonochromator Telemetry atMonochromator_LoopTime_ms Topic Columns
	[Documentation]    Validate the atMonochromator_LoopTime_ms topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtScheduler Event atScheduler_logevent_target Topic Byte Size
	[Documentation]    Validate the atScheduler_logevent_target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtScheduler Event atScheduler_logevent_target Topic Columns
	[Documentation]    Validate the atScheduler_logevent_target topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtScheduler Telemetry atScheduler_Heartbeat Topic Byte Size
	[Documentation]    Validate the atScheduler_Heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtScheduler Telemetry atScheduler_Heartbeat Topic Columns
	[Documentation]    Validate the atScheduler_Heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

