#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""
subsystems = ['archiver', 'atArchiver', 'atHeaderService', 'atMonochromator', 'calibrationElectrometer', 'camera', 'catchuparchiver',
				'dome', 'domeADB', 'domeAPS', 'domeLouvers', 'domeLWS', 'domeMONCS', 'domeTHCS', 'eec', 
				'headerService', 'hexapod', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'promptprocessing', 'rotator', 
				'scheduler', 'sequencer', 'summitFacility', 'tcs', 'tcsAOCS', 'tcsOfc', 'tcsWEP', 'vms']


# =========
# Functions
# =========

def CapitalizeSubsystem( subsystem ):
	"""Certain CSC abbreviations are capitalized in non-standard ways. This function correctly handles that capitalization."""
	if re.match("^dome\S+", subsystem):
		return subsystem[0].upper() + subsystem[1:]
	elif subsystem == "atArchiver":
		return "ATArchiver"
	elif subsystem == "atHeaderService":
		return "ATHeaderService"
	elif subsystem == "atMonochromator":
		return "ATMonochromator"
	elif subsystem == "catchuparchiver":
		return "CatchupArchiver"
	elif subsystem == "promptprocessing":
		return "PromptProcessing"
	elif subsystem == "summitFacility":
		return "SummitFacility"
	elif subsystem == "calibrationElectrometer":
		return "CalibrationElectrometer"
	elif subsystem == "headerService":
		return "HeaderService"
	elif subsystem == "eec":
		return "EEC"
	elif subsystem == "m1m3":
		return "M1M3"
	elif subsystem == "m2ms":
		return "M2MS"
	elif subsystem == "MTMount":
		return subsystem
	elif subsystem == "tcs":
		return "TCS"
	elif subsystem == "ocs":
		return "OCS"
	elif subsystem == "tcsAOCS":
		return "TCSAOCS"
	elif subsystem == "tcsOfc":
		return "TCSOFC"
	elif subsystem == "tcsWEP":
		return "TCSWEP"
	elif subsystem == "vms":
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


