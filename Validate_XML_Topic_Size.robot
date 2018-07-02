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

Validate Atwhitelight Command atWhiteLight_command_disable Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_disable Topic Columns
	[Documentation]    Validate the atWhiteLight_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Command atWhiteLight_command_enable Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_enable Topic Columns
	[Documentation]    Validate the atWhiteLight_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Command atWhiteLight_command_exitControl Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_exitControl Topic Columns
	[Documentation]    Validate the atWhiteLight_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Command atWhiteLight_command_standby Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_standby Topic Columns
	[Documentation]    Validate the atWhiteLight_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Command atWhiteLight_command_start Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_start Topic Columns
	[Documentation]    Validate the atWhiteLight_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Command atWhiteLight_command_enterControl Topic Byte Size
	[Documentation]    Validate the atWhiteLight_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
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

Validate Atwhitelight Command atWhiteLight_command_enterControl Topic Columns
	[Documentation]    Validate the atWhiteLight_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_appliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_appliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_appliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_appliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_errorCode Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_errorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_errorCode Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_errorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_settingVersions Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_settingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_settingVersions Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_settingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_summaryState Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_detailedState Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_detailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_detailedState Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_detailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_internalCommand Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_internalCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_internalCommand Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_internalCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_heartbeat Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_loopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_loopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_loopTimeOutOfRange Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_loopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Event atWhiteLight_logevent_rejectedCommand Topic Byte Size
	[Documentation]    Validate the atWhiteLight_logevent_rejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
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

Validate Atwhitelight Event atWhiteLight_logevent_rejectedCommand Topic Columns
	[Documentation]    Validate the atWhiteLight_logevent_rejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Telemetry atWhiteLight_timestamp Topic Byte Size
	[Documentation]    Validate the atWhiteLight_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
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

Validate Atwhitelight Telemetry atWhiteLight_timestamp Topic Columns
	[Documentation]    Validate the atWhiteLight_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Atwhitelight Telemetry atWhiteLight_loopTimeMs Topic Byte Size
	[Documentation]    Validate the atWhiteLight_loopTimeMs topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
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

Validate Atwhitelight Telemetry atWhiteLight_loopTimeMs Topic Columns
	[Documentation]    Validate the atWhiteLight_loopTimeMs topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_discardRows Topic Byte Size
	[Documentation]    Validate the atcamera_command_discardRows topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_discardRows Topic Columns
	[Documentation]    Validate the atcamera_command_discardRows topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_enable Topic Byte Size
	[Documentation]    Validate the atcamera_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_enable Topic Columns
	[Documentation]    Validate the atcamera_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_setValue Topic Byte Size
	[Documentation]    Validate the atcamera_command_setValue topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_setValue Topic Columns
	[Documentation]    Validate the atcamera_command_setValue topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_startImage Topic Byte Size
	[Documentation]    Validate the atcamera_command_startImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_startImage Topic Columns
	[Documentation]    Validate the atcamera_command_startImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_disableCalibration Topic Byte Size
	[Documentation]    Validate the atcamera_command_disableCalibration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_disableCalibration Topic Columns
	[Documentation]    Validate the atcamera_command_disableCalibration topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_initGuiders Topic Byte Size
	[Documentation]    Validate the atcamera_command_initGuiders topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_initGuiders Topic Columns
	[Documentation]    Validate the atcamera_command_initGuiders topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_standby Topic Byte Size
	[Documentation]    Validate the atcamera_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_standby Topic Columns
	[Documentation]    Validate the atcamera_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_enableCalibration Topic Byte Size
	[Documentation]    Validate the atcamera_command_enableCalibration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_enableCalibration Topic Columns
	[Documentation]    Validate the atcamera_command_enableCalibration topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_initImage Topic Byte Size
	[Documentation]    Validate the atcamera_command_initImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_initImage Topic Columns
	[Documentation]    Validate the atcamera_command_initImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_enterControl Topic Byte Size
	[Documentation]    Validate the atcamera_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_enterControl Topic Columns
	[Documentation]    Validate the atcamera_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_endImage Topic Byte Size
	[Documentation]    Validate the atcamera_command_endImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_endImage Topic Columns
	[Documentation]    Validate the atcamera_command_endImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_disable Topic Byte Size
	[Documentation]    Validate the atcamera_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_disable Topic Columns
	[Documentation]    Validate the atcamera_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_abort Topic Byte Size
	[Documentation]    Validate the atcamera_command_abort topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_abort Topic Columns
	[Documentation]    Validate the atcamera_command_abort topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_clear Topic Byte Size
	[Documentation]    Validate the atcamera_command_clear topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_clear Topic Columns
	[Documentation]    Validate the atcamera_command_clear topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_exitControl Topic Byte Size
	[Documentation]    Validate the atcamera_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[15]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_exitControl Topic Columns
	[Documentation]    Validate the atcamera_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[15]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[15]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_takeImages Topic Byte Size
	[Documentation]    Validate the atcamera_command_takeImages topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[16]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[16]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_takeImages Topic Columns
	[Documentation]    Validate the atcamera_command_takeImages topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[16]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[16]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_start Topic Byte Size
	[Documentation]    Validate the atcamera_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[17]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[17]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_start Topic Columns
	[Documentation]    Validate the atcamera_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[17]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[17]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Command atcamera_command_stop Topic Byte Size
	[Documentation]    Validate the atcamera_command_stop topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[18]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[18]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
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

Validate AtCamera Command atcamera_command_stop Topic Columns
	[Documentation]    Validate the atcamera_command_stop topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[18]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[18]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_offlineDetailedState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_offlineDetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_offlineDetailedState Topic Columns
	[Documentation]    Validate the atcamera_logevent_offlineDetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_endReadout Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_endReadout topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_endReadout Topic Columns
	[Documentation]    Validate the atcamera_logevent_endReadout topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_endTakeImage Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_endTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_endTakeImage Topic Columns
	[Documentation]    Validate the atcamera_logevent_endTakeImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_imageReadinessDetailedState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_imageReadinessDetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_imageReadinessDetailedState Topic Columns
	[Documentation]    Validate the atcamera_logevent_imageReadinessDetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_SettingVersions Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_SettingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_SettingVersions Topic Columns
	[Documentation]    Validate the atcamera_logevent_SettingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_notReadyToTakeImage Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_notReadyToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_notReadyToTakeImage Topic Columns
	[Documentation]    Validate the atcamera_logevent_notReadyToTakeImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_startShutterClose Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_startShutterClose topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_startShutterClose Topic Columns
	[Documentation]    Validate the atcamera_logevent_startShutterClose topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_AppliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_AppliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_AppliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atcamera_logevent_AppliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the atcamera_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_endShutterClose Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_endShutterClose topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_endShutterClose Topic Columns
	[Documentation]    Validate the atcamera_logevent_endShutterClose topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_endOfImageTelemetry Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_endOfImageTelemetry topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_endOfImageTelemetry Topic Columns
	[Documentation]    Validate the atcamera_logevent_endOfImageTelemetry topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_calibrationDetailedState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_calibrationDetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_calibrationDetailedState Topic Columns
	[Documentation]    Validate the atcamera_logevent_calibrationDetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_shutterDetailedState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_shutterDetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_shutterDetailedState Topic Columns
	[Documentation]    Validate the atcamera_logevent_shutterDetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_readyToTakeImage Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_readyToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_readyToTakeImage Topic Columns
	[Documentation]    Validate the atcamera_logevent_readyToTakeImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_ccsCommandState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_ccsCommandState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_ccsCommandState Topic Columns
	[Documentation]    Validate the atcamera_logevent_ccsCommandState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_prepareToTakeImage Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_prepareToTakeImage topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_prepareToTakeImage Topic Columns
	[Documentation]    Validate the atcamera_logevent_prepareToTakeImage topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_endShutterOpen Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_endShutterOpen topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_endShutterOpen Topic Columns
	[Documentation]    Validate the atcamera_logevent_endShutterOpen topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_startIntegration Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_startIntegration topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_startIntegration Topic Columns
	[Documentation]    Validate the atcamera_logevent_startIntegration topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_SummaryState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_SummaryState Topic Columns
	[Documentation]    Validate the atcamera_logevent_SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_SettingsApplied Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_SettingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_SettingsApplied Topic Columns
	[Documentation]    Validate the atcamera_logevent_SettingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_startShutterOpen Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_startShutterOpen topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_startShutterOpen Topic Columns
	[Documentation]    Validate the atcamera_logevent_startShutterOpen topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_raftsDetailedState Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_raftsDetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[22]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[22]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[22]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_raftsDetailedState Topic Columns
	[Documentation]    Validate the atcamera_logevent_raftsDetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[22]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[22]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_startReadout Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_startReadout topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[23]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[23]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[23]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_startReadout Topic Columns
	[Documentation]    Validate the atcamera_logevent_startReadout topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[23]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[23]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_shutterMotionProfile Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_shutterMotionProfile topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[24]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[24]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[24]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_shutterMotionProfile Topic Columns
	[Documentation]    Validate the atcamera_logevent_shutterMotionProfile topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[24]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[24]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Event atcamera_logevent_imageReadoutParameters Topic Byte Size
	[Documentation]    Validate the atcamera_logevent_imageReadoutParameters topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[25]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[25]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[25]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
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

Validate AtCamera Event atcamera_logevent_imageReadoutParameters Topic Columns
	[Documentation]    Validate the atcamera_logevent_imageReadoutParameters topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[25]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[25]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Telemetry atcamera_Heartbeat Topic Byte Size
	[Documentation]    Validate the atcamera_Heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
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

Validate AtCamera Telemetry atcamera_Heartbeat Topic Columns
	[Documentation]    Validate the atcamera_Heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtCamera Telemetry atcamera_WREB Topic Byte Size
	[Documentation]    Validate the atcamera_WREB topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
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

Validate AtCamera Telemetry atcamera_WREB Topic Columns
	[Documentation]    Validate the atcamera_WREB topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_disable Topic Byte Size
	[Documentation]    Validate the atcs_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_disable Topic Columns
	[Documentation]    Validate the atcs_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_enable Topic Byte Size
	[Documentation]    Validate the atcs_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_enable Topic Columns
	[Documentation]    Validate the atcs_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_exitControl Topic Byte Size
	[Documentation]    Validate the atcs_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_exitControl Topic Columns
	[Documentation]    Validate the atcs_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_standby Topic Byte Size
	[Documentation]    Validate the atcs_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_standby Topic Columns
	[Documentation]    Validate the atcs_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_start Topic Byte Size
	[Documentation]    Validate the atcs_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_start Topic Columns
	[Documentation]    Validate the atcs_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_enterControl Topic Byte Size
	[Documentation]    Validate the atcs_command_enterControl topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_enterControl Topic Columns
	[Documentation]    Validate the atcs_command_enterControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_Target Topic Byte Size
	[Documentation]    Validate the atcs_command_Target topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_Target Topic Columns
	[Documentation]    Validate the atcs_command_Target topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_Offset Topic Byte Size
	[Documentation]    Validate the atcs_command_Offset topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_Offset Topic Columns
	[Documentation]    Validate the atcs_command_Offset topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATCS Command atcs_command_SpectrographSetup Topic Byte Size
	[Documentation]    Validate the atcs_command_SpectrographSetup topic is less than 65536 bytes in total.
	[Tags]    smoke
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
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

Validate ATCS Command atcs_command_SpectrographSetup Topic Columns
	[Documentation]    Validate the atcs_command_SpectrographSetup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

