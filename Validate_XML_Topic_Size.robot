*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain a Topic greater than 65536 bytes in total size or that exceeds 4096 total arguments.
Suite Setup    Run Keywords    Create the DataType:Size Dictionary    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Command ATDome_command_disable Topic Byte Size
	[Documentation]    Validate the ATDome_command_disable topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_disable Topic Columns
	[Documentation]    Validate the ATDome_command_disable topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_enable Topic Byte Size
	[Documentation]    Validate the ATDome_command_enable topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_enable Topic Columns
	[Documentation]    Validate the ATDome_command_enable topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_exitControl Topic Byte Size
	[Documentation]    Validate the ATDome_command_exitControl topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_exitControl Topic Columns
	[Documentation]    Validate the ATDome_command_exitControl topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_standby Topic Byte Size
	[Documentation]    Validate the ATDome_command_standby topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_standby Topic Columns
	[Documentation]    Validate the ATDome_command_standby topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_start Topic Byte Size
	[Documentation]    Validate the ATDome_command_start topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_start Topic Columns
	[Documentation]    Validate the ATDome_command_start topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_moveAzimuth Topic Byte Size
	[Documentation]    Validate the ATDome_command_moveAzimuth topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_moveAzimuth Topic Columns
	[Documentation]    Validate the ATDome_command_moveAzimuth topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_moveShutterDropoutDoor Topic Byte Size
	[Documentation]    Validate the ATDome_command_moveShutterDropoutDoor topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_moveShutterDropoutDoor Topic Columns
	[Documentation]    Validate the ATDome_command_moveShutterDropoutDoor topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_closeShutter Topic Byte Size
	[Documentation]    Validate the ATDome_command_closeShutter topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_closeShutter Topic Columns
	[Documentation]    Validate the ATDome_command_closeShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_stopMotionAllAxis Topic Byte Size
	[Documentation]    Validate the ATDome_command_stopMotionAllAxis topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_stopMotionAllAxis Topic Columns
	[Documentation]    Validate the ATDome_command_stopMotionAllAxis topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_stopShutter Topic Byte Size
	[Documentation]    Validate the ATDome_command_stopShutter topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_stopShutter Topic Columns
	[Documentation]    Validate the ATDome_command_stopShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_openShutter Topic Byte Size
	[Documentation]    Validate the ATDome_command_openShutter topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_openShutter Topic Columns
	[Documentation]    Validate the ATDome_command_openShutter topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_moveShutterMainDoor Topic Byte Size
	[Documentation]    Validate the ATDome_command_moveShutterMainDoor topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_moveShutterMainDoor Topic Columns
	[Documentation]    Validate the ATDome_command_moveShutterMainDoor topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Command ATDome_command_stopAzimuth Topic Byte Size
	[Documentation]    Validate the ATDome_command_stopAzimuth topic is less than 65536 bytes in total.
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Command ATDome_command_stopAzimuth Topic Columns
	[Documentation]    Validate the ATDome_command_stopAzimuth topic has less than 4096 total arguments, each representing a column in the EFD.s
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

Validate AtDome Event ATDome_logevent_appliedSettingsMatchStart Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_appliedSettingsMatchStart topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_appliedSettingsMatchStart Topic Columns
	[Documentation]    Validate the ATDome_logevent_appliedSettingsMatchStart topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_errorCode Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_errorCode topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_errorCode Topic Columns
	[Documentation]    Validate the ATDome_logevent_errorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_settingVersions Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_settingVersions topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_settingVersions Topic Columns
	[Documentation]    Validate the ATDome_logevent_settingVersions topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_summaryState Topic Columns
	[Documentation]    Validate the ATDome_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_azimuthState Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_azimuthState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_azimuthState Topic Columns
	[Documentation]    Validate the ATDome_logevent_azimuthState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_internalCommand Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_internalCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_internalCommand Topic Columns
	[Documentation]    Validate the ATDome_logevent_internalCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_heartbeat Topic Columns
	[Documentation]    Validate the ATDome_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[7]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[7]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_loopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_loopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_loopTimeOutOfRange Topic Columns
	[Documentation]    Validate the ATDome_logevent_loopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[8]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[8]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_rejectedCommand Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_rejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_rejectedCommand Topic Columns
	[Documentation]    Validate the ATDome_logevent_rejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[9]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[9]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_allAxisInPosition Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_allAxisInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_allAxisInPosition Topic Columns
	[Documentation]    Validate the ATDome_logevent_allAxisInPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[10]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[10]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_emergencyStop Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_emergencyStop topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_emergencyStop Topic Columns
	[Documentation]    Validate the ATDome_logevent_emergencyStop topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[11]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[11]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_internalStatus Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_internalStatus topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_internalStatus Topic Columns
	[Documentation]    Validate the ATDome_logevent_internalStatus topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[12]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[12]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_scbLink Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_scbLink topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_scbLink Topic Columns
	[Documentation]    Validate the ATDome_logevent_scbLink topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[13]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[13]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_shutterInPosition Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_shutterInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_shutterInPosition Topic Columns
	[Documentation]    Validate the ATDome_logevent_shutterInPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[14]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[14]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_azimuthInPosition Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_azimuthInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_azimuthInPosition Topic Columns
	[Documentation]    Validate the ATDome_logevent_azimuthInPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[15]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[15]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_azimuthMovingDirection Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_azimuthMovingDirection topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_azimuthMovingDirection Topic Columns
	[Documentation]    Validate the ATDome_logevent_azimuthMovingDirection topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[16]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[16]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_settingsAppliedDomeController Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_settingsAppliedDomeController topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_settingsAppliedDomeController Topic Columns
	[Documentation]    Validate the ATDome_logevent_settingsAppliedDomeController topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[17]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[17]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_dropoutDoorState Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_dropoutDoorState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_dropoutDoorState Topic Columns
	[Documentation]    Validate the ATDome_logevent_dropoutDoorState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[18]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[18]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_mainDoorState Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_mainDoorState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_mainDoorState Topic Columns
	[Documentation]    Validate the ATDome_logevent_mainDoorState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[19]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[19]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_settingsAppliedDomeTcp Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_settingsAppliedDomeTcp topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_settingsAppliedDomeTcp Topic Columns
	[Documentation]    Validate the ATDome_logevent_settingsAppliedDomeTcp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[20]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[20]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Event ATDome_logevent_detailedState Topic Byte Size
	[Documentation]    Validate the ATDome_logevent_detailedState topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Event ATDome_logevent_detailedState Topic Columns
	[Documentation]    Validate the ATDome_logevent_detailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[21]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[21]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Telemetry ATDome_timestamp Topic Byte Size
	[Documentation]    Validate the ATDome_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Telemetry ATDome_timestamp Topic Columns
	[Documentation]    Validate the ATDome_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Telemetry ATDome_loopTime Topic Byte Size
	[Documentation]    Validate the ATDome_loopTime topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Telemetry ATDome_loopTime Topic Columns
	[Documentation]    Validate the ATDome_loopTime topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtDome Telemetry ATDome_position Topic Byte Size
	[Documentation]    Validate the ATDome_position topic is less than 65536 bytes in total.
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtDome Telemetry ATDome_position Topic Columns
	[Documentation]    Validate the ATDome_position topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtDome
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Command ATDome_timestamp Topic Byte Size
	[Documentation]    Validate the ATDome_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Command ATDome_timestamp Topic Columns
	[Documentation]    Validate the ATDome_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Command ATDome_loopTime Topic Byte Size
	[Documentation]    Validate the ATDome_loopTime topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Command ATDome_loopTime Topic Columns
	[Documentation]    Validate the ATDome_loopTime topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Command ATDome_position Topic Byte Size
	[Documentation]    Validate the ATDome_position topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Command ATDome_position Topic Columns
	[Documentation]    Validate the ATDome_position topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Event ATHeaderService_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the ATHeaderService_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Event ATHeaderService_logevent_heartbeat Topic Columns
	[Documentation]    Validate the ATHeaderService_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Event ATHeaderService_logevent_rejectedCommand Topic Byte Size
	[Documentation]    Validate the ATHeaderService_logevent_rejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Event ATHeaderService_logevent_rejectedCommand Topic Columns
	[Documentation]    Validate the ATHeaderService_logevent_rejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Event ATHeaderService_logevent_largeFileObjectAvailable Topic Byte Size
	[Documentation]    Validate the ATHeaderService_logevent_largeFileObjectAvailable topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Event ATHeaderService_logevent_largeFileObjectAvailable Topic Columns
	[Documentation]    Validate the ATHeaderService_logevent_largeFileObjectAvailable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate ATHeaderService Event ATHeaderService_logevent_settingsApplied Topic Byte Size
	[Documentation]    Validate the ATHeaderService_logevent_settingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate ATHeaderService Event ATHeaderService_logevent_settingsApplied Topic Columns
	[Documentation]    Validate the ATHeaderService_logevent_settingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    ATHeaderService
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Command ATWhiteLight_command_powerLightOn Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_command_powerLightOn topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Command ATWhiteLight_command_powerLightOn Topic Columns
	[Documentation]    Validate the ATWhiteLight_command_powerLightOn topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Command ATWhiteLight_command_powerLightOff Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_command_powerLightOff topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Command ATWhiteLight_command_powerLightOff Topic Columns
	[Documentation]    Validate the ATWhiteLight_command_powerLightOff topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Command ATWhiteLight_command_setLightPower Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_command_setLightPower topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Command ATWhiteLight_command_setLightPower Topic Columns
	[Documentation]    Validate the ATWhiteLight_command_setLightPower topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Event ATWhiteLight_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Event ATWhiteLight_logevent_heartbeat Topic Columns
	[Documentation]    Validate the ATWhiteLight_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Event ATWhiteLight_logevent_loopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_logevent_loopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Event ATWhiteLight_logevent_loopTimeOutOfRange Topic Columns
	[Documentation]    Validate the ATWhiteLight_logevent_loopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Event ATWhiteLight_logevent_rejectedCommand Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_logevent_rejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Event ATWhiteLight_logevent_rejectedCommand Topic Columns
	[Documentation]    Validate the ATWhiteLight_logevent_rejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Event ATWhiteLight_logevent_whiteLightStatus Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_logevent_whiteLightStatus topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Event ATWhiteLight_logevent_whiteLightStatus Topic Columns
	[Documentation]    Validate the ATWhiteLight_logevent_whiteLightStatus topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Telemetry ATWhiteLight_timestamp Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Telemetry ATWhiteLight_timestamp Topic Columns
	[Documentation]    Validate the ATWhiteLight_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate AtWhiteLight Telemetry ATWhiteLight_loopTime Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_loopTime topic is less than 65536 bytes in total.
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate AtWhiteLight Telemetry ATWhiteLight_loopTime Topic Columns
	[Documentation]    Validate the ATWhiteLight_loopTime topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    AtWhiteLight
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/AtWhiteLight/AtWhiteLight_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Command ATWhiteLight_timestamp Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Command ATWhiteLight_timestamp Topic Columns
	[Documentation]    Validate the ATWhiteLight_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Command ATWhiteLight_loopTime Topic Byte Size
	[Documentation]    Validate the ATWhiteLight_loopTime topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Command ATWhiteLight_loopTime Topic Columns
	[Documentation]    Validate the ATWhiteLight_loopTime topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntityStartup Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntityStartup Topic Columns
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntityStartup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Event CatchupArchiver_logevent_settingsApplied Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_logevent_settingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Event CatchupArchiver_logevent_settingsApplied Topic Columns
	[Documentation]    Validate the CatchupArchiver_logevent_settingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Event CatchupArchiver_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Event CatchupArchiver_logevent_summaryState Topic Columns
	[Documentation]    Validate the CatchupArchiver_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntitySummaryState Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntitySummaryState Topic Columns
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntitySummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntityShutdown Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Event CatchupArchiver_logevent_catchuparchiverEntityShutdown Topic Columns
	[Documentation]    Validate the CatchupArchiver_logevent_catchuparchiverEntityShutdown topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Catchuparchiver Telemetry CatchupArchiver_sequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the CatchupArchiver_sequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Catchuparchiver Telemetry CatchupArchiver_sequencerHeartbeat Topic Columns
	[Documentation]    Validate the CatchupArchiver_sequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Catchuparchiver
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate EFD Event EFD_logevent_largeFileObjectAvailable Topic Byte Size
	[Documentation]    Validate the EFD_logevent_largeFileObjectAvailable topic is less than 65536 bytes in total.
	[Tags]    smoke    EFD
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/efd/efd_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate EFD Event EFD_logevent_largeFileObjectAvailable Topic Columns
	[Documentation]    Validate the EFD_logevent_largeFileObjectAvailable topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    EFD
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/efd/efd_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate EFD Telemetry EFD_Summary Topic Byte Size
	[Documentation]    Validate the EFD_Summary topic is less than 65536 bytes in total.
	[Tags]    smoke    EFD
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate EFD Telemetry EFD_Summary Topic Columns
	[Documentation]    Validate the EFD_Summary topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    EFD
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Command LinearStage_command_getPosition Topic Byte Size
	[Documentation]    Validate the LinearStage_command_getPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Command LinearStage_command_getPosition Topic Columns
	[Documentation]    Validate the LinearStage_command_getPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Command LinearStage_command_moveRelative Topic Byte Size
	[Documentation]    Validate the LinearStage_command_moveRelative topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Command LinearStage_command_moveRelative Topic Columns
	[Documentation]    Validate the LinearStage_command_moveRelative topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Command LinearStage_command_moveAbsolute Topic Byte Size
	[Documentation]    Validate the LinearStage_command_moveAbsolute topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Command LinearStage_command_moveAbsolute Topic Columns
	[Documentation]    Validate the LinearStage_command_moveAbsolute topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Command LinearStage_command_getHome Topic Byte Size
	[Documentation]    Validate the LinearStage_command_getHome topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Command LinearStage_command_getHome Topic Columns
	[Documentation]    Validate the LinearStage_command_getHome topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Command LinearStage_command_stop Topic Byte Size
	[Documentation]    Validate the LinearStage_command_stop topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Command LinearStage_command_stop Topic Columns
	[Documentation]    Validate the LinearStage_command_stop topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_getHome Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_getHome topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_getHome Topic Columns
	[Documentation]    Validate the LinearStage_logevent_getHome topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_moveAbsolute Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_moveAbsolute topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_moveAbsolute Topic Columns
	[Documentation]    Validate the LinearStage_logevent_moveAbsolute topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_moveRelative Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_moveRelative topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_moveRelative Topic Columns
	[Documentation]    Validate the LinearStage_logevent_moveRelative topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_getPosition Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_getPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_getPosition Topic Columns
	[Documentation]    Validate the LinearStage_logevent_getPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_stop Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_stop topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_stop Topic Columns
	[Documentation]    Validate the LinearStage_logevent_stop topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Event LinearStage_logevent_summaryState Topic Byte Size
	[Documentation]    Validate the LinearStage_logevent_summaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Event LinearStage_logevent_summaryState Topic Columns
	[Documentation]    Validate the LinearStage_logevent_summaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[6]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[6]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate LinearStage Telemetry LinearStage_position Topic Byte Size
	[Documentation]    Validate the LinearStage_position topic is less than 65536 bytes in total.
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate LinearStage Telemetry LinearStage_position Topic Columns
	[Documentation]    Validate the LinearStage_position topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    LinearStage
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Command M2Ms_command_ApplyBendingMode Topic Byte Size
	[Documentation]    Validate the M2Ms_command_ApplyBendingMode topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Command M2Ms_command_ApplyBendingMode Topic Columns
	[Documentation]    Validate the M2Ms_command_ApplyBendingMode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Command M2Ms_command_ApplyForce Topic Byte Size
	[Documentation]    Validate the M2Ms_command_ApplyForce topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Command M2Ms_command_ApplyForce Topic Columns
	[Documentation]    Validate the M2Ms_command_ApplyForce topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Command M2Ms_command_SetCorrectionMode Topic Byte Size
	[Documentation]    Validate the M2Ms_command_SetCorrectionMode topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Command M2Ms_command_SetCorrectionMode Topic Columns
	[Documentation]    Validate the M2Ms_command_SetCorrectionMode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Command M2Ms_command_PositionMirror Topic Byte Size
	[Documentation]    Validate the M2Ms_command_PositionMirror topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Command M2Ms_command_PositionMirror Topic Columns
	[Documentation]    Validate the M2Ms_command_PositionMirror topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Command M2Ms_command_MoveAxialActuator Topic Byte Size
	[Documentation]    Validate the M2Ms_command_MoveAxialActuator topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Command M2Ms_command_MoveAxialActuator Topic Columns
	[Documentation]    Validate the M2Ms_command_MoveAxialActuator topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Event M2Ms_logevent_M2SummaryState Topic Byte Size
	[Documentation]    Validate the M2Ms_logevent_M2SummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Event M2Ms_logevent_M2SummaryState Topic Columns
	[Documentation]    Validate the M2Ms_logevent_M2SummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Event M2Ms_logevent_M2DetailedState Topic Byte Size
	[Documentation]    Validate the M2Ms_logevent_M2DetailedState topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Event M2Ms_logevent_M2DetailedState Topic Columns
	[Documentation]    Validate the M2Ms_logevent_M2DetailedState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Event M2Ms_logevent_M2FaultState Topic Byte Size
	[Documentation]    Validate the M2Ms_logevent_M2FaultState topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Event M2Ms_logevent_M2FaultState Topic Columns
	[Documentation]    Validate the M2Ms_logevent_M2FaultState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Event M2Ms_logevent_M2AssemblyInPosition Topic Byte Size
	[Documentation]    Validate the M2Ms_logevent_M2AssemblyInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Event M2Ms_logevent_M2AssemblyInPosition Topic Columns
	[Documentation]    Validate the M2Ms_logevent_M2AssemblyInPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_MirrorPositionMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_MirrorPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_MirrorPositionMeasured Topic Columns
	[Documentation]    Validate the M2Ms_MirrorPositionMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_AxialForcesMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_AxialForcesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_AxialForcesMeasured Topic Columns
	[Documentation]    Validate the M2Ms_AxialForcesMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_TangentForcesMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_TangentForcesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_TangentForcesMeasured Topic Columns
	[Documentation]    Validate the M2Ms_TangentForcesMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_ZenithAngleMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_ZenithAngleMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_ZenithAngleMeasured Topic Columns
	[Documentation]    Validate the M2Ms_ZenithAngleMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_AxialActuatorAbsolutePositionSteps Topic Byte Size
	[Documentation]    Validate the M2Ms_AxialActuatorAbsolutePositionSteps topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_AxialActuatorAbsolutePositionSteps Topic Columns
	[Documentation]    Validate the M2Ms_AxialActuatorAbsolutePositionSteps topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_TangentActuatorAbsolutePositionSteps Topic Byte Size
	[Documentation]    Validate the M2Ms_TangentActuatorAbsolutePositionSteps topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_TangentActuatorAbsolutePositionSteps Topic Columns
	[Documentation]    Validate the M2Ms_TangentActuatorAbsolutePositionSteps topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured Topic Columns
	[Documentation]    Validate the M2Ms_AxialActuatorPositionAbsoluteEncoderPositionMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured Topic Columns
	[Documentation]    Validate the M2Ms_TangentActuatorPositionAbsoluteEncoderPositionMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_PowerStatus Topic Byte Size
	[Documentation]    Validate the M2Ms_PowerStatus topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_PowerStatus Topic Columns
	[Documentation]    Validate the M2Ms_PowerStatus topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_TemperaturesMeasured Topic Byte Size
	[Documentation]    Validate the M2Ms_TemperaturesMeasured topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_TemperaturesMeasured Topic Columns
	[Documentation]    Validate the M2Ms_TemperaturesMeasured topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_RawDisplacement Topic Byte Size
	[Documentation]    Validate the M2Ms_RawDisplacement topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_RawDisplacement Topic Columns
	[Documentation]    Validate the M2Ms_RawDisplacement topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_StepVectorUpdate Topic Byte Size
	[Documentation]    Validate the M2Ms_StepVectorUpdate topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_StepVectorUpdate Topic Columns
	[Documentation]    Validate the M2Ms_StepVectorUpdate topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_TargetForces Topic Byte Size
	[Documentation]    Validate the M2Ms_TargetForces topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_TargetForces Topic Columns
	[Documentation]    Validate the M2Ms_TargetForces topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_SystemStatus Topic Byte Size
	[Documentation]    Validate the M2Ms_SystemStatus topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_SystemStatus Topic Columns
	[Documentation]    Validate the M2Ms_SystemStatus topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_RawTelemetry Topic Byte Size
	[Documentation]    Validate the M2Ms_RawTelemetry topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_RawTelemetry Topic Columns
	[Documentation]    Validate the M2Ms_RawTelemetry topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[15]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[15]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate M2MS Telemetry M2Ms_ActuatorLimitSwitches Topic Byte Size
	[Documentation]    Validate the M2Ms_ActuatorLimitSwitches topic is less than 65536 bytes in total.
	[Tags]    smoke    M2MS
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate M2MS Telemetry M2Ms_ActuatorLimitSwitches Topic Columns
	[Documentation]    Validate the M2Ms_ActuatorLimitSwitches topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    M2MS
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[16]/item)" -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[16]/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_closeMirrorCover Topic Byte Size
	[Documentation]    Validate the MTMount_command_closeMirrorCover topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_closeMirrorCover Topic Columns
	[Documentation]    Validate the MTMount_command_closeMirrorCover topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_configure Topic Byte Size
	[Documentation]    Validate the MTMount_command_configure topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_configure Topic Columns
	[Documentation]    Validate the MTMount_command_configure topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_disableCamWrap Topic Byte Size
	[Documentation]    Validate the MTMount_command_disableCamWrap topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_disableCamWrap Topic Columns
	[Documentation]    Validate the MTMount_command_disableCamWrap topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_enableCamWrap Topic Byte Size
	[Documentation]    Validate the MTMount_command_enableCamWrap topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_enableCamWrap Topic Columns
	[Documentation]    Validate the MTMount_command_enableCamWrap topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_moveToTarget Topic Byte Size
	[Documentation]    Validate the MTMount_command_moveToTarget topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_moveToTarget Topic Columns
	[Documentation]    Validate the MTMount_command_moveToTarget topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_openMirrorCover Topic Byte Size
	[Documentation]    Validate the MTMount_command_openMirrorCover topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_openMirrorCover Topic Columns
	[Documentation]    Validate the MTMount_command_openMirrorCover topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_trackTarget Topic Byte Size
	[Documentation]    Validate the MTMount_command_trackTarget topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_trackTarget Topic Columns
	[Documentation]    Validate the MTMount_command_trackTarget topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Command MTMount_command_clearerror Topic Byte Size
	[Documentation]    Validate the MTMount_command_clearerror topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Command MTMount_command_clearerror Topic Columns
	[Documentation]    Validate the MTMount_command_clearerror topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Event MTMount_logevent_mountState Topic Byte Size
	[Documentation]    Validate the MTMount_logevent_mountState topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Event MTMount_logevent_mountState Topic Columns
	[Documentation]    Validate the MTMount_logevent_mountState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Event MTMount_logevent_mountWarning Topic Byte Size
	[Documentation]    Validate the MTMount_logevent_mountWarning topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Event MTMount_logevent_mountWarning Topic Columns
	[Documentation]    Validate the MTMount_logevent_mountWarning topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Event MTMount_logevent_mountError Topic Byte Size
	[Documentation]    Validate the MTMount_logevent_mountError topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Event MTMount_logevent_mountError Topic Columns
	[Documentation]    Validate the MTMount_logevent_mountError topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Event MTMount_logevent_mountInPosition Topic Byte Size
	[Documentation]    Validate the MTMount_logevent_mountInPosition topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Event MTMount_logevent_mountInPosition Topic Columns
	[Documentation]    Validate the MTMount_logevent_mountInPosition topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Az Topic Byte Size
	[Documentation]    Validate the MTMount_Az topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Az Topic Columns
	[Documentation]    Validate the MTMount_Az topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Alt Topic Byte Size
	[Documentation]    Validate the MTMount_Alt topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Alt Topic Columns
	[Documentation]    Validate the MTMount_Alt topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Az_CW Topic Byte Size
	[Documentation]    Validate the MTMount_Az_CW topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Az_CW Topic Columns
	[Documentation]    Validate the MTMount_Az_CW topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[3]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[3]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Az_OSS Topic Byte Size
	[Documentation]    Validate the MTMount_Az_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Az_OSS Topic Columns
	[Documentation]    Validate the MTMount_Az_OSS topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[4]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[4]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Alt_OSS Topic Byte Size
	[Documentation]    Validate the MTMount_Alt_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Alt_OSS Topic Columns
	[Documentation]    Validate the MTMount_Alt_OSS topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[5]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[5]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Az_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Az_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Az_TC Topic Columns
	[Documentation]    Validate the MTMount_Az_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[6]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[6]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Alt_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Alt_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Alt_TC Topic Columns
	[Documentation]    Validate the MTMount_Alt_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[7]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[7]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Bal Topic Byte Size
	[Documentation]    Validate the MTMount_Bal topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Bal Topic Columns
	[Documentation]    Validate the MTMount_Bal topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[8]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[8]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_MC Topic Byte Size
	[Documentation]    Validate the MTMount_MC topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_MC Topic Columns
	[Documentation]    Validate the MTMount_MC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[9]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[9]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Cam_CW Topic Byte Size
	[Documentation]    Validate the MTMount_Cam_CW topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Cam_CW Topic Columns
	[Documentation]    Validate the MTMount_Cam_CW topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[10]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[10]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_Cab_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Cab_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_Cab_TC Topic Columns
	[Documentation]    Validate the MTMount_Cab_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[11]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[11]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_DP_1 Topic Byte Size
	[Documentation]    Validate the MTMount_DP_1 topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_DP_1 Topic Columns
	[Documentation]    Validate the MTMount_DP_1 topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[12]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[12]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_DP_2 Topic Byte Size
	[Documentation]    Validate the MTMount_DP_2 topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_DP_2 Topic Columns
	[Documentation]    Validate the MTMount_DP_2 topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[13]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[13]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate MTMount Telemetry MTMount_MotionParameters Topic Byte Size
	[Documentation]    Validate the MTMount_MotionParameters topic is less than 65536 bytes in total.
	[Tags]    smoke    MTMount
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
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate MTMount Telemetry MTMount_MotionParameters Topic Columns
	[Documentation]    Validate the MTMount_MotionParameters topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    MTMount
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[14]/item)" -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[14]/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Az Topic Byte Size
	[Documentation]    Validate the MTMount_Az topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Az Topic Columns
	[Documentation]    Validate the MTMount_Az topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Alt Topic Byte Size
	[Documentation]    Validate the MTMount_Alt topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Alt Topic Columns
	[Documentation]    Validate the MTMount_Alt topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Az_CW Topic Byte Size
	[Documentation]    Validate the MTMount_Az_CW topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Az_CW Topic Columns
	[Documentation]    Validate the MTMount_Az_CW topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Az_OSS Topic Byte Size
	[Documentation]    Validate the MTMount_Az_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Az_OSS Topic Columns
	[Documentation]    Validate the MTMount_Az_OSS topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Alt_OSS Topic Byte Size
	[Documentation]    Validate the MTMount_Alt_OSS topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Alt_OSS Topic Columns
	[Documentation]    Validate the MTMount_Alt_OSS topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[5]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[5]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Az_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Az_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Az_TC Topic Columns
	[Documentation]    Validate the MTMount_Az_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[6]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[6]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Alt_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Alt_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Alt_TC Topic Columns
	[Documentation]    Validate the MTMount_Alt_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[7]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[7]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Bal Topic Byte Size
	[Documentation]    Validate the MTMount_Bal topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Bal Topic Columns
	[Documentation]    Validate the MTMount_Bal topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[8]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[8]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_MC Topic Byte Size
	[Documentation]    Validate the MTMount_MC topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_MC Topic Columns
	[Documentation]    Validate the MTMount_MC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[9]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[9]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Cam_CW Topic Byte Size
	[Documentation]    Validate the MTMount_Cam_CW topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Cam_CW Topic Columns
	[Documentation]    Validate the MTMount_Cam_CW topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[10]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[10]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_Cab_TC Topic Byte Size
	[Documentation]    Validate the MTMount_Cab_TC topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_Cab_TC Topic Columns
	[Documentation]    Validate the MTMount_Cab_TC topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[11]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[11]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_DP_1 Topic Byte Size
	[Documentation]    Validate the MTMount_DP_1 topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_DP_1 Topic Columns
	[Documentation]    Validate the MTMount_DP_1 topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[12]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[12]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_DP_2 Topic Byte Size
	[Documentation]    Validate the MTMount_DP_2 topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_DP_2 Topic Columns
	[Documentation]    Validate the MTMount_DP_2 topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[13]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[13]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Command MTMount_MotionParameters Topic Byte Size
	[Documentation]    Validate the MTMount_MotionParameters topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Command MTMount_MotionParameters Topic Columns
	[Documentation]    Validate the MTMount_MotionParameters topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[14]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[14]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Event PromptProceessing_logevent_ErrorCode Topic Byte Size
	[Documentation]    Validate the PromptProceessing_logevent_ErrorCode topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Event PromptProceessing_logevent_ErrorCode Topic Columns
	[Documentation]    Validate the PromptProceessing_logevent_ErrorCode topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Event PromptProceessing_logevent_SettingsApplied Topic Byte Size
	[Documentation]    Validate the PromptProceessing_logevent_SettingsApplied topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Event PromptProceessing_logevent_SettingsApplied Topic Columns
	[Documentation]    Validate the PromptProceessing_logevent_SettingsApplied topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntitySummaryState Topic Byte Size
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntitySummaryState topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntitySummaryState Topic Columns
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntitySummaryState topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntityStartup Topic Byte Size
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntityStartup topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntityStartup Topic Columns
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntityStartup topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntityShutdown Topic Byte Size
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntityShutdown topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Event PromptProceessing_logevent_PromptProceessingEntityShutdown Topic Columns
	[Documentation]    Validate the PromptProceessing_logevent_PromptProceessingEntityShutdown topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[5]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[5]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate PromptProcessing Telemetry PromptProcessing_SequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the PromptProcessing_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate PromptProcessing Telemetry PromptProcessing_SequencerHeartbeat Topic Columns
	[Documentation]    Validate the PromptProcessing_SequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    PromptProcessing
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Command PromptProcessing_SequencerHeartbeat Topic Byte Size
	[Documentation]    Validate the PromptProcessing_SequencerHeartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Command PromptProcessing_SequencerHeartbeat Topic Columns
	[Documentation]    Validate the PromptProcessing_SequencerHeartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Event SummitFacility_logevent_internalCommand Topic Byte Size
	[Documentation]    Validate the SummitFacility_logevent_internalCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Event SummitFacility_logevent_internalCommand Topic Columns
	[Documentation]    Validate the SummitFacility_logevent_internalCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Event SummitFacility_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the SummitFacility_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Event SummitFacility_logevent_heartbeat Topic Columns
	[Documentation]    Validate the SummitFacility_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Event SummitFacility_logevent_loopTimeOutOfRange Topic Byte Size
	[Documentation]    Validate the SummitFacility_logevent_loopTimeOutOfRange topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Event SummitFacility_logevent_loopTimeOutOfRange Topic Columns
	[Documentation]    Validate the SummitFacility_logevent_loopTimeOutOfRange topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Event SummitFacility_logevent_rejectedCommand Topic Byte Size
	[Documentation]    Validate the SummitFacility_logevent_rejectedCommand topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Event SummitFacility_logevent_rejectedCommand Topic Columns
	[Documentation]    Validate the SummitFacility_logevent_rejectedCommand topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[4]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[4]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Telemetry SummitFacility_timestamp Topic Byte Size
	[Documentation]    Validate the SummitFacility_timestamp topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Telemetry SummitFacility_timestamp Topic Columns
	[Documentation]    Validate the SummitFacility_timestamp topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate SummitFacility Telemetry SummitFacility_loopTime Topic Byte Size
	[Documentation]    Validate the SummitFacility_loopTime topic is less than 65536 bytes in total.
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate SummitFacility Telemetry SummitFacility_loopTime Topic Columns
	[Documentation]    Validate the SummitFacility_loopTime topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    SummitFacility
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Command Test_command_setScalars Topic Byte Size
	[Documentation]    Validate the Test_command_setScalars topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Command Test_command_setScalars Topic Columns
	[Documentation]    Validate the Test_command_setScalars topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Command Test_command_setArrays Topic Byte Size
	[Documentation]    Validate the Test_command_setArrays topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Command Test_command_setArrays Topic Columns
	[Documentation]    Validate the Test_command_setArrays topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Command Test_command_fault Topic Byte Size
	[Documentation]    Validate the Test_command_fault topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Command Test_command_fault Topic Columns
	[Documentation]    Validate the Test_command_fault topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[3]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[3]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Command Test_command_wait Topic Byte Size
	[Documentation]    Validate the Test_command_wait topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Command Test_command_wait Topic Columns
	[Documentation]    Validate the Test_command_wait topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand[4]/item)" -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand[4]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Event Test_logevent_heartbeat Topic Byte Size
	[Documentation]    Validate the Test_logevent_heartbeat topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Event Test_logevent_heartbeat Topic Columns
	[Documentation]    Validate the Test_logevent_heartbeat topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Event Test_logevent_scalars Topic Byte Size
	[Documentation]    Validate the Test_logevent_scalars topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Event Test_logevent_scalars Topic Columns
	[Documentation]    Validate the Test_logevent_scalars topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Event Test_logevent_arrays Topic Byte Size
	[Documentation]    Validate the Test_logevent_arrays topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Event Test_logevent_arrays Topic Columns
	[Documentation]    Validate the Test_logevent_arrays topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent[3]/item)" -n ${folder}/sal_interfaces/Test/Test_Events.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent[3]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Telemetry Test_scalars Topic Byte Size
	[Documentation]    Validate the Test_scalars topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Telemetry Test_scalars Topic Columns
	[Documentation]    Validate the Test_scalars topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[1]/item)" -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[1]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

Validate Test Telemetry Test_arrays Topic Byte Size
	[Documentation]    Validate the Test_arrays topic is less than 65536 bytes in total.
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${result}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	Comment    Get the Type of each argument for the topic.
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/IDL_Type" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{TypeArray}=    Split to Lines    ${output}
	:FOR    ${index}    IN RANGE    ${itemCount}
	\    ${key}=    Set Variable    @{TypeArray}[${index}]
	\    Run Keyword If    '${key}'=='unsigned int'    Set Test Variable    ${key}    uint
	\    Run Keyword If    '${key}'=='unsigned short'    Set Test Variable    ${key}    ushort
	\    Run Keyword If    '${key}'=='unsigned long'    Set Test Variable    ${key}    ulong
	\    Run Keyword If    '${key}'=='long long'    Set Test Variable    ${key}    llong
	\    Log Many    ${key}    ${dict.${key}}    @{CountArray}[${index}]
	\    ${output}=    Evaluate    ${dict.${key}}*@{CountArray}[${index}]
	\    ${size}=    Convert to Number    ${output}
	\    ${result}=    Evaluate    ${result}+${size}
	Log    ${result}
	Should Be True    ${result} < ${65536}

Validate Test Telemetry Test_arrays Topic Columns
	[Documentation]    Validate the Test_arrays topic has less than 4096 total arguments, each representing a column in the EFD.s
	[Tags]    smoke    Test
	[Setup]    Set Test Variable    ${total}    ${0}
	Comment    Get the Count of each argument for the topic.
	${itemCount}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry[2]/item)" -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry[2]/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml
	@{CountArray}=    Split to Lines    ${output}
	:FOR    ${item}    IN    @{CountArray}
	\    ${total}=    Evaluate    ${total}+${item}
	Log    ${total}
	Should Be True    ${total} <= ${950}

*** Keywords ***
Create the DataType:Size Dictionary
	[Tags]    smoke
	&{dict}=    Create Dictionary    boolean=2    byte=1    char=1    double=8    float=4    int=4    long=4    llong=8    octet=1    short=2    string=1    uint=4    ushort=2    ulong=4
	Log Many    &{dict}
	Set Suite Variable    &{dict}

