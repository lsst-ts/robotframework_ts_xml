*** Settings ***
Documentation    Validate the subsystem XML definition files contain a count value.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate AtDome Commands XML Counts
	[Documentation]    Validate the AtDome Commands XML count.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtDome Events XML Counts
	[Documentation]    Validate the AtDome Events XML count.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtDome Telemetry XML Counts
	[Documentation]    Validate the AtDome Telemetry XML count.
	[Tags]    smoke    AtDome
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/AtDome/AtDome_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Cbp Commands XML Counts
	[Documentation]    Validate the Cbp Commands XML count.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/CBP/CBP_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Cbp Events XML Counts
	[Documentation]    Validate the Cbp Events XML count.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/CBP/CBP_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Cbp Telemetry XML Counts
	[Documentation]    Validate the Cbp Telemetry XML count.
	[Tags]    smoke    Cbp
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/CBP/CBP_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Commands XML Counts
	[Documentation]    Validate the LinearStage Commands XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Events XML Counts
	[Documentation]    Validate the LinearStage Events XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate LinearStage Telemetry XML Counts
	[Documentation]    Validate the LinearStage Telemetry XML count.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/LinearStage/LinearStage_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Commands XML Counts
	[Documentation]    Validate the MTMount Commands XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Events XML Counts
	[Documentation]    Validate the MTMount Events XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Telemetry XML Counts
	[Documentation]    Validate the MTMount Telemetry XML count.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PromptProcessing Commands XML Counts
	[Documentation]    Validate the PromptProcessing Commands XML count.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PromptProcessing Events XML Counts
	[Documentation]    Validate the PromptProcessing Events XML count.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate PromptProcessing Telemetry XML Counts
	[Documentation]    Validate the PromptProcessing Telemetry XML count.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/PromptProcessing/PromptProcessing_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Commands XML Counts
	[Documentation]    Validate the Test Commands XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Events XML Counts
	[Documentation]    Validate the Test Events XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Test Telemetry XML Counts
	[Documentation]    Validate the Test Telemetry XML count.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/Test/Test_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

