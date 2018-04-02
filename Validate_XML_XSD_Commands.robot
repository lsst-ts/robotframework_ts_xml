*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/archiver/archiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Commands.xml - valid

Validate CalibrationElectrometer Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   calibrationElectrometer_Commands.xml - valid

Validate Camera Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/camera/camera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   camera_Commands.xml - valid

Validate CatchupArchiver Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   catchuparchiver_Commands.xml - valid

Validate DMHeaderService Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/dmHeaderService/dmHeaderService_Commands.xml
	Log    ${output}
	Should Contain    ${output}   dmHeaderService_Commands.xml - valid

Validate Dome Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/dome/dome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   dome_Commands.xml - valid

Validate DomeADB Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Commands.xml - valid

Validate DomeAPS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Commands.xml - valid

Validate DomeLouvers Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Commands.xml - valid

Validate DomeLWS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Commands.xml - valid

Validate DomeMONCS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Commands.xml - valid

Validate DomeTHCS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Commands.xml - valid

Validate EEC Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/eec/eec_Commands.xml
	Log    ${output}
	Should Contain    ${output}   eec_Commands.xml - valid

Validate Hexapod Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Commands.xml - valid

Validate M1M3 Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Commands.xml - valid

Validate M2MS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Commands.xml - valid

Validate MTMount Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate OCS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Commands.xml - valid

Validate PromptProcessing Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml
	Log    ${output}
	Should Contain    ${output}   promptprocessing_Commands.xml - valid

Validate Rotator Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Commands.xml - valid

Validate Sequencer Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Commands.xml - valid

Validate SummitFacility Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml
	Log    ${output}
	Should Contain    ${output}   summitFacility_Commands.xml - valid

Validate TCS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Commands.xml - valid

Validate TCSAOCS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/tcsAOCS/tcsAOCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcsAOCS_Commands.xml - valid

Validate TCSOFC Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcsOfc_Commands.xml - valid

Validate VMS Commands XML file
	[Tags]    smoke
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/vms/vms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   vms_Commands.xml - valid

