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
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    camera_Telemetry.xml - valid

Validate Camera Commands
    [Documentation]    Validate the Camera Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Commands.xml
    Log    ${output}
    Should Contain    ${output}    camera_Commands.xml - valid

Validate Camera Events
    [Documentation]    Validate the Camera Events    [Documentation]    Validate the Camera Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Events.xml
    Log    ${output}
    Should Contain    ${output}    camera_Events.xml - valid

Validate DM Telemetry
    [Documentation]    Validate the DM Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dm/dm_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    dm_Telemetry.xml - valid

Validate DM Commands
    [Documentation]    Validate the DM Commands XML file.
    [Tags]    smoke    skipped    # DM currently has no commands
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dm/dm_Commands.xml
    Log    ${output}
    Should Contain    ${output}    dm_Commands.xml - valid

Validate DM Events
    [Documentation]    Validate the DM Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dm/dm_Events.xml
    Log    ${output}
    Should Contain    ${output}    dm_Events.xml - valid

Validate Dome Telemetry
    [Documentation]    Validate the Dome Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    dome_Telemetry.xml - valid

Validate Dome Commands
    [Documentation]    Validate the Dome Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Commands.xml
    Log    ${output}
    Should Contain    ${output}    dome_Commands.xml - valid

Validate Dome Events
    [Documentation]    Validate the Dome Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Events.xml
    Log    ${output}
    Should Contain    ${output}    dome_Events.xml - valid

Validate Hexapod Telemetry
    [Documentation]    Validate the Hexapod Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    hexapod_Telemetry.xml - valid

Validate Hexapod Commands
    [Documentation]    Validate the Hexapod Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
    Log    ${output}
    Should Contain    ${output}    hexapod_Commands.xml - valid

Validate Hexapod Events
    [Documentation]    Validate the Hexapod Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
    Log    ${output}
    Should Contain    ${output}    hexapod_Events.xml - valid

Validate M1M3 Telemetry
    [Documentation]    Validate the M1M3 Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    m1m3_Telemetry.xml - valid

Validate M1M3 Commands
    [Documentation]    Validate the M1M3 Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
    Log    ${output}
    Should Contain    ${output}    m1m3_Commands.xml - valid

Validate M1M3 Events
    [Documentation]    Validate the M1M3 Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
    Log    ${output}
    Should Contain    ${output}    m1m3_Events.xml - valid

Validate M2MS Telemetry
    [Documentation]    Validate the M2MS Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    m2ms_Telemetry.xml - valid

Validate M2MS Commands
    [Documentation]    Validate the M2MS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
    Log    ${output}
    Should Contain    ${output}    m2ms_Commands.xml - valid

Validate M2MS Events
    [Documentation]    Validate the M2MS Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
    Log    ${output}
    Should Contain    ${output}    m2ms_Events.xml - valid

Validate MTMount Telemetry
    [Documentation]    Validate the MTMount Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    MTMount_Telemetry.xml - valid

Validate MTMount Commands
    [Documentation]    Validate the MTMount Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
    Log    ${output}
    Should Contain    ${output}    MTMount_Commands.xml - valid

Validate MTMount Events
    [Documentation]    Validate the MTMount Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
    Log    ${output}
    Should Contain    ${output}    MTMount_Events.xml - valid

Validate Rotator Telemetry
    [Documentation]    Validate the Rotator Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    rotator_Telemetry.xml - valid

Validate Rotator Commands
    [Documentation]    Validate the Rotator Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Commands.xml
    Log    ${output}
    Should Contain    ${output}    rotator_Commands.xml - valid

Validate Rotator Events
    [Documentation]    Validate the Rotator Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Events.xml
    Log    ${output}
    Should Contain    ${output}    rotator_Events.xml - valid

Validate Scheduler Telemetry
    [Documentation]    Validate the Scheduler Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    scheduler_Telemetry.xml - valid

Validate TCS Telemetry
    [Documentation]    Validate the TCS Telemetry XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
    Log    ${output}
    Should Contain    ${output}    tcs_Telemetry.xml - valid

Validate TCS Commands
    [Documentation]    Validate the TCS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Commands.xml
    Log    ${output}
    Should Contain    ${output}    tcs_Commands.xml - valid

Validate TCS Events
    [Documentation]    Validate the TCS Events XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Events.xml
    Log    ${output}
    Should Contain    ${output}    tcs_Events.xml - valid
