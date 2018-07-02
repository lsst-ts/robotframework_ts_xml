*** Settings ***
Documentation    Validate the subsystem XML definition files contain a count value.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands XML Counts
	[Documentation]    Validate the Archiver Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Archiver Events XML Counts
	[Documentation]    Validate the Archiver Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Archiver Telemetry XML Counts
	[Documentation]    Validate the Archiver Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtArchiver Commands XML Counts
	[Documentation]    Validate the AtArchiver Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtArchiver Events XML Counts
	[Documentation]    Validate the AtArchiver Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtArchiver Telemetry XML Counts
	[Documentation]    Validate the AtArchiver Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtHeaderService Commands XML Counts
	[Documentation]    Validate the AtHeaderService Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtHeaderService Events XML Counts
	[Documentation]    Validate the AtHeaderService Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtHeaderService Telemetry XML Counts
	[Documentation]    Validate the AtHeaderService Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtMonochromator Commands XML Counts
	[Documentation]    Validate the AtMonochromator Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtMonochromator Events XML Counts
	[Documentation]    Validate the AtMonochromator Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtMonochromator Telemetry XML Counts
	[Documentation]    Validate the AtMonochromator Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtScheduler Events XML Counts
	[Documentation]    Validate the AtScheduler Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtScheduler Telemetry XML Counts
	[Documentation]    Validate the AtScheduler Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Atwhitelight Commands XML Counts
	[Documentation]    Validate the Atwhitelight Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Atwhitelight Events XML Counts
	[Documentation]    Validate the Atwhitelight Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Atwhitelight Telemetry XML Counts
	[Documentation]    Validate the Atwhitelight Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atWhiteLight/atWhiteLight_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtCamera Commands XML Counts
	[Documentation]    Validate the AtCamera Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtCamera Events XML Counts
	[Documentation]    Validate the AtCamera Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate AtCamera Telemetry XML Counts
	[Documentation]    Validate the AtCamera Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCS Commands XML Counts
	[Documentation]    Validate the ATCS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCS Events XML Counts
	[Documentation]    Validate the ATCS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate ATCS Telemetry XML Counts
	[Documentation]    Validate the ATCS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Calibrationelectrometer Commands XML Counts
	[Documentation]    Validate the Calibrationelectrometer Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Calibrationelectrometer Events XML Counts
	[Documentation]    Validate the Calibrationelectrometer Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Calibrationelectrometer Telemetry XML Counts
	[Documentation]    Validate the Calibrationelectrometer Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Camera Commands XML Counts
	[Documentation]    Validate the Camera Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Camera Events XML Counts
	[Documentation]    Validate the Camera Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Camera Telemetry XML Counts
	[Documentation]    Validate the Camera Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CatchupArchiver Commands XML Counts
	[Documentation]    Validate the CatchupArchiver Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CatchupArchiver Events XML Counts
	[Documentation]    Validate the CatchupArchiver Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate CatchupArchiver Telemetry XML Counts
	[Documentation]    Validate the CatchupArchiver Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Commands XML Counts
	[Documentation]    Validate the Dome Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Events XML Counts
	[Documentation]    Validate the Dome Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Dome Telemetry XML Counts
	[Documentation]    Validate the Dome Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Commands XML Counts
	[Documentation]    Validate the DomeADB Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Events XML Counts
	[Documentation]    Validate the DomeADB Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeADB Telemetry XML Counts
	[Documentation]    Validate the DomeADB Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Commands XML Counts
	[Documentation]    Validate the DomeAPS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Events XML Counts
	[Documentation]    Validate the DomeAPS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeAPS Telemetry XML Counts
	[Documentation]    Validate the DomeAPS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Commands XML Counts
	[Documentation]    Validate the DomeLouvers Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Events XML Counts
	[Documentation]    Validate the DomeLouvers Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLouvers Telemetry XML Counts
	[Documentation]    Validate the DomeLouvers Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Commands XML Counts
	[Documentation]    Validate the DomeLWS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Events XML Counts
	[Documentation]    Validate the DomeLWS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeLWS Telemetry XML Counts
	[Documentation]    Validate the DomeLWS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Commands XML Counts
	[Documentation]    Validate the DomeMONCS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Events XML Counts
	[Documentation]    Validate the DomeMONCS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeMONCS Telemetry XML Counts
	[Documentation]    Validate the DomeMONCS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Commands XML Counts
	[Documentation]    Validate the DomeTHCS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Events XML Counts
	[Documentation]    Validate the DomeTHCS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate DomeTHCS Telemetry XML Counts
	[Documentation]    Validate the DomeTHCS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EEC Commands XML Counts
	[Documentation]    Validate the EEC Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EEC Events XML Counts
	[Documentation]    Validate the EEC Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EEC Telemetry XML Counts
	[Documentation]    Validate the EEC Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFD Events XML Counts
	[Documentation]    Validate the EFD Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate EFD Telemetry XML Counts
	[Documentation]    Validate the EFD Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HeaderService Commands XML Counts
	[Documentation]    Validate the HeaderService Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HeaderService Events XML Counts
	[Documentation]    Validate the HeaderService Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate HeaderService Telemetry XML Counts
	[Documentation]    Validate the HeaderService Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/headerService/headerService_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Commands XML Counts
	[Documentation]    Validate the Hexapod Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Events XML Counts
	[Documentation]    Validate the Hexapod Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Hexapod Telemetry XML Counts
	[Documentation]    Validate the Hexapod Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M1M3 Commands XML Counts
	[Documentation]    Validate the M1M3 Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M1M3 Events XML Counts
	[Documentation]    Validate the M1M3 Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M1M3 Telemetry XML Counts
	[Documentation]    Validate the M1M3 Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M2MS Commands XML Counts
	[Documentation]    Validate the M2MS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M2MS Events XML Counts
	[Documentation]    Validate the M2MS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate M2MS Telemetry XML Counts
	[Documentation]    Validate the M2MS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Commands XML Counts
	[Documentation]    Validate the MTMount Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Events XML Counts
	[Documentation]    Validate the MTMount Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate MTMount Telemetry XML Counts
	[Documentation]    Validate the MTMount Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Commands XML Counts
	[Documentation]    Validate the OCS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Events XML Counts
	[Documentation]    Validate the OCS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate OCS Telemetry XML Counts
	[Documentation]    Validate the OCS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Commands XML Counts
	[Documentation]    Validate the Rotator Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Events XML Counts
	[Documentation]    Validate the Rotator Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Rotator Telemetry XML Counts
	[Documentation]    Validate the Rotator Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Scheduler Telemetry XML Counts
	[Documentation]    Validate the Scheduler Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Commands XML Counts
	[Documentation]    Validate the Sequencer Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Events XML Counts
	[Documentation]    Validate the Sequencer Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate Sequencer Telemetry XML Counts
	[Documentation]    Validate the Sequencer Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate SummitFacility Commands XML Counts
	[Documentation]    Validate the SummitFacility Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate SummitFacility Events XML Counts
	[Documentation]    Validate the SummitFacility Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate SummitFacility Telemetry XML Counts
	[Documentation]    Validate the SummitFacility Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TCS Commands XML Counts
	[Documentation]    Validate the TCS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TCS Events XML Counts
	[Documentation]    Validate the TCS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TCS Telemetry XML Counts
	[Documentation]    Validate the TCS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TcsOfc Commands XML Counts
	[Documentation]    Validate the TcsOfc Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TcsOfc Events XML Counts
	[Documentation]    Validate the TcsOfc Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TcsOfc Telemetry XML Counts
	[Documentation]    Validate the TcsOfc Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TcsWEP Events XML Counts
	[Documentation]    Validate the TcsWEP Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate TcsWEP Telemetry XML Counts
	[Documentation]    Validate the TcsWEP Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate VMS Commands XML Counts
	[Documentation]    Validate the VMS Commands XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/Count" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate VMS Events XML Counts
	[Documentation]    Validate the VMS Events XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/Count" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

Validate VMS Telemetry XML Counts
	[Documentation]    Validate the VMS Telemetry XML count.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/Count" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/,/g'
	Log    ${output}
	Should Not Contain    ${output}    ,,
	Should Not Start With    ${output}    ,

