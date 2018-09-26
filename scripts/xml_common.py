#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""
subsystems = ['archiver', 'atArchiver', 'AtDome', 'atHeaderService', 'AtMCS', 'atMonochromator', 'AtPneumatics', 'atScheduler', 'AtWhiteLight', 
				'AtWhiteLightChiller', 'atcamera', 'atcs', 'calibrationElectrometer', 'camera', 'catchupArchiver', 
				'dome', 'domeADB', 'domeAPS', 'domeLouvers', 'domeLWS', 'domeMONCS', 'domeTHCS', 'eec', 'efd', 
				'headerService', 'hexapod', 'LinearStage', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'PromptProcessing', 'rotator', 
				'scheduler', 'sedSpectrometer', 'sequencer', 'AtSpectrograph', 'SummitFacility', 'tcs', 'tcsOfc', 'tcsWEP', 'vms']


# =========
# Functions
# =========

def CapitalizeSubsystem( subsystem ):
	"""Certain CSC abbreviations are capitalized in non-standard ways. This function correctly handles that capitalization."""
	if re.match("^dome\S+", subsystem):
		return subsystem[0].upper() + subsystem[1:]
	elif subsystem == "atArchiver":
		return "AtArchiver"
	elif subsystem == "atcamera":
		return "AtCamera"
	elif subsystem == "AtDome":
		return "AtDome"
	elif subsystem == "atcs":
		return "ATCS"
	elif subsystem == "AtMCS":
		return "AtMCS"
	elif subsystem == "atHeaderService":
		return "AtHeaderService"
	elif subsystem == "atMonochromator":
		return "AtMonochromator"
	elif subsystem == "AtPneumatics":
		return "AtPneumatics"
	elif subsystem == "atScheduler":
		return "AtScheduler"
	elif subsystem == "AtSpectrograph":
		return "AtSpectrograph"
	elif subsystem == "AtWhiteLight":
		return "AtWhiteLight"
	elif subsystem == "AtWhiteLightChiller":
		return "AtWhiteLightChiller"
	elif subsystem == "calibrationElectrometer":
		return "CalibrationElectrometer"
	elif subsystem == "catchuparchiver":
		return "CatchupArchiver"
	elif subsystem == "catchuparchiver":
		return "CatchupArchiver"
	elif subsystem == "eec":
		return "EEC"
	elif subsystem == "efd":
		return "EFD"
	elif subsystem == "headerService":
		return "HeaderService"
	elif subsystem == "LinearStage":
		return "LinearStage"
	elif subsystem == "m1m3":
		return "M1M3"
	elif subsystem == "m2ms":
		return "M2MS"
	elif subsystem == "MTMount":
		return subsystem
	elif subsystem == "ocs":
		return "OCS"
	elif subsystem == "PromptProcessing":
		return "PromptProcessing"
	elif subsystem == "sedSpectrometer":
		return "SEDSpectrometer"
	elif subsystem == "SummitFacility":
		return "SummitFacility"
	elif subsystem == "tcs":
		return "TCS"
	elif subsystem == "tcsOfc":
		return "TcsOfc"
	elif subsystem == "tcsWEP":
		return "TcsWEP"
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


