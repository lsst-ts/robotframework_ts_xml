*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Camera Telemetry
    [Documentation]    Validate the Camera Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/camera/camera_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    camera_Telemetry.xml - valid

Validate DM Telemetry
    [Documentation]    Validate the DM Telemetry XML file.
    [Tags]    smoke    skipped    # DM currently has no commands
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/dm/dm_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    dm_Telemetry.xml - valid

Validate Dome Telemetry
    [Documentation]    Validate the Dome Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/dome/dome_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    dome_Telemetry.xml - valid

Validate Hexapod Telemetry
    [Documentation]    Validate the Hexapod Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    hexapod_Telemetry.xml - valid

Validate M1M3 Telemetry
    [Documentation]    Validate the M1M3 Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    m1m3_Telemetry.xml - valid

Validate M2MS Telemetry
    [Documentation]    Validate the M2MS Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    m2ms_Telemetry.xml - valid

Validate MTMount Telemetry
    [Documentation]    Validate the MTMount Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    MTMount_Telemetry.xml - valid

Validate Rotator Telemetry
    [Documentation]    Validate the Rotator Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    rotator_Telemetry.xml - valid

Validate TCS Telemetry
    [Documentation]    Validate the TCS Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALTelemetrySet.xsd ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    tcs_Telemetry.xml - valid
