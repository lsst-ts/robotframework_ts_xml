#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""
# ATThermoelectricCooler
subsystems = [ 'ATArchiver', 'ATCamera', 'AtDome', 'ATHeaderService', 'ATMCS', 'ATMonochromator', 'ATPneumatics', 
				'ATSpectrograph', 'ATTCS', 'ATWhiteLight', 
				'CatchupArchiver', 'CBP', 'Dome', 'DomeADB', 'DomeAPS', 'DomeLouvers', 'DomeLWS', 'DomeMONCS', 'DomeTHCS', 
				'EEC', 'EFD', 'Electrometer', 'Hexapod', 'Laser', 'LinearStage', 
				'MTArchiver', 'MTCamera', 'MTHeaderService', 'MTM1M3', 'M2MS', 'MTMount', 'MTOFC', 'MTWEP', 
				'OCS', 'PromptProcessing', 'Rotator', 'Scheduler', 'Sequencer', 'SummitFacility', 'TCS', 
				'Test', 'TunableLaser', 'VMS']


# =========
# Functions
# =========

def CapitalizeSubsystem( subsystem ):
	"""Certain CSC abbreviations are capitalized in non-standard ways. This function correctly handles that capitalization."""
	if re.match("^dome\S+", subsystem):
		return subsystem[0].upper() + subsystem[1:]
	elif subsystem == "ATArchiver":
		return "ATArchiver"
	elif subsystem == "ATCamera":
		return "ATCamera"
	elif subsystem == "AtDome":
		return "AtDome"
	elif subsystem == "ATTCS":
		return "ATTCS"
	elif subsystem == "ATMCS":
		return "ATMCS"
	elif subsystem == "ATHeaderService":
		return "ATHeaderService"
	elif subsystem == "ATMonochromator":
		return "ATMonochromator"
	elif subsystem == "ATPneumatics":
		return "ATPneumatics"
	elif subsystem == "ATSpectrograph":
		return "ATSpectrograph"
	elif subsystem == "ATWhiteLight":
		return "ATWhiteLight"
	elif subsystem == "ATThermoelectricCooler":
		return "ATThermoelectricCooler"
	elif subsystem == "Catchuparchiver":
		return "CatchupArchiver"
	elif subsystem == "EEC":
		return "EEC"
	elif subsystem == "EFD":
		return "EFD"
	elif subsystem == "MTHeaderService":
		return "MTHeaderService"
	elif subsystem == "LinearStage":
		return "LinearStage"
	elif subsystem == "MTM1M3":
		return "MTM1M3"
	elif subsystem == "M2MS":
		return "M2MS"
	elif subsystem == "MTMount":
		return subsystem
	elif subsystem == "OCS":
		return "OCS"
	elif subsystem == "PromptProcessing":
		return "PromptProcessing"
	elif subsystem == "FiberSpectrometer":
		return "FiberSpectrometer"
	elif subsystem == "SummitFacility":
		return "SummitFacility"
	elif subsystem == "TCS":
		return "TCS"
	elif subsystem == "MTOFC":
		return "MTOFC"
	elif subsystem == "MTWEP":
		return "MTWEP"
	elif subsystem == "TunableLaser":
		return "TunableLaser"
	elif subsystem == "CBP":
		return "CBP"
	elif subsystem == "VMS":
		return "VMS"
	else:
		return subsystem.capitalize()

def GetSubsystemVersion( string ):
	# Right now, the topic version is controlled manually, which requries a 
	# manual configuration file.  If/when this is formallized, switch to
	# that source.
	"""Get the version of the CSC topic (command, event or telemetry)."""
	version = ""
	with open(os.environ['HOME'] + "/bin/XML_Versions.txt") as versionfile:
		for line in versionfile:
			if string in line:
				line = versionfile.next()
				while line != "\n":
					version+=line.split(" ")[1].rstrip() + "\\n"
					line = versionfile.next()   #.split(" ")[1].rstrip()
	return version[:-2]


