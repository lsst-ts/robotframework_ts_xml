*** Settings ***
Documentation    Validate the subsystem XML definition files.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events
	[Documentation]    Validate the Archiver Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/archiver/archiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Events.xml - valid

Validate Archiver Telemetry
	[Documentation]    Validate the Archiver Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   archiver_Telemetry.xml - valid

Validate Camera Commands
	[Documentation]    Validate the Camera Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Commands.xml
	Log    ${output}
	Should Contain    ${output}   camera_Commands.xml - valid

Validate Camera Events
	[Documentation]    Validate the Camera Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Events.xml
	Log    ${output}
	Should Contain    ${output}   camera_Events.xml - valid

Validate Camera Telemetry
	[Documentation]    Validate the Camera Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   camera_Telemetry.xml - valid

Validate Catchuparchiver Events
	[Documentation]    Validate the Catchuparchiver Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml
	Log    ${output}
	Should Contain    ${output}   catchuparchiver_Events.xml - valid

Validate Catchuparchiver Telemetry
	[Documentation]    Validate the Catchuparchiver Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   catchuparchiver_Telemetry.xml - valid

Validate Dome Commands
	[Documentation]    Validate the Dome Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Commands.xml
	Log    ${output}
	Should Contain    ${output}   dome_Commands.xml - valid

Validate Dome Events
	[Documentation]    Validate the Dome Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Events.xml
	Log    ${output}
	Should Contain    ${output}   dome_Events.xml - valid

Validate Dome Telemetry
	[Documentation]    Validate the Dome Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   dome_Telemetry.xml - valid

Validate DomeADB Commands
	[Documentation]    Validate the DomeADB Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Commands.xml - valid

Validate DomeADB Events
	[Documentation]    Validate the DomeADB Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Events.xml - valid

Validate DomeADB Telemetry
	[Documentation]    Validate the DomeADB Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeADB_Telemetry.xml - valid

Validate DomeAPS Commands
	[Documentation]    Validate the DomeAPS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Commands.xml - valid

Validate DomeAPS Events
	[Documentation]    Validate the DomeAPS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Events.xml - valid

Validate DomeAPS Telemetry
	[Documentation]    Validate the DomeAPS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeAPS_Telemetry.xml - valid

Validate DomeLouvers Commands
	[Documentation]    Validate the DomeLouvers Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Commands.xml - valid

Validate DomeLouvers Events
	[Documentation]    Validate the DomeLouvers Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Events.xml - valid

Validate DomeLouvers Telemetry
	[Documentation]    Validate the DomeLouvers Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLouvers_Telemetry.xml - valid

Validate DomeLWS Commands
	[Documentation]    Validate the DomeLWS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Commands.xml - valid

Validate DomeLWS Events
	[Documentation]    Validate the DomeLWS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Events.xml - valid

Validate DomeLWS Telemetry
	[Documentation]    Validate the DomeLWS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeLWS_Telemetry.xml - valid

Validate DomeMONCS Commands
	[Documentation]    Validate the DomeMONCS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Commands.xml - valid

Validate DomeMONCS Events
	[Documentation]    Validate the DomeMONCS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Events.xml - valid

Validate DomeMONCS Telemetry
	[Documentation]    Validate the DomeMONCS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeMONCS_Telemetry.xml - valid

Validate DomeTHCS Commands
	[Documentation]    Validate the DomeTHCS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Commands.xml - valid

Validate DomeTHCS Events
	[Documentation]    Validate the DomeTHCS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Events.xml - valid

Validate DomeTHCS Telemetry
	[Documentation]    Validate the DomeTHCS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   domeTHCS_Telemetry.xml - valid

Validate EEC Commands
	[Documentation]    Validate the EEC Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Commands.xml
	Log    ${output}
	Should Contain    ${output}   eec_Commands.xml - valid

Validate EEC Events
	[Documentation]    Validate the EEC Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Events.xml
	Log    ${output}
	Should Contain    ${output}   eec_Events.xml - valid

Validate EEC Telemetry
	[Documentation]    Validate the EEC Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/eec/eec_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   eec_Telemetry.xml - valid

Validate Environment Telemetry
	[Documentation]    Validate the Environment Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/environment/environment_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   environment_Telemetry.xml - valid

Validate Hexapod Commands
	[Documentation]    Validate the Hexapod Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Commands.xml - valid

Validate Hexapod Events
	[Documentation]    Validate the Hexapod Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Events.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Events.xml - valid

Validate Hexapod Telemetry
	[Documentation]    Validate the Hexapod Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   hexapod_Telemetry.xml - valid

Validate M1M3 Commands
	[Documentation]    Validate the M1M3 Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Commands.xml - valid

Validate M1M3 Events
	[Documentation]    Validate the M1M3 Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Events.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Events.xml - valid

Validate M1M3 Telemetry
	[Documentation]    Validate the M1M3 Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m1m3_Telemetry.xml - valid

Validate M2MS Commands
	[Documentation]    Validate the M2MS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Commands.xml - valid

Validate M2MS Events
	[Documentation]    Validate the M2MS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Events.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Events.xml - valid

Validate M2MS Telemetry
	[Documentation]    Validate the M2MS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   m2ms_Telemetry.xml - valid

Validate MTMount Commands
	[Documentation]    Validate the MTMount Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Commands.xml - valid

Validate MTMount Events
	[Documentation]    Validate the MTMount Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Events.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Events.xml - valid

Validate MTMount Telemetry
	[Documentation]    Validate the MTMount Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   MTMount_Telemetry.xml - valid

Validate OCS Commands
	[Documentation]    Validate the OCS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Commands.xml - valid

Validate OCS Events
	[Documentation]    Validate the OCS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Events.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Events.xml - valid

Validate OCS Telemetry
	[Documentation]    Validate the OCS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   ocs_Telemetry.xml - valid

Validate Processingcluster Events
	[Documentation]    Validate the Processingcluster Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/processingcluster/processingcluster_Events.xml
	Log    ${output}
	Should Contain    ${output}   processingcluster_Events.xml - valid

Validate Processingcluster Telemetry
	[Documentation]    Validate the Processingcluster Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   processingcluster_Telemetry.xml - valid

Validate Rotator Commands
	[Documentation]    Validate the Rotator Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Commands.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Commands.xml - valid

Validate Rotator Events
	[Documentation]    Validate the Rotator Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Events.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Events.xml - valid

Validate Rotator Telemetry
	[Documentation]    Validate the Rotator Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   rotator_Telemetry.xml - valid

Validate Scheduler Telemetry
	[Documentation]    Validate the Scheduler Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   scheduler_Telemetry.xml - valid

Validate Sequencer Commands
	[Documentation]    Validate the Sequencer Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Commands.xml - valid

Validate Sequencer Events
	[Documentation]    Validate the Sequencer Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Events.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Events.xml - valid

Validate Sequencer Telemetry
	[Documentation]    Validate the Sequencer Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   sequencer_Telemetry.xml - valid

Validate TCS Commands
	[Documentation]    Validate the TCS Commands XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Commands.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Commands.xml - valid

Validate TCS Events
	[Documentation]    Validate the TCS Events XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Events.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Events.xml - valid

Validate TCS Telemetry
	[Documentation]    Validate the TCS Telemetry XML file.
	[Tags]    smoke
	${output}=    Run    ${xml} val ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain    ${output}   tcs_Telemetry.xml - valid

