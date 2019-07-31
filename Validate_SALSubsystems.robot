*** Settings ***
Documentation    Validate the SAL cscs XML dictionary file.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    Collections
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml
@{cscs}    ATAOS    ATArchiver    ATBuilding    ATCamera    ATDome    ATDomeTrajectory    ATHeaderService    ATHexapod    ATMCS    ATMonochromator    ATPneumatics    ATPtg    ATSpectrograph    ATTCS    ATWhiteLight    CBP    CatchupArchiver    DIMM    DSM    Dome    EAS    EFD    EFDTransformationServer    Electrometer    Environment    FiberSpectrograph    GenericCamera    HVAC    Hexapod    IOTA    LOVE    LinearStage    MTAOS    MTArchiver    MTCamera    MTDomeTrajectory    MTEEC    MTGuider    MTHeaderService    MTLaserTracker    MTM1M3    MTM1M3TS    MTM2    MTMount    MTPtg    MTTCS    MTVMS    OCS    PointingComponent    PromptProcessing    Rotator    Scheduler    Script    ScriptQueue    SummitFacility    Test    TunableLaser    Watcher

*** Test Cases ***
Validate SALSubsystems.xml
	[Documentation]    Validate the SALSubsystems.xml dictionary file.
	[Tags]    smoke
	${output}=    Run    ${xml} val -e ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}   SALSubsystems.xml - valid

Validate Number of Defined CSCs
	[Documentation]    Validate the number of defined CSCs matches expectation. This test will catch when a CSC is added or removed.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml |sort |wc -l |sed -e 's/ //g'
	Log    ${output}
	Should Be Equal As Integers    ${output}    58

Validate SAL Dictionary Does Not Contain Duplicates
	[Documentation]    Validate the SALSubsystems.xml file does not have any duplicate entries.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml |uniq -d
	Log    ${output}
	Should Be Empty    ${output}

Validate ATAOS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATAOS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATAOS
	Should Contain    ${cscs}    ${csc}

Validate ATAOS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATAOS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATAOS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATAOS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATAOS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATAOS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATArchiver Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATArchiver
	Should Contain    ${cscs}    ${csc}

Validate ATArchiver Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATArchiver']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATArchiver has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATArchiver Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATArchiver']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATBuilding Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATBuilding
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATBuilding
	Should Contain    ${cscs}    ${csc}

Validate ATBuilding Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATBuilding']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATBuilding has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATBuilding Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATBuilding
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATBuilding']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATCamera Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCamera
	Should Contain    ${cscs}    ${csc}

Validate ATCamera Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATCamera']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATCamera has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATCamera Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATCamera']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATDome Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATDome
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATDome
	Should Contain    ${cscs}    ${csc}

Validate ATDome Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATDome']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATDome has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATDome Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATDome
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATDome']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATDomeTrajectory Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATDomeTrajectory
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATDomeTrajectory
	Should Contain    ${cscs}    ${csc}

Validate ATDomeTrajectory Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATDomeTrajectory']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATDomeTrajectory has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATDomeTrajectory Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATDomeTrajectory']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATHeaderService Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATHeaderService
	Should Contain    ${cscs}    ${csc}

Validate ATHeaderService Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATHeaderService']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATHeaderService has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATHeaderService Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATHeaderService']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATHexapod Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATHexapod
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATHexapod
	Should Contain    ${cscs}    ${csc}

Validate ATHexapod Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATHexapod']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATHexapod has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATHexapod Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATHexapod
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATHexapod']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATMCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATMCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMCS
	Should Contain    ${cscs}    ${csc}

Validate ATMCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATMCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATMCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATMCS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATMCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATMCS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATMonochromator Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATMonochromator
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMonochromator
	Should Contain    ${cscs}    ${csc}

Validate ATMonochromator Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATMonochromator']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATMonochromator has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATMonochromator Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATMonochromator
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATMonochromator']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATPneumatics Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATPneumatics
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPneumatics
	Should Contain    ${cscs}    ${csc}

Validate ATPneumatics Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATPneumatics']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATPneumatics has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATPneumatics Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATPneumatics
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATPneumatics']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATPtg Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATPtg
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPtg
	Should Contain    ${cscs}    ${csc}

Validate ATPtg Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATPtg']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATPtg has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATPtg Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATPtg
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATPtg']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATSpectrograph Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATSpectrograph
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Should Contain    ${cscs}    ${csc}

Validate ATSpectrograph Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATSpectrograph']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATSpectrograph has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATSpectrograph Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATSpectrograph']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATTCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATTCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATTCS
	Should Contain    ${cscs}    ${csc}

Validate ATTCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATTCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATTCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATTCS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATTCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATTCS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ATWhiteLight Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATWhiteLight
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATWhiteLight
	Should Contain    ${cscs}    ${csc}

Validate ATWhiteLight Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATWhiteLight']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATWhiteLight has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATWhiteLight Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ATWhiteLight
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATWhiteLight']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate CatchupArchiver Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    CatchupArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    CatchupArchiver
	Should Contain    ${cscs}    ${csc}

Validate CatchupArchiver Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='CatchupArchiver']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    CatchupArchiver has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate CatchupArchiver Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    CatchupArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='CatchupArchiver']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate CBP Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    CBP
	Comment    Define CSC.
	Set Test Variable    ${csc}    CBP
	Should Contain    ${cscs}    ${csc}

Validate CBP Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='CBP']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    CBP has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate CBP Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    CBP
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='CBP']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate DIMM Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DIMM
	Comment    Define CSC.
	Set Test Variable    ${csc}    DIMM
	Should Contain    ${cscs}    ${csc}

Validate DIMM Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DIMM']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DIMM has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DIMM Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    DIMM
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DIMM']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Dome Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Dome
	Comment    Define CSC.
	Set Test Variable    ${csc}    Dome
	Should Contain    ${cscs}    ${csc}

Validate Dome Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Dome']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Dome has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Dome Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Dome
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Dome']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate DSM Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DSM
	Comment    Define CSC.
	Set Test Variable    ${csc}    DSM
	Should Contain    ${cscs}    ${csc}

Validate DSM Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DSM']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DSM has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DSM Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    DSM
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DSM']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate EAS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    EAS
	Comment    Define CSC.
	Set Test Variable    ${csc}    EAS
	Should Contain    ${cscs}    ${csc}

Validate EAS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EAS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    EAS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate EAS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    EAS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EAS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate EFD Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    EFD
	Comment    Define CSC.
	Set Test Variable    ${csc}    EFD
	Should Contain    ${cscs}    ${csc}

Validate EFD Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EFD']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    EFD has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate EFD Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    EFD
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EFD']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate EFDTransformationServer Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    EFDTransformationServer
	Comment    Define CSC.
	Set Test Variable    ${csc}    EFDTransformationServer
	Should Contain    ${cscs}    ${csc}

Validate EFDTransformationServer Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EFDTransformationServer']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    EFDTransformationServer has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate EFDTransformationServer Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    EFDTransformationServer
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EFDTransformationServer']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Electrometer Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Electrometer
	Comment    Define CSC.
	Set Test Variable    ${csc}    Electrometer
	Should Contain    ${cscs}    ${csc}

Validate Electrometer Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Electrometer']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Electrometer has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Electrometer Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Electrometer
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Electrometer']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Environment Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Environment
	Comment    Define CSC.
	Set Test Variable    ${csc}    Environment
	Should Contain    ${cscs}    ${csc}

Validate Environment Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Environment']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Environment has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Environment Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Environment']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate FiberSpectrograph Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    FiberSpectrograph
	Comment    Define CSC.
	Set Test Variable    ${csc}    FiberSpectrograph
	Should Contain    ${cscs}    ${csc}

Validate FiberSpectrograph Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='FiberSpectrograph']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    FiberSpectrograph has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate FiberSpectrograph Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    FiberSpectrograph
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='FiberSpectrograph']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate GenericCamera Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    GenericCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    GenericCamera
	Should Contain    ${cscs}    ${csc}

Validate GenericCamera Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='GenericCamera']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    GenericCamera has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate GenericCamera Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    GenericCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='GenericCamera']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate IOTA Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    IOTA
	Comment    Define CSC.
	Set Test Variable    ${csc}    IOTA
	Should Contain    ${cscs}    ${csc}

Validate IOTA Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='IOTA']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    IOTA has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate IOTA Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    IOTA
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='IOTA']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Hexapod Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Hexapod
	Comment    Define CSC.
	Set Test Variable    ${csc}    Hexapod
	Should Contain    ${cscs}    ${csc}

Validate Hexapod Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Hexapod']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Hexapod has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Hexapod Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Hexapod
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Hexapod']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate HVAC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    HVAC
	Comment    Define CSC.
	Set Test Variable    ${csc}    HVAC
	Should Contain    ${cscs}    ${csc}

Validate HVAC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='HVAC']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    HVAC has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate HVAC Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    HVAC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='HVAC']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate LinearStage Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    LinearStage
	Comment    Define CSC.
	Set Test Variable    ${csc}    LinearStage
	Should Contain    ${cscs}    ${csc}

Validate LinearStage Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='LinearStage']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    LinearStage has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate LinearStage Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    LinearStage
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='LinearStage']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate LOVE Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    LOVE
	Comment    Define CSC.
	Set Test Variable    ${csc}    LOVE
	Should Contain    ${cscs}    ${csc}

Validate LOVE Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    LOVE
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='LOVE']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    LOVE has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate LOVE Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    LOVE
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='LOVE']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTAOS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTAOS
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTAOS
	Should Contain    ${cscs}    ${csc}

Validate MTAOS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTAOS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTAOS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTAOS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTAOS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTAOS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTArchiver Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTArchiver
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTArchiver
	Should Contain    ${cscs}    ${csc}

Validate MTArchiver Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTArchiver']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTArchiver has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTArchiver Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTArchiver
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTArchiver']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTCamera Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTCamera
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCamera
	Should Contain    ${cscs}    ${csc}

Validate MTCamera Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTCamera']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTCamera has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTCamera Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTCamera
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTCamera']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTDomeTrajectory Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTDomeTrajectory
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTDomeTrajectory
	Should Contain    ${cscs}    ${csc}

Validate MTDomeTrajectory Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTDomeTrajectory']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTDomeTrajectory has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTDomeTrajectory Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTDomeTrajectory
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTDomeTrajectory']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTEEC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTEEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTEEC
	Should Contain    ${cscs}    ${csc}

Validate MTEEC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTEEC']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTEEC has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTEEC Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTEEC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTEEC']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTGuider Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTGuider
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTGuider
	Should Contain    ${cscs}    ${csc}

Validate MTGuider Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTGuider']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTGuider has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTGuider Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTGuider
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTGuider']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTHeaderService Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTHeaderService
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTHeaderService
	Should Contain    ${cscs}    ${csc}

Validate MTHeaderService Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTHeaderService']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTHeaderService has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTHeaderService Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTHeaderService
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTHeaderService']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTLaserTracker Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTLaserTracker
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTLaserTracker
	Should Contain    ${cscs}    ${csc}

Validate MTLaserTracker Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTLaserTracker']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTLaserTracker has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTLaserTracker Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTLaserTracker
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTLaserTracker']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTM1M3 Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTM1M3
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3
	Should Contain    ${cscs}    ${csc}

Validate MTM1M3 Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM1M3']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTM1M3 has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTM1M3 Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTM1M3
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM1M3']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTM1M3TS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTM1M3TS
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3TS
	Should Contain    ${cscs}    ${csc}

Validate MTM1M3TS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM1M3TS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTM1M3TS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTM1M3TS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTM1M3TS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM1M3TS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTM2 Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTM2
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM2
	Should Contain    ${cscs}    ${csc}

Validate MTM2 Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM2']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTM2 has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTM2 Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTM2']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTMount Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTMount
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTMount
	Should Contain    ${cscs}    ${csc}

Validate MTMount Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTMount']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTMount has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTMount Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTMount
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTMount']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTPtg Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTPtg
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTPtg
	Should Contain    ${cscs}    ${csc}

Validate MTPtg Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTPtg']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTPtg has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTPtg Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTPtg
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTPtg']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTTCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTTCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTTCS
	Should Contain    ${cscs}    ${csc}

Validate MTTCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTTCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTTCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTTCS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTTCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTTCS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate MTVMS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTVMS
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTVMS
	Should Contain    ${cscs}    ${csc}

Validate MTVMS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTVMS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTVMS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTVMS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    MTVMS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTVMS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate OCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    OCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    OCS
	Should Contain    ${cscs}    ${csc}

Validate OCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='OCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    OCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate OCS Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    OCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='OCS']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate PointingComponent Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    PointingComponent
	Comment    Define CSC.
	Set Test Variable    ${csc}    PointingComponent
	Should Contain    ${cscs}    ${csc}

Validate PointingComponent Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='PointingComponent']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    PointingComponent has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate PointingComponent Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    PointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='PointingComponent']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate PromptProcessing Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    PromptProcessing
	Comment    Define CSC.
	Set Test Variable    ${csc}    PromptProcessing
	Should Contain    ${cscs}    ${csc}

Validate PromptProcessing Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='PromptProcessing']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    PromptProcessing has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate PromptProcessing Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    PromptProcessing
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='PromptProcessing']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Rotator Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Rotator
	Comment    Define CSC.
	Set Test Variable    ${csc}    Rotator
	Should Contain    ${cscs}    ${csc}

Validate Rotator Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Rotator']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Rotator has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Rotator Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Rotator
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Rotator']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Scheduler Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Scheduler
	Comment    Define CSC.
	Set Test Variable    ${csc}    Scheduler
	Should Contain    ${cscs}    ${csc}

Validate Scheduler Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Scheduler']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Scheduler has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Scheduler Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Scheduler
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Scheduler']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Script Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Script
	Comment    Define CSC.
	Set Test Variable    ${csc}    Script
	Should Contain    ${cscs}    ${csc}

Validate Script Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Script']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Script has Generics: ${output}
	Should Be Equal As Strings    ${output}    no

Validate Script Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Script
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Script']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate ScriptQueue Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ScriptQueue
	Comment    Define CSC.
	Set Test Variable    ${csc}    ScriptQueue
	Should Contain    ${cscs}    ${csc}

Validate ScriptQueue Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ScriptQueue']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ScriptQueue has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ScriptQueue Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ScriptQueue']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate SummitFacility Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    SummitFacility
	Comment    Define CSC.
	Set Test Variable    ${csc}    SummitFacility
	Should Contain    ${cscs}    ${csc}

Validate SummitFacility Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='SummitFacility']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    SummitFacility has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate SummitFacility Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    SummitFacility
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='SummitFacility']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Test Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Test
	Comment    Define CSC.
	Set Test Variable    ${csc}    Test
	Should Contain    ${cscs}    ${csc}

Validate Test Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Test']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Test has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Test Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Test
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Test']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate TunableLaser Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    TunableLaser
	Comment    Define CSC.
	Set Test Variable    ${csc}    TunableLaser
	Should Contain    ${cscs}    ${csc}

Validate TunableLaser Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='TunableLaser']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    TunableLaser has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate TunableLaser Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    TunableLaser
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='TunableLaser']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

Validate Watcher Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Watcher
	Comment    Define CSC.
	Set Test Variable    ${csc}    Watcher
	Should Contain    ${cscs}    ${csc}

Validate Watcher Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Watcher']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Watcher has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Watcher Simulator Element
	[Documentation]    Validate the SALSubsystems.xml dictionary defines the <Simulator> element.
	[Tags]    smoke    Watcher
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Watcher']/.." -c . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ${output}
	Should Contain    ${output}    <Simulator

