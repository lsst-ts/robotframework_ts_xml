*** Settings ***
Documentation    Validate the subsystem XML definition files contain a valid IDL_Type values.
Suite Setup    Run Keywords    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
...			   AND    Set Suite Variable    @{TypeArray}    boolean    byte    char    double    float    int
...			   long    long long    octet    short    string    unsigned int    unsigned long    unsigned short    unsigned long long
Library    OperatingSystem
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate IDL_Type Values
    [Tags]    smoke
	Comment    Use grep to find all IDL_Type lines, -h to not return file names.
	...    Pipe through tr to replace tabs (\t) with a space, then squeeze all spaces to one instance.
	...    Delete all carriage returns (\r) to make results all Unix-like.
	...    Finally, sort and return only unique values.
    ${output}=    Run    grep -h "<IDL_Type>" ${folder}/sal_interfaces/*/* |tr "\\t" " " |tr -s " " |tr -d "\\r" |sort -u |sed "s/^[ \\t]*//" |sed 's/<IDL_Type>//g' |sed 's/<\\/IDL_Type>//g'
	@{Types}=    Split to Lines    ${output}
    Log Many    ${Types}
	Comment    Verify each IDL_Type is valid, i.e. it matches a value in @{TypeArray}
	:FOR    ${type}    IN    @{Types}
	\	Should Contain    ${TypeArray}    ${type}
