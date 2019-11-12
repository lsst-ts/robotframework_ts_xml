*** Settings ***
Documentation    Validate the subsystem XML definition files contain a valid Unit value.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Library    ${EXECDIR}${/}Unit_Validator.py
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATAOS Commands XML Units
	[Documentation]    Validate the ATAOS Commands XML Units.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATAOS Commands XML Unit types
	[Documentation]    Validate the ATAOS Commands XML Units conform to standards.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATAOS Events XML Units
	[Documentation]    Validate the ATAOS Events XML Units.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATAOS Events XML Unit types
	[Documentation]    Validate the ATAOS Events XML Units conform to standards.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATAOS Telemetry XML Units
	[Documentation]    Validate the ATAOS Telemetry XML Units.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATAOS Telemetry XML Unit types
	[Documentation]    Validate the ATAOS Telemetry XML Units conform to standards.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATAOS/ATAOS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATArchiver Commands XML Units
	[Documentation]    Validate the ATArchiver Commands XML Units.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATArchiver Commands XML Unit types
	[Documentation]    Validate the ATArchiver Commands XML Units conform to standards.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATArchiver Events XML Units
	[Documentation]    Validate the ATArchiver Events XML Units.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATArchiver Events XML Unit types
	[Documentation]    Validate the ATArchiver Events XML Units conform to standards.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATArchiver Telemetry XML Units
	[Documentation]    Validate the ATArchiver Telemetry XML Units.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATArchiver Telemetry XML Unit types
	[Documentation]    Validate the ATArchiver Telemetry XML Units conform to standards.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATArchiver/ATArchiver_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATBuilding Events XML Units
	[Documentation]    Validate the ATBuilding Events XML Units.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATBuilding Events XML Unit types
	[Documentation]    Validate the ATBuilding Events XML Units conform to standards.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATBuilding Telemetry XML Units
	[Documentation]    Validate the ATBuilding Telemetry XML Units.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATBuilding Telemetry XML Unit types
	[Documentation]    Validate the ATBuilding Telemetry XML Units conform to standards.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATBuilding/ATBuilding_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATCamera Commands XML Units
	[Documentation]    Validate the ATCamera Commands XML Units.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATCamera Commands XML Unit types
	[Documentation]    Validate the ATCamera Commands XML Units conform to standards.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATCamera Events XML Units
	[Documentation]    Validate the ATCamera Events XML Units.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATCamera Events XML Unit types
	[Documentation]    Validate the ATCamera Events XML Units conform to standards.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATCamera Telemetry XML Units
	[Documentation]    Validate the ATCamera Telemetry XML Units.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATCamera Telemetry XML Unit types
	[Documentation]    Validate the ATCamera Telemetry XML Units conform to standards.
	[Tags]    smoke    ATCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATCamera/ATCamera_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATDome Commands XML Units
	[Documentation]    Validate the ATDome Commands XML Units.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATDome Commands XML Unit types
	[Documentation]    Validate the ATDome Commands XML Units conform to standards.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATDome Events XML Units
	[Documentation]    Validate the ATDome Events XML Units.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATDome Events XML Unit types
	[Documentation]    Validate the ATDome Events XML Units conform to standards.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATDome Telemetry XML Units
	[Documentation]    Validate the ATDome Telemetry XML Units.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATDome Telemetry XML Unit types
	[Documentation]    Validate the ATDome Telemetry XML Units conform to standards.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATDome/ATDome_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATDomeTrajectory Events XML Units
	[Documentation]    Validate the ATDomeTrajectory Events XML Units.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATDomeTrajectory Events XML Unit types
	[Documentation]    Validate the ATDomeTrajectory Events XML Units conform to standards.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATDomeTrajectory/ATDomeTrajectory_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATHeaderService Events XML Units
	[Documentation]    Validate the ATHeaderService Events XML Units.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATHeaderService Events XML Unit types
	[Documentation]    Validate the ATHeaderService Events XML Units conform to standards.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATHeaderService/ATHeaderService_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATHexapod Commands XML Units
	[Documentation]    Validate the ATHexapod Commands XML Units.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATHexapod Commands XML Unit types
	[Documentation]    Validate the ATHexapod Commands XML Units conform to standards.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATHexapod Events XML Units
	[Documentation]    Validate the ATHexapod Events XML Units.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATHexapod Events XML Unit types
	[Documentation]    Validate the ATHexapod Events XML Units conform to standards.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATHexapod Telemetry XML Units
	[Documentation]    Validate the ATHexapod Telemetry XML Units.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATHexapod Telemetry XML Unit types
	[Documentation]    Validate the ATHexapod Telemetry XML Units conform to standards.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATHexapod/ATHexapod_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMCS Commands XML Units
	[Documentation]    Validate the ATMCS Commands XML Units.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMCS Commands XML Unit types
	[Documentation]    Validate the ATMCS Commands XML Units conform to standards.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMCS Events XML Units
	[Documentation]    Validate the ATMCS Events XML Units.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMCS Events XML Unit types
	[Documentation]    Validate the ATMCS Events XML Units conform to standards.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMCS Telemetry XML Units
	[Documentation]    Validate the ATMCS Telemetry XML Units.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMCS Telemetry XML Unit types
	[Documentation]    Validate the ATMCS Telemetry XML Units conform to standards.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATMCS/ATMCS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMonochromator Commands XML Units
	[Documentation]    Validate the ATMonochromator Commands XML Units.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMonochromator Commands XML Unit types
	[Documentation]    Validate the ATMonochromator Commands XML Units conform to standards.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMonochromator Events XML Units
	[Documentation]    Validate the ATMonochromator Events XML Units.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMonochromator Events XML Unit types
	[Documentation]    Validate the ATMonochromator Events XML Units conform to standards.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATMonochromator Telemetry XML Units
	[Documentation]    Validate the ATMonochromator Telemetry XML Units.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATMonochromator Telemetry XML Unit types
	[Documentation]    Validate the ATMonochromator Telemetry XML Units conform to standards.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPneumatics Commands XML Units
	[Documentation]    Validate the ATPneumatics Commands XML Units.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPneumatics Commands XML Unit types
	[Documentation]    Validate the ATPneumatics Commands XML Units conform to standards.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPneumatics Events XML Units
	[Documentation]    Validate the ATPneumatics Events XML Units.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPneumatics Events XML Unit types
	[Documentation]    Validate the ATPneumatics Events XML Units conform to standards.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPneumatics Telemetry XML Units
	[Documentation]    Validate the ATPneumatics Telemetry XML Units.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPneumatics Telemetry XML Unit types
	[Documentation]    Validate the ATPneumatics Telemetry XML Units conform to standards.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPtg Commands XML Units
	[Documentation]    Validate the ATPtg Commands XML Units.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPtg Commands XML Unit types
	[Documentation]    Validate the ATPtg Commands XML Units conform to standards.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPtg Events XML Units
	[Documentation]    Validate the ATPtg Events XML Units.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPtg Events XML Unit types
	[Documentation]    Validate the ATPtg Events XML Units conform to standards.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATPtg Telemetry XML Units
	[Documentation]    Validate the ATPtg Telemetry XML Units.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATPtg Telemetry XML Unit types
	[Documentation]    Validate the ATPtg Telemetry XML Units conform to standards.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATPtg/ATPtg_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATSpectrograph Commands XML Units
	[Documentation]    Validate the ATSpectrograph Commands XML Units.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATSpectrograph Commands XML Unit types
	[Documentation]    Validate the ATSpectrograph Commands XML Units conform to standards.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATSpectrograph Events XML Units
	[Documentation]    Validate the ATSpectrograph Events XML Units.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATSpectrograph Events XML Unit types
	[Documentation]    Validate the ATSpectrograph Events XML Units conform to standards.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATSpectrograph Telemetry XML Units
	[Documentation]    Validate the ATSpectrograph Telemetry XML Units.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATSpectrograph Telemetry XML Unit types
	[Documentation]    Validate the ATSpectrograph Telemetry XML Units conform to standards.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATTCS Commands XML Units
	[Documentation]    Validate the ATTCS Commands XML Units.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATTCS Commands XML Unit types
	[Documentation]    Validate the ATTCS Commands XML Units conform to standards.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATTCS Events XML Units
	[Documentation]    Validate the ATTCS Events XML Units.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATTCS Events XML Unit types
	[Documentation]    Validate the ATTCS Events XML Units conform to standards.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATTCS Telemetry XML Units
	[Documentation]    Validate the ATTCS Telemetry XML Units.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATTCS Telemetry XML Unit types
	[Documentation]    Validate the ATTCS Telemetry XML Units conform to standards.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATTCS/ATTCS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATWhiteLight Commands XML Units
	[Documentation]    Validate the ATWhiteLight Commands XML Units.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATWhiteLight Commands XML Unit types
	[Documentation]    Validate the ATWhiteLight Commands XML Units conform to standards.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATWhiteLight Events XML Units
	[Documentation]    Validate the ATWhiteLight Events XML Units.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATWhiteLight Events XML Unit types
	[Documentation]    Validate the ATWhiteLight Events XML Units conform to standards.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ATWhiteLight Telemetry XML Units
	[Documentation]    Validate the ATWhiteLight Telemetry XML Units.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ATWhiteLight Telemetry XML Unit types
	[Documentation]    Validate the ATWhiteLight Telemetry XML Units conform to standards.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate CatchupArchiver Events XML Units
	[Documentation]    Validate the CatchupArchiver Events XML Units.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate CatchupArchiver Events XML Unit types
	[Documentation]    Validate the CatchupArchiver Events XML Units conform to standards.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate CatchupArchiver Telemetry XML Units
	[Documentation]    Validate the CatchupArchiver Telemetry XML Units.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate CatchupArchiver Telemetry XML Unit types
	[Documentation]    Validate the CatchupArchiver Telemetry XML Units conform to standards.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/CatchupArchiver/CatchupArchiver_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate CBP Commands XML Units
	[Documentation]    Validate the CBP Commands XML Units.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate CBP Commands XML Unit types
	[Documentation]    Validate the CBP Commands XML Units conform to standards.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate CBP Telemetry XML Units
	[Documentation]    Validate the CBP Telemetry XML Units.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate CBP Telemetry XML Unit types
	[Documentation]    Validate the CBP Telemetry XML Units conform to standards.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate DIMM Events XML Units
	[Documentation]    Validate the DIMM Events XML Units.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate DIMM Events XML Unit types
	[Documentation]    Validate the DIMM Events XML Units conform to standards.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate DIMM Telemetry XML Units
	[Documentation]    Validate the DIMM Telemetry XML Units.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate DIMM Telemetry XML Unit types
	[Documentation]    Validate the DIMM Telemetry XML Units conform to standards.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/DIMM/DIMM_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Dome Commands XML Units
	[Documentation]    Validate the Dome Commands XML Units.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Dome Commands XML Unit types
	[Documentation]    Validate the Dome Commands XML Units conform to standards.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Dome Events XML Units
	[Documentation]    Validate the Dome Events XML Units.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Dome Events XML Unit types
	[Documentation]    Validate the Dome Events XML Units conform to standards.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Dome Telemetry XML Units
	[Documentation]    Validate the Dome Telemetry XML Units.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Dome Telemetry XML Unit types
	[Documentation]    Validate the Dome Telemetry XML Units conform to standards.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Dome/Dome_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate DSM Events XML Units
	[Documentation]    Validate the DSM Events XML Units.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate DSM Events XML Unit types
	[Documentation]    Validate the DSM Events XML Units conform to standards.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/DSM/DSM_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate DSM Telemetry XML Units
	[Documentation]    Validate the DSM Telemetry XML Units.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate DSM Telemetry XML Unit types
	[Documentation]    Validate the DSM Telemetry XML Units conform to standards.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/DSM/DSM_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EAS Events XML Units
	[Documentation]    Validate the EAS Events XML Units.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EAS Events XML Unit types
	[Documentation]    Validate the EAS Events XML Units conform to standards.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EAS/EAS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EAS Telemetry XML Units
	[Documentation]    Validate the EAS Telemetry XML Units.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EAS Telemetry XML Unit types
	[Documentation]    Validate the EAS Telemetry XML Units conform to standards.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EAS/EAS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EFD Events XML Units
	[Documentation]    Validate the EFD Events XML Units.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EFD Events XML Unit types
	[Documentation]    Validate the EFD Events XML Units conform to standards.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EFD/EFD_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EFD Telemetry XML Units
	[Documentation]    Validate the EFD Telemetry XML Units.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EFD Telemetry XML Unit types
	[Documentation]    Validate the EFD Telemetry XML Units conform to standards.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EFD/EFD_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EFDTransformationServer Events XML Units
	[Documentation]    Validate the EFDTransformationServer Events XML Units.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EFDTransformationServer Events XML Unit types
	[Documentation]    Validate the EFDTransformationServer Events XML Units conform to standards.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate EFDTransformationServer Telemetry XML Units
	[Documentation]    Validate the EFDTransformationServer Telemetry XML Units.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate EFDTransformationServer Telemetry XML Unit types
	[Documentation]    Validate the EFDTransformationServer Telemetry XML Units conform to standards.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/EFDTransformationServer/EFDTransformationServer_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Electrometer Commands XML Units
	[Documentation]    Validate the Electrometer Commands XML Units.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Electrometer Commands XML Unit types
	[Documentation]    Validate the Electrometer Commands XML Units conform to standards.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Electrometer Events XML Units
	[Documentation]    Validate the Electrometer Events XML Units.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Electrometer Events XML Unit types
	[Documentation]    Validate the Electrometer Events XML Units conform to standards.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Electrometer/Electrometer_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Environment Telemetry XML Units
	[Documentation]    Validate the Environment Telemetry XML Units.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Environment Telemetry XML Unit types
	[Documentation]    Validate the Environment Telemetry XML Units conform to standards.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Environment/Environment_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate FiberSpectrograph Commands XML Units
	[Documentation]    Validate the FiberSpectrograph Commands XML Units.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate FiberSpectrograph Commands XML Unit types
	[Documentation]    Validate the FiberSpectrograph Commands XML Units conform to standards.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate FiberSpectrograph Events XML Units
	[Documentation]    Validate the FiberSpectrograph Events XML Units.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate FiberSpectrograph Events XML Unit types
	[Documentation]    Validate the FiberSpectrograph Events XML Units conform to standards.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate FiberSpectrograph Telemetry XML Units
	[Documentation]    Validate the FiberSpectrograph Telemetry XML Units.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate FiberSpectrograph Telemetry XML Unit types
	[Documentation]    Validate the FiberSpectrograph Telemetry XML Units conform to standards.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate GenericCamera Commands XML Units
	[Documentation]    Validate the GenericCamera Commands XML Units.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate GenericCamera Commands XML Unit types
	[Documentation]    Validate the GenericCamera Commands XML Units conform to standards.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate GenericCamera Events XML Units
	[Documentation]    Validate the GenericCamera Events XML Units.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate GenericCamera Events XML Unit types
	[Documentation]    Validate the GenericCamera Events XML Units conform to standards.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate GenericCamera Telemetry XML Units
	[Documentation]    Validate the GenericCamera Telemetry XML Units.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate GenericCamera Telemetry XML Unit types
	[Documentation]    Validate the GenericCamera Telemetry XML Units conform to standards.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/GenericCamera/GenericCamera_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate IOTA Events XML Units
	[Documentation]    Validate the IOTA Events XML Units.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate IOTA Events XML Unit types
	[Documentation]    Validate the IOTA Events XML Units conform to standards.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate IOTA Telemetry XML Units
	[Documentation]    Validate the IOTA Telemetry XML Units.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate IOTA Telemetry XML Unit types
	[Documentation]    Validate the IOTA Telemetry XML Units conform to standards.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/IOTA/IOTA_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Hexapod Commands XML Units
	[Documentation]    Validate the Hexapod Commands XML Units.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Hexapod Commands XML Unit types
	[Documentation]    Validate the Hexapod Commands XML Units conform to standards.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Hexapod Events XML Units
	[Documentation]    Validate the Hexapod Events XML Units.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Hexapod Events XML Unit types
	[Documentation]    Validate the Hexapod Events XML Units conform to standards.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Hexapod Telemetry XML Units
	[Documentation]    Validate the Hexapod Telemetry XML Units.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Hexapod Telemetry XML Unit types
	[Documentation]    Validate the Hexapod Telemetry XML Units conform to standards.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Hexapod/Hexapod_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate HVAC Commands XML Units
	[Documentation]    Validate the HVAC Commands XML Units.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate HVAC Commands XML Unit types
	[Documentation]    Validate the HVAC Commands XML Units conform to standards.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate HVAC Events XML Units
	[Documentation]    Validate the HVAC Events XML Units.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate HVAC Events XML Unit types
	[Documentation]    Validate the HVAC Events XML Units conform to standards.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate HVAC Telemetry XML Units
	[Documentation]    Validate the HVAC Telemetry XML Units.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate HVAC Telemetry XML Unit types
	[Documentation]    Validate the HVAC Telemetry XML Units conform to standards.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/HVAC/HVAC_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate LinearStage Commands XML Units
	[Documentation]    Validate the LinearStage Commands XML Units.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate LinearStage Commands XML Unit types
	[Documentation]    Validate the LinearStage Commands XML Units conform to standards.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate LinearStage Events XML Units
	[Documentation]    Validate the LinearStage Events XML Units.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate LinearStage Events XML Unit types
	[Documentation]    Validate the LinearStage Events XML Units conform to standards.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate LinearStage Telemetry XML Units
	[Documentation]    Validate the LinearStage Telemetry XML Units.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate LinearStage Telemetry XML Unit types
	[Documentation]    Validate the LinearStage Telemetry XML Units conform to standards.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate LOVE Events XML Units
	[Documentation]    Validate the LOVE Events XML Units.
	[Tags]    smoke    LOVE
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/LOVE/LOVE_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate LOVE Events XML Unit types
	[Documentation]    Validate the LOVE Events XML Units conform to standards.
	[Tags]    smoke    LOVE
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/LOVE/LOVE_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTAOS Commands XML Units
	[Documentation]    Validate the MTAOS Commands XML Units.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTAOS Commands XML Unit types
	[Documentation]    Validate the MTAOS Commands XML Units conform to standards.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTAOS Events XML Units
	[Documentation]    Validate the MTAOS Events XML Units.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTAOS Events XML Unit types
	[Documentation]    Validate the MTAOS Events XML Units conform to standards.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTAOS Telemetry XML Units
	[Documentation]    Validate the MTAOS Telemetry XML Units.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTAOS Telemetry XML Unit types
	[Documentation]    Validate the MTAOS Telemetry XML Units conform to standards.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTAOS/MTAOS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTArchiver Events XML Units
	[Documentation]    Validate the MTArchiver Events XML Units.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTArchiver Events XML Unit types
	[Documentation]    Validate the MTArchiver Events XML Units conform to standards.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTArchiver Telemetry XML Units
	[Documentation]    Validate the MTArchiver Telemetry XML Units.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTArchiver Telemetry XML Unit types
	[Documentation]    Validate the MTArchiver Telemetry XML Units conform to standards.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTArchiver/MTArchiver_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTCamera Commands XML Units
	[Documentation]    Validate the MTCamera Commands XML Units.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTCamera Commands XML Unit types
	[Documentation]    Validate the MTCamera Commands XML Units conform to standards.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTCamera Events XML Units
	[Documentation]    Validate the MTCamera Events XML Units.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTCamera Events XML Unit types
	[Documentation]    Validate the MTCamera Events XML Units conform to standards.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTCamera Telemetry XML Units
	[Documentation]    Validate the MTCamera Telemetry XML Units.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTCamera Telemetry XML Unit types
	[Documentation]    Validate the MTCamera Telemetry XML Units conform to standards.
	[Tags]    smoke    MTCamera    CAP-318
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTCamera/MTCamera_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTDomeTrajectory Events XML Units
	[Documentation]    Validate the MTDomeTrajectory Events XML Units.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTDomeTrajectory Events XML Unit types
	[Documentation]    Validate the MTDomeTrajectory Events XML Units conform to standards.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTDomeTrajectory Telemetry XML Units
	[Documentation]    Validate the MTDomeTrajectory Telemetry XML Units.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTDomeTrajectory Telemetry XML Unit types
	[Documentation]    Validate the MTDomeTrajectory Telemetry XML Units conform to standards.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTDomeTrajectory/MTDomeTrajectory_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTEEC Commands XML Units
	[Documentation]    Validate the MTEEC Commands XML Units.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTEEC Commands XML Unit types
	[Documentation]    Validate the MTEEC Commands XML Units conform to standards.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTEEC Events XML Units
	[Documentation]    Validate the MTEEC Events XML Units.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTEEC Events XML Unit types
	[Documentation]    Validate the MTEEC Events XML Units conform to standards.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTEEC/MTEEC_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTGuider Events XML Units
	[Documentation]    Validate the MTGuider Events XML Units.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTGuider Events XML Unit types
	[Documentation]    Validate the MTGuider Events XML Units conform to standards.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTGuider Telemetry XML Units
	[Documentation]    Validate the MTGuider Telemetry XML Units.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTGuider Telemetry XML Unit types
	[Documentation]    Validate the MTGuider Telemetry XML Units conform to standards.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTGuider/MTGuider_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTHeaderService Events XML Units
	[Documentation]    Validate the MTHeaderService Events XML Units.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTHeaderService Events XML Unit types
	[Documentation]    Validate the MTHeaderService Events XML Units conform to standards.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTHeaderService/MTHeaderService_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTLaserTracker Events XML Units
	[Documentation]    Validate the MTLaserTracker Events XML Units.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTLaserTracker Events XML Unit types
	[Documentation]    Validate the MTLaserTracker Events XML Units conform to standards.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTLaserTracker Telemetry XML Units
	[Documentation]    Validate the MTLaserTracker Telemetry XML Units.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTLaserTracker Telemetry XML Unit types
	[Documentation]    Validate the MTLaserTracker Telemetry XML Units conform to standards.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTLaserTracker/MTLaserTracker_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3 Commands XML Units
	[Documentation]    Validate the MTM1M3 Commands XML Units.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3 Commands XML Unit types
	[Documentation]    Validate the MTM1M3 Commands XML Units conform to standards.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3 Events XML Units
	[Documentation]    Validate the MTM1M3 Events XML Units.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3 Events XML Unit types
	[Documentation]    Validate the MTM1M3 Events XML Units conform to standards.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3 Telemetry XML Units
	[Documentation]    Validate the MTM1M3 Telemetry XML Units.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3 Telemetry XML Unit types
	[Documentation]    Validate the MTM1M3 Telemetry XML Units conform to standards.
	[Tags]    smoke    MTM1M3    DM-20956
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3/MTM1M3_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3TS Commands XML Units
	[Documentation]    Validate the MTM1M3TS Commands XML Units.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3TS Commands XML Unit types
	[Documentation]    Validate the MTM1M3TS Commands XML Units conform to standards.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3TS Events XML Units
	[Documentation]    Validate the MTM1M3TS Events XML Units.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3TS Events XML Unit types
	[Documentation]    Validate the MTM1M3TS Events XML Units conform to standards.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM1M3TS Telemetry XML Units
	[Documentation]    Validate the MTM1M3TS Telemetry XML Units.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM1M3TS Telemetry XML Unit types
	[Documentation]    Validate the MTM1M3TS Telemetry XML Units conform to standards.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM1M3TS/MTM1M3TS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM2 Commands XML Units
	[Documentation]    Validate the MTM2 Commands XML Units.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM2 Commands XML Unit types
	[Documentation]    Validate the MTM2 Commands XML Units conform to standards.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM2 Events XML Units
	[Documentation]    Validate the MTM2 Events XML Units.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM2 Events XML Unit types
	[Documentation]    Validate the MTM2 Events XML Units conform to standards.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTM2 Telemetry XML Units
	[Documentation]    Validate the MTM2 Telemetry XML Units.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTM2 Telemetry XML Unit types
	[Documentation]    Validate the MTM2 Telemetry XML Units conform to standards.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTM2/MTM2_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTMount Commands XML Units
	[Documentation]    Validate the MTMount Commands XML Units.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTMount Commands XML Unit types
	[Documentation]    Validate the MTMount Commands XML Units conform to standards.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTMount Events XML Units
	[Documentation]    Validate the MTMount Events XML Units.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTMount Events XML Unit types
	[Documentation]    Validate the MTMount Events XML Units conform to standards.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTMount Telemetry XML Units
	[Documentation]    Validate the MTMount Telemetry XML Units.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTMount Telemetry XML Unit types
	[Documentation]    Validate the MTMount Telemetry XML Units conform to standards.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTPtg Commands XML Units
	[Documentation]    Validate the MTPtg Commands XML Units.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTPtg Commands XML Unit types
	[Documentation]    Validate the MTPtg Commands XML Units conform to standards.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTPtg Events XML Units
	[Documentation]    Validate the MTPtg Events XML Units.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTPtg Events XML Unit types
	[Documentation]    Validate the MTPtg Events XML Units conform to standards.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTPtg Telemetry XML Units
	[Documentation]    Validate the MTPtg Telemetry XML Units.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTPtg Telemetry XML Unit types
	[Documentation]    Validate the MTPtg Telemetry XML Units conform to standards.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTPtg/MTPtg_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTTCS Commands XML Units
	[Documentation]    Validate the MTTCS Commands XML Units.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTTCS Commands XML Unit types
	[Documentation]    Validate the MTTCS Commands XML Units conform to standards.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTTCS Events XML Units
	[Documentation]    Validate the MTTCS Events XML Units.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTTCS Events XML Unit types
	[Documentation]    Validate the MTTCS Events XML Units conform to standards.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTTCS Telemetry XML Units
	[Documentation]    Validate the MTTCS Telemetry XML Units.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTTCS Telemetry XML Unit types
	[Documentation]    Validate the MTTCS Telemetry XML Units conform to standards.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTTCS/MTTCS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTVMS Commands XML Units
	[Documentation]    Validate the MTVMS Commands XML Units.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTVMS Commands XML Unit types
	[Documentation]    Validate the MTVMS Commands XML Units conform to standards.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTVMS Events XML Units
	[Documentation]    Validate the MTVMS Events XML Units.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTVMS Events XML Unit types
	[Documentation]    Validate the MTVMS Events XML Units conform to standards.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate MTVMS Telemetry XML Units
	[Documentation]    Validate the MTVMS Telemetry XML Units.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate MTVMS Telemetry XML Unit types
	[Documentation]    Validate the MTVMS Telemetry XML Units conform to standards.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/MTVMS/MTVMS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate OCS Commands XML Units
	[Documentation]    Validate the OCS Commands XML Units.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate OCS Commands XML Unit types
	[Documentation]    Validate the OCS Commands XML Units conform to standards.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate OCS Events XML Units
	[Documentation]    Validate the OCS Events XML Units.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate OCS Events XML Unit types
	[Documentation]    Validate the OCS Events XML Units conform to standards.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate OCS Telemetry XML Units
	[Documentation]    Validate the OCS Telemetry XML Units.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate OCS Telemetry XML Unit types
	[Documentation]    Validate the OCS Telemetry XML Units conform to standards.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/OCS/OCS_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate PointingComponent Commands XML Units
	[Documentation]    Validate the PointingComponent Commands XML Units.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate PointingComponent Commands XML Unit types
	[Documentation]    Validate the PointingComponent Commands XML Units conform to standards.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate PointingComponent Events XML Units
	[Documentation]    Validate the PointingComponent Events XML Units.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate PointingComponent Events XML Unit types
	[Documentation]    Validate the PointingComponent Events XML Units conform to standards.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate PointingComponent Telemetry XML Units
	[Documentation]    Validate the PointingComponent Telemetry XML Units.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate PointingComponent Telemetry XML Unit types
	[Documentation]    Validate the PointingComponent Telemetry XML Units conform to standards.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/PointingComponent/PointingComponent_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate PromptProcessing Events XML Units
	[Documentation]    Validate the PromptProcessing Events XML Units.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate PromptProcessing Events XML Unit types
	[Documentation]    Validate the PromptProcessing Events XML Units conform to standards.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate PromptProcessing Telemetry XML Units
	[Documentation]    Validate the PromptProcessing Telemetry XML Units.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate PromptProcessing Telemetry XML Unit types
	[Documentation]    Validate the PromptProcessing Telemetry XML Units conform to standards.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Rotator Commands XML Units
	[Documentation]    Validate the Rotator Commands XML Units.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Rotator Commands XML Unit types
	[Documentation]    Validate the Rotator Commands XML Units conform to standards.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Rotator Events XML Units
	[Documentation]    Validate the Rotator Events XML Units.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Rotator Events XML Unit types
	[Documentation]    Validate the Rotator Events XML Units conform to standards.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Rotator Telemetry XML Units
	[Documentation]    Validate the Rotator Telemetry XML Units.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Rotator Telemetry XML Unit types
	[Documentation]    Validate the Rotator Telemetry XML Units conform to standards.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Rotator/Rotator_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Scheduler Events XML Units
	[Documentation]    Validate the Scheduler Events XML Units.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Scheduler Events XML Unit types
	[Documentation]    Validate the Scheduler Events XML Units conform to standards.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Scheduler Telemetry XML Units
	[Documentation]    Validate the Scheduler Telemetry XML Units.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Scheduler Telemetry XML Unit types
	[Documentation]    Validate the Scheduler Telemetry XML Units conform to standards.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Scheduler/Scheduler_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Script Commands XML Units
	[Documentation]    Validate the Script Commands XML Units.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Script Commands XML Unit types
	[Documentation]    Validate the Script Commands XML Units conform to standards.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Script/Script_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Script Events XML Units
	[Documentation]    Validate the Script Events XML Units.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Script Events XML Unit types
	[Documentation]    Validate the Script Events XML Units conform to standards.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Script/Script_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ScriptQueue Commands XML Units
	[Documentation]    Validate the ScriptQueue Commands XML Units.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ScriptQueue Commands XML Unit types
	[Documentation]    Validate the ScriptQueue Commands XML Units conform to standards.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate ScriptQueue Events XML Units
	[Documentation]    Validate the ScriptQueue Events XML Units.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate ScriptQueue Events XML Unit types
	[Documentation]    Validate the ScriptQueue Events XML Units conform to standards.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate SummitFacility Telemetry XML Units
	[Documentation]    Validate the SummitFacility Telemetry XML Units.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate SummitFacility Telemetry XML Unit types
	[Documentation]    Validate the SummitFacility Telemetry XML Units conform to standards.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/SummitFacility/SummitFacility_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Test Commands XML Units
	[Documentation]    Validate the Test Commands XML Units.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Test Commands XML Unit types
	[Documentation]    Validate the Test Commands XML Units conform to standards.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Test Events XML Units
	[Documentation]    Validate the Test Events XML Units.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Test Events XML Unit types
	[Documentation]    Validate the Test Events XML Units conform to standards.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Test Telemetry XML Units
	[Documentation]    Validate the Test Telemetry XML Units.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Test Telemetry XML Unit types
	[Documentation]    Validate the Test Telemetry XML Units conform to standards.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate TunableLaser Commands XML Units
	[Documentation]    Validate the TunableLaser Commands XML Units.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate TunableLaser Commands XML Unit types
	[Documentation]    Validate the TunableLaser Commands XML Units conform to standards.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate TunableLaser Events XML Units
	[Documentation]    Validate the TunableLaser Events XML Units.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate TunableLaser Events XML Unit types
	[Documentation]    Validate the TunableLaser Events XML Units conform to standards.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate TunableLaser Telemetry XML Units
	[Documentation]    Validate the TunableLaser Telemetry XML Units.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate TunableLaser Telemetry XML Unit types
	[Documentation]    Validate the TunableLaser Telemetry XML Units conform to standards.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Units" -v . -n ${folder}/sal_interfaces/TunableLaser/TunableLaser_Telemetry.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Watcher Commands XML Units
	[Documentation]    Validate the Watcher Commands XML Units.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Watcher Commands XML Unit types
	[Documentation]    Validate the Watcher Commands XML Units conform to standards.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Units" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Commands.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

Validate Watcher Events XML Units
	[Documentation]    Validate the Watcher Events XML Units.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |tr '\\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ,,    msg=Contains undefined units.    values=False
	Should Not Start With    ${output}    ,    msg=Contains undefined units.    values=False

Validate Watcher Events XML Unit types
	[Documentation]    Validate the Watcher Events XML Units conform to standards.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Units" -v . -n ${folder}/sal_interfaces/Watcher/Watcher_Events.xml |awk 'NF > 0' |uniq
	@{units}=    Split String    ${output}    ${\n}
	Log    ${units}
	FOR    ${unit}    IN    @{units}
	   ${output}=    Run Keyword If    "${unit}" == "unitless"    Set Variable    Parameter is unitless
	   ...    ELSE IF    "${unit}" == "dimensionless"    Set Variable    Parameter is dimensionless
	   ...    ELSE    Unit_Validator.Check Unit    ${unit}
	   Log    ${output}
	   Run Keyword and Continue on Failure    Should Not Contain    ${output}    Error    msg=${output}    values=False
	END

