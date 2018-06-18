*** Settings ***
Documentation    Validate the subsystem XML definition files do not contain embedded spaces in the XML Subsystem, Alias, EFDB_Name, nor EFDB_Topic elements.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml

*** Test Cases ***
Validate Archiver Commands <Subsystem> element
	[Documentation]    Validate the Archiver Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Commands <EFDB_Topic> element
	[Documentation]    Validate the Archiver Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Commands <Alias> element
	[Documentation]    Validate the Archiver Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Commands <EFDB_Name> element
	[Documentation]    Validate the Archiver Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Events <Subsystem> element
	[Documentation]    Validate the Archiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Events <EFDB_Topic> element
	[Documentation]    Validate the Archiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Events <Alias> element
	[Documentation]    Validate the Archiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Events <EFDB_Name> element
	[Documentation]    Validate the Archiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <Subsystem> element
	[Documentation]    Validate the Archiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Archiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <Alias> element
	[Documentation]    Validate the Archiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Archiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the Archiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/archiver/archiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Commands <Subsystem> element
	[Documentation]    Validate the AtArchiver Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Commands <EFDB_Topic> element
	[Documentation]    Validate the AtArchiver Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Commands <Alias> element
	[Documentation]    Validate the AtArchiver Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Commands <EFDB_Name> element
	[Documentation]    Validate the AtArchiver Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Events <Subsystem> element
	[Documentation]    Validate the AtArchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Events <EFDB_Topic> element
	[Documentation]    Validate the AtArchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Events <Alias> element
	[Documentation]    Validate the AtArchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Events <EFDB_Name> element
	[Documentation]    Validate the AtArchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Telemetry <Subsystem> element
	[Documentation]    Validate the AtArchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtArchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Telemetry <Alias> element
	[Documentation]    Validate the AtArchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtArchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtArchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atArchiver/atArchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Commands <Subsystem> element
	[Documentation]    Validate the AtHeaderService Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Commands <EFDB_Topic> element
	[Documentation]    Validate the AtHeaderService Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Commands <Alias> element
	[Documentation]    Validate the AtHeaderService Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Commands <EFDB_Name> element
	[Documentation]    Validate the AtHeaderService Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Events <Subsystem> element
	[Documentation]    Validate the AtHeaderService Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Events <EFDB_Topic> element
	[Documentation]    Validate the AtHeaderService Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Events <Alias> element
	[Documentation]    Validate the AtHeaderService Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Events <EFDB_Name> element
	[Documentation]    Validate the AtHeaderService Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Telemetry <Subsystem> element
	[Documentation]    Validate the AtHeaderService Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtHeaderService Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Telemetry <Alias> element
	[Documentation]    Validate the AtHeaderService Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtHeaderService Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtHeaderService Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atHeaderService/atHeaderService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Commands <Subsystem> element
	[Documentation]    Validate the AtMonochromator Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Commands <EFDB_Topic> element
	[Documentation]    Validate the AtMonochromator Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Commands <Alias> element
	[Documentation]    Validate the AtMonochromator Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Commands <EFDB_Name> element
	[Documentation]    Validate the AtMonochromator Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Events <Subsystem> element
	[Documentation]    Validate the AtMonochromator Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Events <EFDB_Topic> element
	[Documentation]    Validate the AtMonochromator Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Events <Alias> element
	[Documentation]    Validate the AtMonochromator Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Events <EFDB_Name> element
	[Documentation]    Validate the AtMonochromator Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Telemetry <Subsystem> element
	[Documentation]    Validate the AtMonochromator Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtMonochromator Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Telemetry <Alias> element
	[Documentation]    Validate the AtMonochromator Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtMonochromator Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtMonochromator Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atMonochromator/atMonochromator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Events <Subsystem> element
	[Documentation]    Validate the AtScheduler Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Events <EFDB_Topic> element
	[Documentation]    Validate the AtScheduler Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Events <Alias> element
	[Documentation]    Validate the AtScheduler Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Events <EFDB_Name> element
	[Documentation]    Validate the AtScheduler Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Telemetry <Subsystem> element
	[Documentation]    Validate the AtScheduler Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtScheduler Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Telemetry <Alias> element
	[Documentation]    Validate the AtScheduler Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtScheduler Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtScheduler Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atScheduler/atScheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Commands <Subsystem> element
	[Documentation]    Validate the AtCamera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Commands <EFDB_Topic> element
	[Documentation]    Validate the AtCamera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Commands <Alias> element
	[Documentation]    Validate the AtCamera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Commands <EFDB_Name> element
	[Documentation]    Validate the AtCamera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Events <Subsystem> element
	[Documentation]    Validate the AtCamera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Events <EFDB_Topic> element
	[Documentation]    Validate the AtCamera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Events <Alias> element
	[Documentation]    Validate the AtCamera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Events <EFDB_Name> element
	[Documentation]    Validate the AtCamera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Telemetry <Subsystem> element
	[Documentation]    Validate the AtCamera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the AtCamera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Telemetry <Alias> element
	[Documentation]    Validate the AtCamera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate AtCamera Telemetry <EFDB_Name> element
	[Documentation]    Validate the AtCamera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcamera/atcamera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Commands <Subsystem> element
	[Documentation]    Validate the ATCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Commands <EFDB_Topic> element
	[Documentation]    Validate the ATCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Commands <Alias> element
	[Documentation]    Validate the ATCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Commands <EFDB_Name> element
	[Documentation]    Validate the ATCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Events <Subsystem> element
	[Documentation]    Validate the ATCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Events <EFDB_Topic> element
	[Documentation]    Validate the ATCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Events <Alias> element
	[Documentation]    Validate the ATCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Events <EFDB_Name> element
	[Documentation]    Validate the ATCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Telemetry <Subsystem> element
	[Documentation]    Validate the ATCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the ATCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Telemetry <Alias> element
	[Documentation]    Validate the ATCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate ATCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the ATCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/atcs/atcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Commands <Subsystem> element
	[Documentation]    Validate the Calibrationelectrometer Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Commands <EFDB_Topic> element
	[Documentation]    Validate the Calibrationelectrometer Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Commands <Alias> element
	[Documentation]    Validate the Calibrationelectrometer Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Commands <EFDB_Name> element
	[Documentation]    Validate the Calibrationelectrometer Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Events <Subsystem> element
	[Documentation]    Validate the Calibrationelectrometer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Events <EFDB_Topic> element
	[Documentation]    Validate the Calibrationelectrometer Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Events <Alias> element
	[Documentation]    Validate the Calibrationelectrometer Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Events <EFDB_Name> element
	[Documentation]    Validate the Calibrationelectrometer Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Telemetry <Subsystem> element
	[Documentation]    Validate the Calibrationelectrometer Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Calibrationelectrometer Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Telemetry <Alias> element
	[Documentation]    Validate the Calibrationelectrometer Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Calibrationelectrometer Telemetry <EFDB_Name> element
	[Documentation]    Validate the Calibrationelectrometer Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/calibrationElectrometer/calibrationElectrometer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Commands <Subsystem> element
	[Documentation]    Validate the Camera Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Commands <EFDB_Topic> element
	[Documentation]    Validate the Camera Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Commands <Alias> element
	[Documentation]    Validate the Camera Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Commands <EFDB_Name> element
	[Documentation]    Validate the Camera Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Events <Subsystem> element
	[Documentation]    Validate the Camera Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Events <EFDB_Topic> element
	[Documentation]    Validate the Camera Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Events <Alias> element
	[Documentation]    Validate the Camera Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Events <EFDB_Name> element
	[Documentation]    Validate the Camera Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <Subsystem> element
	[Documentation]    Validate the Camera Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Camera Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <Alias> element
	[Documentation]    Validate the Camera Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Camera Telemetry <EFDB_Name> element
	[Documentation]    Validate the Camera Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/camera/camera_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Commands <Subsystem> element
	[Documentation]    Validate the CatchupArchiver Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Commands <EFDB_Topic> element
	[Documentation]    Validate the CatchupArchiver Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Commands <Alias> element
	[Documentation]    Validate the CatchupArchiver Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Commands <EFDB_Name> element
	[Documentation]    Validate the CatchupArchiver Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <Subsystem> element
	[Documentation]    Validate the CatchupArchiver Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <EFDB_Topic> element
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <Alias> element
	[Documentation]    Validate the CatchupArchiver Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Events <EFDB_Name> element
	[Documentation]    Validate the CatchupArchiver Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <Subsystem> element
	[Documentation]    Validate the CatchupArchiver Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <EFDB_Topic> element
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <Alias> element
	[Documentation]    Validate the CatchupArchiver Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate CatchupArchiver Telemetry <EFDB_Name> element
	[Documentation]    Validate the CatchupArchiver Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/catchuparchiver/catchuparchiver_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <Subsystem> element
	[Documentation]    Validate the Dome Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <EFDB_Topic> element
	[Documentation]    Validate the Dome Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <Alias> element
	[Documentation]    Validate the Dome Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Commands <EFDB_Name> element
	[Documentation]    Validate the Dome Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <Subsystem> element
	[Documentation]    Validate the Dome Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <EFDB_Topic> element
	[Documentation]    Validate the Dome Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <Alias> element
	[Documentation]    Validate the Dome Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Events <EFDB_Name> element
	[Documentation]    Validate the Dome Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Subsystem> element
	[Documentation]    Validate the Dome Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <Alias> element
	[Documentation]    Validate the Dome Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Dome Telemetry <EFDB_Name> element
	[Documentation]    Validate the Dome Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/dome/dome_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <Subsystem> element
	[Documentation]    Validate the DomeADB Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <Alias> element
	[Documentation]    Validate the DomeADB Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Commands <EFDB_Name> element
	[Documentation]    Validate the DomeADB Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <Subsystem> element
	[Documentation]    Validate the DomeADB Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <Alias> element
	[Documentation]    Validate the DomeADB Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Events <EFDB_Name> element
	[Documentation]    Validate the DomeADB Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Subsystem> element
	[Documentation]    Validate the DomeADB Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <Alias> element
	[Documentation]    Validate the DomeADB Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeADB Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeADB Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeADB/domeADB_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <Subsystem> element
	[Documentation]    Validate the DomeAPS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <Alias> element
	[Documentation]    Validate the DomeAPS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <Subsystem> element
	[Documentation]    Validate the DomeAPS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <Alias> element
	[Documentation]    Validate the DomeAPS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Events <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeAPS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <Alias> element
	[Documentation]    Validate the DomeAPS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeAPS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeAPS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeAPS/domeAPS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <Subsystem> element
	[Documentation]    Validate the DomeLouvers Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <Alias> element
	[Documentation]    Validate the DomeLouvers Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Commands <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <Subsystem> element
	[Documentation]    Validate the DomeLouvers Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <Alias> element
	[Documentation]    Validate the DomeLouvers Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Events <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLouvers Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <Alias> element
	[Documentation]    Validate the DomeLouvers Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLouvers Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLouvers Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLouvers/domeLouvers_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <Subsystem> element
	[Documentation]    Validate the DomeLWS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <Alias> element
	[Documentation]    Validate the DomeLWS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <Subsystem> element
	[Documentation]    Validate the DomeLWS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <Alias> element
	[Documentation]    Validate the DomeLWS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Events <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeLWS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <Alias> element
	[Documentation]    Validate the DomeLWS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeLWS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeLWS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeLWS/domeLWS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <Subsystem> element
	[Documentation]    Validate the DomeMONCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <Alias> element
	[Documentation]    Validate the DomeMONCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <Subsystem> element
	[Documentation]    Validate the DomeMONCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <Alias> element
	[Documentation]    Validate the DomeMONCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Events <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeMONCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <Alias> element
	[Documentation]    Validate the DomeMONCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeMONCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeMONCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeMONCS/domeMONCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <Subsystem> element
	[Documentation]    Validate the DomeTHCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <Alias> element
	[Documentation]    Validate the DomeTHCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Commands <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <Subsystem> element
	[Documentation]    Validate the DomeTHCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <Alias> element
	[Documentation]    Validate the DomeTHCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Events <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Subsystem> element
	[Documentation]    Validate the DomeTHCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <Alias> element
	[Documentation]    Validate the DomeTHCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate DomeTHCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the DomeTHCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/domeTHCS/domeTHCS_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <Subsystem> element
	[Documentation]    Validate the EEC Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <EFDB_Topic> element
	[Documentation]    Validate the EEC Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <Alias> element
	[Documentation]    Validate the EEC Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Commands <EFDB_Name> element
	[Documentation]    Validate the EEC Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <Subsystem> element
	[Documentation]    Validate the EEC Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <EFDB_Topic> element
	[Documentation]    Validate the EEC Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <Alias> element
	[Documentation]    Validate the EEC Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Events <EFDB_Name> element
	[Documentation]    Validate the EEC Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <Subsystem> element
	[Documentation]    Validate the EEC Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EEC Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <Alias> element
	[Documentation]    Validate the EEC Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EEC Telemetry <EFDB_Name> element
	[Documentation]    Validate the EEC Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/eec/eec_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Subsystem> element
	[Documentation]    Validate the EFD Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Topic> element
	[Documentation]    Validate the EFD Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <Alias> element
	[Documentation]    Validate the EFD Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Events <EFDB_Name> element
	[Documentation]    Validate the EFD Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Subsystem> element
	[Documentation]    Validate the EFD Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Topic> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <Alias> element
	[Documentation]    Validate the EFD Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate EFD Telemetry <EFDB_Name> element
	[Documentation]    Validate the EFD Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/efd/efd_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Commands <Subsystem> element
	[Documentation]    Validate the HeaderService Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Commands <EFDB_Topic> element
	[Documentation]    Validate the HeaderService Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Commands <Alias> element
	[Documentation]    Validate the HeaderService Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Commands <EFDB_Name> element
	[Documentation]    Validate the HeaderService Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Events <Subsystem> element
	[Documentation]    Validate the HeaderService Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Events <EFDB_Topic> element
	[Documentation]    Validate the HeaderService Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Events <Alias> element
	[Documentation]    Validate the HeaderService Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Events <EFDB_Name> element
	[Documentation]    Validate the HeaderService Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Telemetry <Subsystem> element
	[Documentation]    Validate the HeaderService Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/headerService/headerService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Telemetry <EFDB_Topic> element
	[Documentation]    Validate the HeaderService Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/headerService/headerService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Telemetry <Alias> element
	[Documentation]    Validate the HeaderService Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/headerService/headerService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate HeaderService Telemetry <EFDB_Name> element
	[Documentation]    Validate the HeaderService Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/headerService/headerService_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <Subsystem> element
	[Documentation]    Validate the Hexapod Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <Alias> element
	[Documentation]    Validate the Hexapod Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Commands <EFDB_Name> element
	[Documentation]    Validate the Hexapod Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <Subsystem> element
	[Documentation]    Validate the Hexapod Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <Alias> element
	[Documentation]    Validate the Hexapod Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Events <EFDB_Name> element
	[Documentation]    Validate the Hexapod Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Subsystem> element
	[Documentation]    Validate the Hexapod Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <Alias> element
	[Documentation]    Validate the Hexapod Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Hexapod Telemetry <EFDB_Name> element
	[Documentation]    Validate the Hexapod Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/hexapod/hexapod_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Commands <Subsystem> element
	[Documentation]    Validate the M1M3 Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Commands <EFDB_Topic> element
	[Documentation]    Validate the M1M3 Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Commands <Alias> element
	[Documentation]    Validate the M1M3 Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Commands <EFDB_Name> element
	[Documentation]    Validate the M1M3 Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Events <Subsystem> element
	[Documentation]    Validate the M1M3 Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Events <EFDB_Topic> element
	[Documentation]    Validate the M1M3 Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Events <Alias> element
	[Documentation]    Validate the M1M3 Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Events <EFDB_Name> element
	[Documentation]    Validate the M1M3 Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <Subsystem> element
	[Documentation]    Validate the M1M3 Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <EFDB_Topic> element
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <Alias> element
	[Documentation]    Validate the M1M3 Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M1M3 Telemetry <EFDB_Name> element
	[Documentation]    Validate the M1M3 Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m1m3/m1m3_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <Subsystem> element
	[Documentation]    Validate the M2MS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <EFDB_Topic> element
	[Documentation]    Validate the M2MS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <Alias> element
	[Documentation]    Validate the M2MS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Commands <EFDB_Name> element
	[Documentation]    Validate the M2MS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <Subsystem> element
	[Documentation]    Validate the M2MS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <EFDB_Topic> element
	[Documentation]    Validate the M2MS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <Alias> element
	[Documentation]    Validate the M2MS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Events <EFDB_Name> element
	[Documentation]    Validate the M2MS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Subsystem> element
	[Documentation]    Validate the M2MS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <Alias> element
	[Documentation]    Validate the M2MS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate M2MS Telemetry <EFDB_Name> element
	[Documentation]    Validate the M2MS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/m2ms/m2ms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <Subsystem> element
	[Documentation]    Validate the MTMount Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <EFDB_Topic> element
	[Documentation]    Validate the MTMount Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <Alias> element
	[Documentation]    Validate the MTMount Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Commands <EFDB_Name> element
	[Documentation]    Validate the MTMount Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <Subsystem> element
	[Documentation]    Validate the MTMount Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <EFDB_Topic> element
	[Documentation]    Validate the MTMount Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <Alias> element
	[Documentation]    Validate the MTMount Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Events <EFDB_Name> element
	[Documentation]    Validate the MTMount Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Subsystem> element
	[Documentation]    Validate the MTMount Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Topic> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <Alias> element
	[Documentation]    Validate the MTMount Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate MTMount Telemetry <EFDB_Name> element
	[Documentation]    Validate the MTMount Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/MTMount/MTMount_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <Subsystem> element
	[Documentation]    Validate the OCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <EFDB_Topic> element
	[Documentation]    Validate the OCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <Alias> element
	[Documentation]    Validate the OCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Commands <EFDB_Name> element
	[Documentation]    Validate the OCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <Subsystem> element
	[Documentation]    Validate the OCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <EFDB_Topic> element
	[Documentation]    Validate the OCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <Alias> element
	[Documentation]    Validate the OCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Events <EFDB_Name> element
	[Documentation]    Validate the OCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Subsystem> element
	[Documentation]    Validate the OCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <Alias> element
	[Documentation]    Validate the OCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate OCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the OCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/ocs/ocs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <Subsystem> element
	[Documentation]    Validate the PromptProcessing Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <Alias> element
	[Documentation]    Validate the PromptProcessing Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Commands <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <Subsystem> element
	[Documentation]    Validate the PromptProcessing Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <Alias> element
	[Documentation]    Validate the PromptProcessing Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Events <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <Subsystem> element
	[Documentation]    Validate the PromptProcessing Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <EFDB_Topic> element
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <Alias> element
	[Documentation]    Validate the PromptProcessing Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate PromptProcessing Telemetry <EFDB_Name> element
	[Documentation]    Validate the PromptProcessing Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/promptprocessing/promptprocessing_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <Subsystem> element
	[Documentation]    Validate the Rotator Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <EFDB_Topic> element
	[Documentation]    Validate the Rotator Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <Alias> element
	[Documentation]    Validate the Rotator Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Commands <EFDB_Name> element
	[Documentation]    Validate the Rotator Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <Subsystem> element
	[Documentation]    Validate the Rotator Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <EFDB_Topic> element
	[Documentation]    Validate the Rotator Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <Alias> element
	[Documentation]    Validate the Rotator Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Events <EFDB_Name> element
	[Documentation]    Validate the Rotator Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Subsystem> element
	[Documentation]    Validate the Rotator Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <Alias> element
	[Documentation]    Validate the Rotator Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Rotator Telemetry <EFDB_Name> element
	[Documentation]    Validate the Rotator Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/rotator/rotator_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Subsystem> element
	[Documentation]    Validate the Scheduler Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <Alias> element
	[Documentation]    Validate the Scheduler Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Scheduler Telemetry <EFDB_Name> element
	[Documentation]    Validate the Scheduler Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/scheduler/scheduler_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <Subsystem> element
	[Documentation]    Validate the Sequencer Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <Alias> element
	[Documentation]    Validate the Sequencer Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Commands <EFDB_Name> element
	[Documentation]    Validate the Sequencer Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <Subsystem> element
	[Documentation]    Validate the Sequencer Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <Alias> element
	[Documentation]    Validate the Sequencer Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Events <EFDB_Name> element
	[Documentation]    Validate the Sequencer Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Subsystem> element
	[Documentation]    Validate the Sequencer Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Topic> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <Alias> element
	[Documentation]    Validate the Sequencer Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate Sequencer Telemetry <EFDB_Name> element
	[Documentation]    Validate the Sequencer Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/sequencer/sequencer_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <Subsystem> element
	[Documentation]    Validate the SummitFacility Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <Alias> element
	[Documentation]    Validate the SummitFacility Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Commands <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <Subsystem> element
	[Documentation]    Validate the SummitFacility Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <Alias> element
	[Documentation]    Validate the SummitFacility Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Events <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <Subsystem> element
	[Documentation]    Validate the SummitFacility Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <EFDB_Topic> element
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <Alias> element
	[Documentation]    Validate the SummitFacility Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate SummitFacility Telemetry <EFDB_Name> element
	[Documentation]    Validate the SummitFacility Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/summitFacility/summitFacility_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Commands <Subsystem> element
	[Documentation]    Validate the TCS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Commands <EFDB_Topic> element
	[Documentation]    Validate the TCS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Commands <Alias> element
	[Documentation]    Validate the TCS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Commands <EFDB_Name> element
	[Documentation]    Validate the TCS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Events <Subsystem> element
	[Documentation]    Validate the TCS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Events <EFDB_Topic> element
	[Documentation]    Validate the TCS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Events <Alias> element
	[Documentation]    Validate the TCS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Events <EFDB_Name> element
	[Documentation]    Validate the TCS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <Subsystem> element
	[Documentation]    Validate the TCS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the TCS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <Alias> element
	[Documentation]    Validate the TCS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TCS Telemetry <EFDB_Name> element
	[Documentation]    Validate the TCS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcs/tcs_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Commands <Subsystem> element
	[Documentation]    Validate the TcsOfc Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Commands <EFDB_Topic> element
	[Documentation]    Validate the TcsOfc Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Commands <Alias> element
	[Documentation]    Validate the TcsOfc Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Commands <EFDB_Name> element
	[Documentation]    Validate the TcsOfc Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Events <Subsystem> element
	[Documentation]    Validate the TcsOfc Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Events <EFDB_Topic> element
	[Documentation]    Validate the TcsOfc Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Events <Alias> element
	[Documentation]    Validate the TcsOfc Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Events <EFDB_Name> element
	[Documentation]    Validate the TcsOfc Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Telemetry <Subsystem> element
	[Documentation]    Validate the TcsOfc Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Telemetry <EFDB_Topic> element
	[Documentation]    Validate the TcsOfc Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Telemetry <Alias> element
	[Documentation]    Validate the TcsOfc Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsOfc Telemetry <EFDB_Name> element
	[Documentation]    Validate the TcsOfc Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsOfc/tcsOfc_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Commands <Subsystem> element
	[Documentation]    Validate the TcsWEP Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Commands <EFDB_Topic> element
	[Documentation]    Validate the TcsWEP Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Commands <Alias> element
	[Documentation]    Validate the TcsWEP Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Commands <EFDB_Name> element
	[Documentation]    Validate the TcsWEP Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Events <Subsystem> element
	[Documentation]    Validate the TcsWEP Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Events <EFDB_Topic> element
	[Documentation]    Validate the TcsWEP Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Events <Alias> element
	[Documentation]    Validate the TcsWEP Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Events <EFDB_Name> element
	[Documentation]    Validate the TcsWEP Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Telemetry <Subsystem> element
	[Documentation]    Validate the TcsWEP Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Telemetry <EFDB_Topic> element
	[Documentation]    Validate the TcsWEP Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Telemetry <Alias> element
	[Documentation]    Validate the TcsWEP Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate TcsWEP Telemetry <EFDB_Name> element
	[Documentation]    Validate the TcsWEP Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/tcsWEP/tcsWEP_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Commands <Subsystem> element
	[Documentation]    Validate the VMS Commands <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Subsystem" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Commands <EFDB_Topic> element
	[Documentation]    Validate the VMS Commands <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Commands <Alias> element
	[Documentation]    Validate the VMS Commands <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Commands <EFDB_Name> element
	[Documentation]    Validate the VMS Commands <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALCommandSet/SALCommand/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Commands.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Events <Subsystem> element
	[Documentation]    Validate the VMS Events <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Subsystem" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Events <EFDB_Topic> element
	[Documentation]    Validate the VMS Events <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Events <Alias> element
	[Documentation]    Validate the VMS Events <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Events <EFDB_Name> element
	[Documentation]    Validate the VMS Events <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALEventSet/SALEvent/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Events.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Telemetry <Subsystem> element
	[Documentation]    Validate the VMS Telemetry <Subsystem> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Subsystem" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Telemetry <EFDB_Topic> element
	[Documentation]    Validate the VMS Telemetry <EFDB_Topic> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/EFDB_Topic" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Telemetry <Alias> element
	[Documentation]    Validate the VMS Telemetry <Alias> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/Alias" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

Validate VMS Telemetry <EFDB_Name> element
	[Documentation]    Validate the VMS Telemetry <EFDB_Name> elements do not contain embedded spaces.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALTelemetrySet/SALTelemetry/item/EFDB_Name" -v . -n ${folder}/sal_interfaces/vms/vms_Telemetry.xml |awk '{$1=$1};1' |tr '\n' '|'
	Log    ${output}
	Should Not Contain    ${output}    ${SPACE}

