*** Settings ***
Documentation    Validate the subsystem XML definition files contain a count value.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Camera Telemetry Counts
    [Documentation]    Validate the Camera Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Camera Commands Counts
    [Documentation]    Validate the Camera Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Camera Events Counts
    [Documentation]    Validate the Camera Events    [Documentation]
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate DM Telemetry Counts
    [Documentation]    Validate the DM Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/dm/dm_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate DM Commands Counts
    [Documentation]    Validate the DM Commands XML count.
    [Tags]    smoke    skipped    # DM currently has no commands
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/dm/dm_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}

Validate DM Events Counts
    [Documentation]    Validate the DM Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/dm/dm_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Dome Telemetry Counts
    [Documentation]    Validate the Dome Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Dome Commands Counts
    [Documentation]    Validate the Dome Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Dome Events Counts
    [Documentation]    Validate the Dome Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Hexapod Telemetry Counts
    [Documentation]    Validate the Hexapod Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Hexapod Commands Counts
    [Documentation]    Validate the Hexapod Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Hexapod Events Counts
    [Documentation]    Validate the Hexapod Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M1M3 Telemetry Counts
    [Documentation]    Validate the M1M3 Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M1M3 Commands Counts
    [Documentation]    Validate the M1M3 Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M1M3 Events Counts
    [Documentation]    Validate the M1M3 Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M2MS Telemetry Counts
    [Documentation]    Validate the M2MS Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M2MS Commands Counts
    [Documentation]    Validate the M2MS Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate M2MS Events Counts
    [Documentation]    Validate the M2MS Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate MTMount Telemetry Counts
    [Documentation]    Validate the MTMount Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate MTMount Commands Counts
    [Documentation]    Validate the MTMount Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate MTMount Events Counts
    [Documentation]    Validate the MTMount Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Rotator Telemetry Counts
    [Documentation]    Validate the Rotator Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Rotator Commands Counts
    [Documentation]    Validate the Rotator Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Rotator Events Counts
    [Documentation]    Validate the Rotator Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate Scheduler Telemetry Counts
    [Documentation]    Validate the Scheduler Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate TCS Telemetry Counts
    [Documentation]    Validate the TCS Telemetry XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate TCS Commands Counts
    [Documentation]    Validate the TCS Commands XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,

Validate TCS Events Counts
    [Documentation]    Validate the TCS Events XML count.
    [Tags]    smoke
    ${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
    Log    ${output}
    Should Not Contain    ${output}    ,,
    Should Not Start With    ${output}    ,
