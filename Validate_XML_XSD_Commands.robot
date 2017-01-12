*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Camera Commands
    [Documentation]    Validate the Camera Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/camera/camera_Commands.xml
    Log    ${output}
    Should Contain    ${output}    camera_Commands.xml - valid

Validate DM Commands
    [Documentation]    Validate the DM Commands XML file.
    [Tags]    smoke    skipped    # DM currently has no commands
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/dm/dm_Commands.xml
    Log    ${output}
    Should Contain    ${output}    dm_Commands.xml - valid

Validate Dome Commands
    [Documentation]    Validate the Dome Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/dome/dome_Commands.xml
    Log    ${output}
    Should Contain    ${output}    dome_Commands.xml - valid

Validate Hexapod Commands
    [Documentation]    Validate the Hexapod Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
    Log    ${output}
    Should Contain    ${output}    hexapod_Commands.xml - valid

Validate M1M3 Commands
    [Documentation]    Validate the M1M3 Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
    Log    ${output}
    Should Contain    ${output}    m1m3_Commands.xml - valid

Validate M2MS Commands
    [Documentation]    Validate the M2MS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
    Log    ${output}
    Should Contain    ${output}    m2ms_Commands.xml - valid

Validate MTMount Commands
    [Documentation]    Validate the MTMount Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
    Log    ${output}
    Should Contain    ${output}    MTMount_Commands.xml - valid

Validate Rotator Commands
    [Documentation]    Validate the Rotator Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/rotator/rotator_Commands.xml
    Log    ${output}
    Should Contain    ${output}    rotator_Commands.xml - valid

Validate TCS Commands
    [Documentation]    Validate the TCS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/tcs/tcs_Commands.xml
    Log    ${output}
    Should Contain    ${output}    tcs_Commands.xml - valid
