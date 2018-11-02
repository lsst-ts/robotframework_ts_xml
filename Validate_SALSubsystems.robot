*** Settings ***
Documentation    Validate the SAL cscs XML dictionary file.
Library    OperatingSystem
Library    Collections
Library    String
Resource    Global_Vars.robot

*** Variables ***
${xml}    xml
@{cscs}    ATArchiver    ATCamera    AtDome    ATHeaderService    ATMCS    ATMonochromator    ATPneumatics    ATSpectrograph    ATTCS    ATWhiteLight    CatchupArchiver    CBP    Dome    DomeADB    DomeAPS    DomeLouvers    DomeLWS    DomeMONCS    DomeTHCS    EEC    EFD    Electrometer    Environment    FiberSpectrograph    Hexapod    Laser    LinearStage    MTArchiver    MTCamera    MTHeaderService    MTM1M3    M2MS    MTMount    MTOFC    MTWEP    OCS    PromptProcessing    Rotator    Scheduler    Sequencer    SummitFacility    TCS    Test    TunableLaser    VMS

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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem/Name" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml |sort |wc -l |sed -e 's/ //g'
	Log    ${output}
	Should Be Equal As Integers    ${output}    48

Validate ATSpectrograph Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATSpectrograph    TSS-3009
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Should Contain    ${cscs}    ${csc}

Validate ATSpectrograph Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATSpectrograph    TSS-3009
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[1]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATSpectrograph has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[2]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    LinearStage has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[3]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTMount has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTArchiver Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTArchiver    TSS-2979
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTArchiver
	Should Contain    ${cscs}    ${csc}

Validate MTArchiver Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTArchiver    TSS-2979
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[4]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTArchiver has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATArchiver Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATArchiver    TSS-2980
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATArchiver
	Should Contain    ${cscs}    ${csc}

Validate ATArchiver Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATArchiver    TSS-2980
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[5]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATArchiver has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Atdome Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATDome    TSS-3060
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATDome
	Should Contain    ${cscs}    ${csc}

Validate Atdome Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATDome    TSS-3060
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[6]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATDome has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[7]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATMCS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATPneumatics Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATPneumatics    TSS-3062
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATPneumatics
	Should Contain    ${cscs}    ${csc}

Validate ATPneumatics Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATPneumatics    TSS-3062
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[8]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATPneumatics has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Atdome Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATDome    TSS-3060
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATDome
	Should Contain    ${cscs}    ${csc}

Validate Atdome Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATDome    TSS-3060
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[9]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATDome has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[10]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATHeaderService has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[11]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATMonochromator has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATWhiteLight Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATWhiteLight    TSS-3063
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATWhiteLight
	Should Contain    ${cscs}    ${csc}

Validate ATWhiteLight Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATWhiteLight    TSS-3063
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[12]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATWhiteLight has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATCamera Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATCamera    TSS-2981
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATCamera
	Should Contain    ${cscs}    ${csc}

Validate ATCamera Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATCamera    TSS-2981
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[13]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATCamera has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATThermoelectricCooler Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATThermoelectricCooler    TSS-3064
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATThermoelectricCooler
	Should Contain    ${cscs}    ${csc}

Validate ATThermoelectricCooler Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATThermoelectricCooler    TSS-3064
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[14]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATThermoelectricCooler has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ATSpectrograph Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ATSpectrograph    TSS-3009
	Comment    Define CSC.
	Set Test Variable    ${csc}    ATSpectrograph
	Should Contain    ${cscs}    ${csc}

Validate ATSpectrograph Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ATSpectrograph    TSS-3009
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[15]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[16]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ATTCS has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[17]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Electrometer has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Mtcamera Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTCamera    TSS-2982
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTCamera
	Should Contain    ${cscs}    ${csc}

Validate Mtcamera Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTCamera    TSS-2982
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[18]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTCamera has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[19]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[20]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    CBP has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[21]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[22]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    DomeAPS has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[23]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    DomeLWS has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[24]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    DomeLouvers has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[25]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[26]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    DomeTHCS has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[27]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Dome has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate EEC Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    EEC    TSS-2983
	Comment    Define CSC.
	Set Test Variable    ${csc}    EEC
	Should Contain    ${cscs}    ${csc}

Validate EEC Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    EEC    TSS-2983
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[28]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[29]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    EFD has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Environment Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    Environment
	Comment    Define CSC.
	Set Test Variable    ${csc}    Environment
	Should Contain    ${cscs}    ${csc}

Validate Environment Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    Environment
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[30]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Environment has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[31]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTHeaderService has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[32]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Hexapod has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[33]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    TunableLaser has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate MTM1M3 Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTM1M3    TSS-2617
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM1M3
	Should Contain    ${cscs}    ${csc}

Validate MTM1M3 Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTM1M3    TSS-2617
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[34]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTM1M3 has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate Mtm2 Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    MTM2
	Comment    Define CSC.
	Set Test Variable    ${csc}    MTM2
	Should Contain    ${cscs}    ${csc}

Validate Mtm2 Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    MTM2
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[35]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTM2 has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[36]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[37]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[38]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[39]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[40]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Script has Generics: ${output}
	Should Be Equal As Strings    ${output}    no

Validate ScriptLoader Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ScriptLoader
	Comment    Define CSC.
	Set Test Variable    ${csc}    ScriptLoader
	Should Contain    ${cscs}    ${csc}

Validate ScriptLoader Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ScriptLoader
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[41]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ScriptLoader has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate ScriptQueue Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    ScriptQueue
	Comment    Define CSC.
	Set Test Variable    ${csc}    ScriptQueue
	Should Contain    ${cscs}    ${csc}

Validate ScriptQueue Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    ScriptQueue
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[42]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    ScriptQueue has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[43]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    FiberSpectrograph has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[44]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[45]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    SummitFacility has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[46]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTOFC has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[47]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    MTWEP has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate TCS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    TCS    TSS-1795
	Comment    Define CSC.
	Set Test Variable    ${csc}    TCS
	Should Contain    ${cscs}    ${csc}

Validate TCS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    TCS    TSS-1795
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[48]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    TCS has Generics: ${output}
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
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[49]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    Test has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

Validate VMS Is Defined
	[Documentation]    Validate the SALSubsystems.xml dictionary contains the expected CSC.
	[Tags]    smoke    VMS    TSS-2618
	Comment    Define CSC.
	Set Test Variable    ${csc}    VMS
	Should Contain    ${cscs}    ${csc}

Validate VMS Generics Element
	[Documentation]    Validate the SALSubsystems.xml dictionary correctly defines the <Generics> element.
	[Tags]    smoke    VMS    TSS-2618
	${output}=    Run    ${xml} sel -t -m "//SALSubsystems/Subsystem[50]/Generics" -v . -n ~/trunk/ts_xml/sal_interfaces/SALSubsystems.xml
	Log    VMS has Generics: ${output}
	Should Be Equal As Strings    ${output}    yes

