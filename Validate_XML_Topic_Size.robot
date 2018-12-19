*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain a Topic greater than 65536 bytes in total size or that exceeds 4096 total arguments.
Suite Setup    Run Keywords    Create the DataType:Size Dictionary    AND    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
