*** Settings ***
Documentation    Validate the SAL cscs XML dictionary file.
Test Setup    Run Keyword If    "${ContInt}"=="true"    Set Suite Variable    ${xml}    xmlstarlet
Library    OperatingSystem
Library    Collections
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml
@{cscs}    ATSpectrograph    LinearStage    MTMount    MTArchiver    ATArchiver    ATAOS    ATBuilding    DIMM    ATDome    ATDomeTrajectory    ATMCS    ATPneumatics    ATHeaderService    ATHexapod    ATMonochromator    ATWhiteLight    ATCamera    ATPointingComponent    ATThermoelectricCooler    ATTCS    AOCLC    IOTA    MTGuider    MTCalCS    ATCalCS    EFDTransformationServer    Electrometer    EAS    EEC    LOVE    MTLaserTracker    MTCamera    CatchupArchiver    CBP    DomeADB    DomeAPS    DomeLWS    DomeLouvers    DomeMONCS    DomeTHCS    Dome    EFD    Environment    MTHeaderService    Hexapod    TunableLaser    MTM1M3    MTM2    MTVMS    OCS    PromptProcessing    Rotator    Scheduler    Script    ScriptQueue    FiberSpectrograph    Sequencer    SummitFacility    MTOFC    MTWEP    MTTCS    MTDomeTrajectory    Test

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
	Should Be Equal As Integers    ${output}    63

Validate SAL Dictionary Does Not Contain Duplicates
	[Documentation]    Validate the SALSubsystems.xml file does not have any duplicate entries.
	[Tags]    smoke
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml |uniq -d
	Log    ${output}
	Should Be Empty    ${output}

Validate AOCLC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    AOCLC
	Comment    Define CSC.
	Set Test Variable    ${csc}    AOCLC
	Should Contain    ${cscs}    ${csc}

Validate AOCLC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    AOCLC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='AOCLC']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    AOCLC has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate ATCalCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATCalCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCalCS
	Should Contain    ${cscs}    ${csc}

Validate ATCalCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATCalCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATCalCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATCalCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate ATMCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATMCS    TSS-3089
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATMCS
	Should Contain    ${cscs}    ${csc}

Validate ATMCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATMCS    TSS-3089
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATMCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATMCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate ATPointingComponent Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATPointingComponent
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPointingComponent
	Should Contain    ${cscs}    ${csc}

Validate ATPointingComponent Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATPointingComponent
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATPointingComponent']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATPointingComponent has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate ATTCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATTCS    TSS-2978
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATTCS
	Should Contain    ${cscs}    ${csc}

Validate ATTCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATTCS    TSS-2978
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATTCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATTCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATThermoelectricCooler Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATThermoelectricCooler
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATThermoelectricCooler
	Should Contain    ${cscs}    ${csc}

Validate ATThermoelectricCooler Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATThermoelectricCooler
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='ATThermoelectricCooler']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    ATThermoelectricCooler has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate Dome Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Dome    TSS-1778
	Comment    Define CSC.
	Set Test Variable    ${csc}    Dome
	Should Contain    ${cscs}    ${csc}

Validate Dome Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Dome    TSS-1778
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Dome']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Dome has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeADB Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeADB
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeADB
	Should Contain    ${cscs}    ${csc}

Validate DomeADB Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeADB
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeADB']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeADB has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeAPS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeAPS
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeAPS
	Should Contain    ${cscs}    ${csc}

Validate DomeAPS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeAPS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeAPS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeAPS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeLouvers Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeLouvers
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLouvers
	Should Contain    ${cscs}    ${csc}

Validate DomeLouvers Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeLouvers
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeLouvers']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeLouvers has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeLWS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeLWS
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeLWS
	Should Contain    ${cscs}    ${csc}

Validate DomeLWS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeLWS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeLWS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeLWS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeMONCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeMONCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeMONCS
	Should Contain    ${cscs}    ${csc}

Validate DomeMONCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeMONCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeMONCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeMONCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate DomeTHCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    DomeTHCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    DomeTHCS
	Should Contain    ${cscs}    ${csc}

Validate DomeTHCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    DomeTHCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='DomeTHCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    DomeTHCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate EEC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    EEC
	Comment    Define CSC.
	Set Test Variable    ${csc}    EEC
	Should Contain    ${cscs}    ${csc}

Validate EEC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    EEC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='EEC']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    EEC has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate MTCalCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTCalCS
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCalCS
	Should Contain    ${cscs}    ${csc}

Validate MTCalCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTCalCS
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTCalCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTCalCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate MTOFC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTOFC
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTOFC
	Should Contain    ${cscs}    ${csc}

Validate MTOFC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTOFC
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTOFC']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTOFC has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTTCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTTCS    TSS-1795
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTTCS
	Should Contain    ${cscs}    ${csc}

Validate MTTCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTTCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTTCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTTCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTWEP Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTWEP
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTWEP
	Should Contain    ${cscs}    ${csc}

Validate MTWEP Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTWEP
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='MTWEP']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    MTWEP has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate OCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    OCS    TSS-1792
	Comment    Define CSC.
	Set Test Variable    ${csc}    OCS
	Should Contain    ${cscs}    ${csc}

Validate OCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    OCS    TSS-1792
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='OCS']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    OCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

Validate Sequencer Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Sequencer    TSS-1793
	Comment    Define CSC.
	Set Test Variable    ${csc}    Sequencer
	Should Contain    ${cscs}    ${csc}

Validate Sequencer Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Sequencer    TSS-1793
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name[text()='Sequencer']/../Generics" -v . -n ${folder}/sal_interfaces/SALSubsystems.xml
	Log    Sequencer has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

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

