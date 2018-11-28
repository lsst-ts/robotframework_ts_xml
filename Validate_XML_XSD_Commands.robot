*** Settings ***
Documentation    Validate the subsystem XML definition files against the appropriate XSD.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate ATArchiver Commands XML file
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATArchiver/ATArchiver_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATArchiver_Commands.xml - valid

Validate ATCamera Commands XML file
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATCamera/ATCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATCamera_Commands.xml - valid

Validate ATDome Commands XML file
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATDome/ATDome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATDome_Commands.xml - valid

Validate ATEEC Commands XML file
	[Tags]    smoke    ATEEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATEEC/ATEEC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATEEC_Commands.xml - valid

Validate ATHexapod Commands XML file
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATHexapod/ATHexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATHexapod_Commands.xml - valid

Validate ATMCS Commands XML file
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATMCS/ATMCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATMCS_Commands.xml - valid

Validate ATMonochromator Commands XML file
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATMonochromator/ATMonochromator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATMonochromator_Commands.xml - valid

Validate ATPneumatics Commands XML file
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATPneumatics/ATPneumatics_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATPneumatics_Commands.xml - valid

Validate ATSpectrograph Commands XML file
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATSpectrograph/ATSpectrograph_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATSpectrograph_Commands.xml - valid

Validate ATTCS Commands XML file
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATTCS/ATTCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATTCS_Commands.xml - valid

Validate ATThermoelectricCooler Commands XML file
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATThermoelectricCooler/ATThermoelectricCooler_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATThermoelectricCooler_Commands.xml - valid

Validate ATWhiteLight Commands XML file
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ATWhiteLight/ATWhiteLight_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ATWhiteLight_Commands.xml - valid

Validate CBP Commands XML file
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/CBP/CBP_Commands.xml
	Log    ${output}
	Should Contain    ${output}   CBP_Commands.xml - valid

Validate Dome Commands XML file
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Dome/Dome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Dome_Commands.xml - valid

Validate DomeADB Commands XML file
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeADB/DomeADB_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeADB_Commands.xml - valid

Validate DomeAPS Commands XML file
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeAPS/DomeAPS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeAPS_Commands.xml - valid

Validate DomeLouvers Commands XML file
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeLouvers/DomeLouvers_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeLouvers_Commands.xml - valid

Validate DomeLWS Commands XML file
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeLWS/DomeLWS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeLWS_Commands.xml - valid

Validate DomeMONCS Commands XML file
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeMONCS/DomeMONCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeMONCS_Commands.xml - valid

Validate DomeTHCS Commands XML file
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/DomeTHCS/DomeTHCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   DomeTHCS_Commands.xml - valid

Validate Electrometer Commands XML file
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Electrometer/Electrometer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Electrometer_Commands.xml - valid

Validate FiberSpectrograph Commands XML file
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/FiberSpectrograph/FiberSpectrograph_Commands.xml
	Log    ${output}
	Should Contain    ${output}   FiberSpectrograph_Commands.xml - valid

Validate Hexapod Commands XML file
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Hexapod/Hexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Hexapod_Commands.xml - valid

Validate HVAC Commands XML file
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/HVAC/HVAC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   HVAC_Commands.xml - valid

Validate LinearStage Commands XML file
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/LinearStage/LinearStage_Commands.xml
	Log    ${output}
	Should Contain    ${output}   LinearStage_Commands.xml - valid

Validate MTCamera Commands XML file
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTCamera/MTCamera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTCamera_Commands.xml - valid

Validate MTEEC Commands XML file
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTEEC/MTEEC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTEEC_Commands.xml - valid

Validate MTM1M3 Commands XML file
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTM1M3/MTM1M3_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTM1M3_Commands.xml - valid

Validate MTM2 Commands XML file
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTM2/MTM2_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTM2_Commands.xml - valid

Validate MTMount Commands XML file
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate MTOFC Commands XML file
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTOFC/MTOFC_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTOFC_Commands.xml - valid

Validate MTTCS Commands XML file
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTTCS/MTTCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTTCS_Commands.xml - valid

Validate MTVMS Commands XML file
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/MTVMS/MTVMS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTVMS_Commands.xml - valid

Validate OCS Commands XML file
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/OCS/OCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   OCS_Commands.xml - valid

Validate PointingComponent Commands XML file
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/PointingComponent/PointingComponent_Commands.xml
	Log    ${output}
	Should Contain    ${output}   PointingComponent_Commands.xml - valid

Validate Rotator Commands XML file
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Rotator/Rotator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Rotator_Commands.xml - valid

Validate Script Commands XML file
	[Tags]    smoke    Script    TSS-3331
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Script/Script_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Script_Commands.xml - valid

Validate ScriptQueue Commands XML file
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/ScriptQueue/ScriptQueue_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ScriptQueue_Commands.xml - valid

Validate Sequencer Commands XML file
	[Tags]    smoke    Sequencer
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Sequencer/Sequencer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Sequencer_Commands.xml - valid

Validate Test Commands XML file
	[Tags]    smoke    Test
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/Test/Test_Commands.xml
	Log    ${output}
	Should Contain    ${output}   Test_Commands.xml - valid

Validate TunableLaser Commands XML file
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} val -e --xsd ${folder}/schema/SALCommandSet.xsd ${folder}/sal_interfaces/TunableLaser/TunableLaser_Commands.xml
	Log    ${output}
	Should Contain    ${output}   TunableLaser_Commands.xml - valid

