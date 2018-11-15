#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re
import os

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""

subsystems = [ 'ATArchiver', 'ATBuilding', 'ATCalCS', 'ATCamera', 'ATDome', 'ATDomeTrajectory', 'ATHeaderService', 'ATHexapod',
               'ATMCS', 'ATMonochromator', 'ATPneumatics', 'ATSpectrograph', 'ATTCS', 'ATThermoelectricCooler', 'ATWhiteLight', 
	       'CatchupArchiver', 'CBP', 'DIMM', 'Dome', 'DomeADB', 'DomeAPS', 'DomeLouvers', 'DomeLWS', 'DomeMONCS', 'DomeTHCS', 
	       'EAS', 'EEC', 'EFD', 'EFDTransformationServer', 'Electrometer', 'FiberSpectrograph', 'IOTA', 'Hexapod', 'LinearStage', 
	       'MTArchiver', 'MTCalCS', 'MTCamera', 'MTDomeTrajectory', 'MTGuider', 'MTHeaderService', 'MTLaserTracker', 'MTM1M3', 'MTM2',
               'MTMount', 'MTOFC', 'MTTCS', 'MTWEP', 'MTVMS', 'OCS', 'PromptProcessing', 'Rotator', 'Scheduler', 'Script', 'ScriptQueue',
               'Sequencer', 'SummitFacility', 'Test', 'TunableLaser']


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


