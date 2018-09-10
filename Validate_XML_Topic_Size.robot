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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_detailedState Topic Byte Size
	[Documentation]    Validate the archiver_logevent_detailedState topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_detailedState Topic Columns
	[Documentation]    Validate the archiver_logevent_detailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the archiver_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_summaryState Topic Columns
	[Documentation]    Validate the archiver_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_settingsApplied Topic Byte Size
	[Documentation]    Validate the archiver_logevent_settingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_settingsApplied Topic Columns
	[Documentation]    Validate the archiver_logevent_settingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_settingVersions Topic Byte Size
	[Documentation]    Validate the archiver_logevent_settingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_settingVersions Topic Columns
	[Documentation]    Validate the archiver_logevent_settingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_appliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the archiver_logevent_appliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_appliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the archiver_logevent_appliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Event archiver_logevent_errorCode Topic Byte Size
	[Documentation]    Validate the archiver_logevent_errorCode topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Event archiver_logevent_errorCode Topic Columns
	[Documentation]    Validate the archiver_logevent_errorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    Archiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Archiver Telemetry archiver_sequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the archiver_sequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    Archiver
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

Validate Archiver Telemetry archiver_sequencerHeartbeat Topic Columns
	[Documentation]    Validate the archiver_sequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Archiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_detailedState Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_detailedState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_detailedState Topic Columns
	[Documentation]    Validate the atArchiver_logevent_detailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_settingVersions Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_settingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_settingVersions Topic Columns
	[Documentation]    Validate the atArchiver_logevent_settingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_errorCode Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_errorCode topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_errorCode Topic Columns
	[Documentation]    Validate the atArchiver_logevent_errorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
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
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_summaryState Topic Columns
	[Documentation]    Validate the atArchiver_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_appliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_appliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_appliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the atArchiver_logevent_appliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Event atArchiver_logevent_settingsApplied Topic Byte Size
	[Documentation]    Validate the atArchiver_logevent_settingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Event atArchiver_logevent_settingsApplied Topic Columns
	[Documentation]    Validate the atArchiver_logevent_settingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtArchiver Telemetry atArchiver_sequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the atArchiver_sequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    AtArchiver
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

Validate AtArchiver Telemetry atArchiver_sequencerHeartbeat Topic Columns
	[Documentation]    Validate the atArchiver_sequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtArchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_disable Topic Byte Size
	[Documentation]    Validate the AtDome_command_disable topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_disable Topic Columns
	[Documentation]    Validate the AtDome_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_enable Topic Byte Size
	[Documentation]    Validate the AtDome_command_enable topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_enable Topic Columns
	[Documentation]    Validate the AtDome_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_exitControl Topic Byte Size
	[Documentation]    Validate the AtDome_command_exitControl topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_exitControl Topic Columns
	[Documentation]    Validate the AtDome_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_standby Topic Byte Size
	[Documentation]    Validate the AtDome_command_standby topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_standby Topic Columns
	[Documentation]    Validate the AtDome_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_start Topic Byte Size
	[Documentation]    Validate the AtDome_command_start topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_start Topic Columns
	[Documentation]    Validate the AtDome_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_moveAzimuth Topic Byte Size
	[Documentation]    Validate the AtDome_command_moveAzimuth topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_moveAzimuth Topic Columns
	[Documentation]    Validate the AtDome_command_moveAzimuth topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_moveShutterDropoutDoor Topic Byte Size
	[Documentation]    Validate the AtDome_command_moveShutterDropoutDoor topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_moveShutterDropoutDoor Topic Columns
	[Documentation]    Validate the AtDome_command_moveShutterDropoutDoor topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_closeShutter Topic Byte Size
	[Documentation]    Validate the AtDome_command_closeShutter topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_closeShutter Topic Columns
	[Documentation]    Validate the AtDome_command_closeShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_stopMotionAllAxis Topic Byte Size
	[Documentation]    Validate the AtDome_command_stopMotionAllAxis topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_stopMotionAllAxis Topic Columns
	[Documentation]    Validate the AtDome_command_stopMotionAllAxis topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_stopShutter Topic Byte Size
	[Documentation]    Validate the AtDome_command_stopShutter topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_stopShutter Topic Columns
	[Documentation]    Validate the AtDome_command_stopShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_openShutter Topic Byte Size
	[Documentation]    Validate the AtDome_command_openShutter topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_openShutter Topic Columns
	[Documentation]    Validate the AtDome_command_openShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_moveShutterMainDoor Topic Byte Size
	[Documentation]    Validate the AtDome_command_moveShutterMainDoor topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_moveShutterMainDoor Topic Columns
	[Documentation]    Validate the AtDome_command_moveShutterMainDoor topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Command AtDome_command_stopAzimuth Topic Byte Size
	[Documentation]    Validate the AtDome_command_stopAzimuth topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command AtDome_command_stopAzimuth Topic Columns
	[Documentation]    Validate the AtDome_command_stopAzimuth topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

