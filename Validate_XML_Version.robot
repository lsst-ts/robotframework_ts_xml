*** Settings ***
Documentation    Validate the subsystem XML definition files contain the correct version.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Events Version
	[Documentation]    Validate the Archiver Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Archiver Telemetry Version
	[Documentation]    Validate the Archiver Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Camera Commands Version
	[Documentation]    Validate the Camera Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Camera Events Version
	[Documentation]    Validate the Camera Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Camera Telemetry Version
	[Documentation]    Validate the Camera Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Catchuparchiver Events Version
	[Documentation]    Validate the Catchuparchiver Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Catchuparchiver Telemetry Version
	[Documentation]    Validate the Catchuparchiver Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate DM Events Version
	[Documentation]    Validate the DM Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/dm/dm_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dm/dm_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate DM Telemetry Version
	[Documentation]    Validate the DM Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/dm/dm_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dm/dm_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Dome Commands Version
	[Documentation]    Validate the Dome Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate Dome Events Version
	[Documentation]    Validate the Dome Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate Dome Telemetry Version
	[Documentation]    Validate the Dome Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeADB Commands Version
	[Documentation]    Validate the DomeADB Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeADB Events Version
	[Documentation]    Validate the DomeADB Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeADB Telemetry Version
	[Documentation]    Validate the DomeADB Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeAPS Commands Version
	[Documentation]    Validate the DomeAPS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeAPS Events Version
	[Documentation]    Validate the DomeAPS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeAPS Telemetry Version
	[Documentation]    Validate the DomeAPS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeLouvers Commands Version
	[Documentation]    Validate the DomeLouvers Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeLouvers Events Version
	[Documentation]    Validate the DomeLouvers Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeLouvers Telemetry Version
	[Documentation]    Validate the DomeLouvers Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeLWS Commands Version
	[Documentation]    Validate the DomeLWS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeLWS Events Version
	[Documentation]    Validate the DomeLWS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeLWS Telemetry Version
	[Documentation]    Validate the DomeLWS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeMONCS Commands Version
	[Documentation]    Validate the DomeMONCS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeMONCS Events Version
	[Documentation]    Validate the DomeMONCS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeMONCS Telemetry Version
	[Documentation]    Validate the DomeMONCS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate DomeTHCS Commands Version
	[Documentation]    Validate the DomeTHCS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeTHCS Events Version
	[Documentation]    Validate the DomeTHCS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    1.0.0    ${count}

Validate DomeTHCS Telemetry Version
	[Documentation]    Validate the DomeTHCS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.5.0    ${count}

Validate Hexapod Commands Version
	[Documentation]    Validate the Hexapod Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.1.0    ${count}

Validate Hexapod Events Version
	[Documentation]    Validate the Hexapod Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Hexapod Telemetry Version
	[Documentation]    Validate the Hexapod Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate M1M3 Commands Version
	[Documentation]    Validate the M1M3 Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    2.5.3    ${count}

Validate M1M3 Events Version
	[Documentation]    Validate the M1M3 Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate M1M3 Telemetry Version
	[Documentation]    Validate the M1M3 Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate M2MS Commands Version
	[Documentation]    Validate the M2MS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate M2MS Events Version
	[Documentation]    Validate the M2MS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate M2MS Telemetry Version
	[Documentation]    Validate the M2MS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.4    ${count}

Validate MTMount Commands Version
	[Documentation]    Validate the MTMount Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.0    ${count}

Validate MTMount Events Version
	[Documentation]    Validate the MTMount Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate MTMount Telemetry Version
	[Documentation]    Validate the MTMount Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate OCS Commands Version
	[Documentation]    Validate the OCS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.4    ${count}

Validate OCS Events Version
	[Documentation]    Validate the OCS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.1    ${count}

Validate OCS Telemetry Version
	[Documentation]    Validate the OCS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.1    ${count}

Validate Processingcluster Events Version
	[Documentation]    Validate the Processingcluster Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Processingcluster Telemetry Version
	[Documentation]    Validate the Processingcluster Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/processingcluster/processingcluster_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Rotator Commands Version
	[Documentation]    Validate the Rotator Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Rotator Events Version
	[Documentation]    Validate the Rotator Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Rotator Telemetry Version
	[Documentation]    Validate the Rotator Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Scheduler Telemetry Version
	[Documentation]    Validate the Scheduler Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate Sequencer Commands Version
	[Documentation]    Validate the Sequencer Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Sequencer Events Version
	[Documentation]    Validate the Sequencer Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate Sequencer Telemetry Version
	[Documentation]    Validate the Sequencer Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    None    ${count}

Validate TCS Commands Version
	[Documentation]    Validate the TCS Commands version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALCommandSet/SALCommand/EFDB_Topic)" ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate TCS Events Version
	[Documentation]    Validate the TCS Events version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALEventSet/SALEvent/EFDB_Topic)" ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

Validate TCS Telemetry Version
	[Documentation]    Validate the TCS Telemetry version.
	[Tags]    smoke
	${count}=    Run    ${xml} sel -t -v "count(/SALTelemetrySet/SALTelemetry/EFDB_Topic)" ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Version" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml
	Log    ${output}
	Should Contain X Times    ${output}    3.2.0    ${count}

