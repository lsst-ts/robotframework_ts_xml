*** Settings ***
Documentation    Validate the SAL cscs XML dictionary file.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    Collections
Library    String
Resource    Global_Vars.robot

