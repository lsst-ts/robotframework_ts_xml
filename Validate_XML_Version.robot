*** Settings ***
Documentation    Validate the subsystem XML definition files contain the correct version.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Camera Telemetry Version
    [Documentation]    Validate the Camera Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    15

Validate Camera Commands
    [Documentation]    Validate the Camera Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    5

Validate Camera Events
    [Documentation]    Validate the Camera Events    [Documentation]    Validate the Camera Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    22 

Validate DM Telemetry
    [Documentation]    Validate the DM Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dm/dm_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    9

Validate DM Commands
    [Documentation]    Validate the DM Commands XML version.
    [Tags]    smoke    skipped    # DM currently has no commands
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/dm/dm_Commands.xml
    Log    ${output}

Validate DM Events
    [Documentation]    Validate the DM Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dm/dm_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    3

Validate Dome Telemetry
    [Documentation]    Validate the Dome Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    10

Validate Dome Commands
    [Documentation]    Validate the Dome Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    8

Validate Dome Events
    [Documentation]    Validate the Dome Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    17

Validate Hexapod Telemetry
    [Documentation]    Validate the Hexapod Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    6

Validate Hexapod Commands
    [Documentation]    Validate the Hexapod Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    8

Validate Hexapod Events
    [Documentation]    Validate the Hexapod Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    7

Validate M1M3 Telemetry
    [Documentation]    Validate the M1M3 Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    9 

Validate M1M3 Commands
    [Documentation]    Validate the M1M3 Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    4

Validate M1M3 Events
    [Documentation]    Validate the M1M3 Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    7

Validate M2MS Telemetry
    [Documentation]    Validate the M2MS Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    9

Validate M2MS Commands
    [Documentation]    Validate the M2MS Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    5

Validate M2MS Events
    [Documentation]    Validate the M2MS Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    4

Validate MTMount Telemetry
    [Documentation]    Validate the MTMount Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    14

Validate MTMount Commands
    [Documentation]    Validate the MTMount Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    8

Validate MTMount Events
    [Documentation]    Validate the MTMount Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    4

Validate Rotator Telemetry
    [Documentation]    Validate the Rotator Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    4

Validate Rotator Commands
    [Documentation]    Validate the Rotator Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    5

Validate Rotator Events
    [Documentation]    Validate the Rotator Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    7

Validate Scheduler Telemetry
    [Documentation]    Validate the Scheduler Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    28

Validate TCS Telemetry
    [Documentation]    Validate the TCS Telemetry XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    14

Validate TCS Commands
    [Documentation]    Validate the TCS Commands XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    2

Validate TCS Events
    [Documentation]    Validate the TCS Events XML version.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml
    Log    ${output}
    Should Contain X Times    ${output}    ${version}    2
