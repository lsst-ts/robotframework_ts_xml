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

Validate DomeADB Commands
    [Documentation]    Validate the DomeADB Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeADB_Commands.xml - valid

Validate DomeAPS Commands
    [Documentation]    Validate the DomeAPS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeAPS_Commands.xml - valid

Validate DomeLWS Commands
    [Documentation]    Validate the DomeLWS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeLWS_Commands.xml - valid

Validate DomeLouvers Commands
    [Documentation]    Validate the DomeLouvers Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeLouvers_Commands.xml - valid

Validate DomeMONCS Commands
    [Documentation]    Validate the DomeMONCS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeMONCS_Commands.xml - valid

Validate DomeTHCS Commands
    [Documentation]    Validate the DomeTHCS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
    Log    ${output}
    Should Contain    ${output}    domeTHCS_Commands.xml - valid

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

Validate OCS Commands
    [Documentation]    Validate the OCS Commands XML file.
    [Tags]    smoke
    ${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ocs/ocs_Commands.xml
    Log    ${output}
    Should Contain    ${output}    ocs_Commands.xml - valid

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
