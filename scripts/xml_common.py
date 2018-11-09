#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""
# 'Script', 'ScriptQueue',
subsystems = [ 'ATArchiver', 'ATCamera', 'ATDome', 'ATHeaderService', 'ATHexapod', 'ATMCS', 'ATMonochromator', 'ATPneumatics', 
				'ATSpectrograph', 'ATTCS', 'ATThermoelectricCooler', 'ATWhiteLight', 
				'CatchupArchiver', 'CBP', 'Dome', 'DomeADB', 'DomeAPS', 'DomeLouvers', 'DomeLWS', 'DomeMONCS', 'DomeTHCS', 
				'EEC', 'EFD', 'Electrometer', 'FiberSpectrograph', 'Hexapod', 'LinearStage', 
				'MTArchiver', 'MTCamera', 'MTHeaderService', 'MTM1M3', 'MTM2', 'MTMount', 'MTOFC', 'MTWEP', 'OCS',
				'PromptProcessing', 'Rotator', 'Scheduler', 'Sequencer', 'SummitFacility',
				'MTTCS', 'Test', 'TunableLaser', 'MTVMS']


# =========
# Functions
# =========

def CapitalizeSubsystem( subsystem ):
	"""Certain CSCs used to be capitalized in non-standard ways. This function is holdover and should be removed."""
	return subsystem

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


