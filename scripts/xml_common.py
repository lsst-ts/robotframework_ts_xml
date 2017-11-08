#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re

"""This library defines common variables and functions used by the various XML test suite generator scripts.""" 

# =========
# Variables
# =========
"""Defines the array of Commandable SAL Components, or CSCs."""
subsystems = ['archiver', 'camera', 'catchuparchiver', 'dome', 'domeADB', 'domeAPS', 'domeLouvers', 'domeLWS', 'domeMONCS', 'domeTHCS', 'eec', 'environment', 'hexapod', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'processingcluster', 'rotator', 'scheduler', 'sequencer', 'tcs']


# =========
# Functions
# =========

def CapitalizeSubsystem( subsystem ):
	"""Certain CSC abbreviations are capitalized in non-standard ways. This function correctly handles that capitalization."""
	if re.match("^dome\S+", subsystem):
		return subsystem[0].upper() + subsystem[1:]
	elif subsystem == "dm":
		return "DM"
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
	else:
		return subsystem.capitalize()

def GetSubsystemVersion( string ):
	# Right now, the topic version is controlled manually, which requries a 
	# manual configuration file.  If/when this is formallized, switch to
	# that source.
	"""Get the version of the CSC topic (command, event or telemetry)."""
	version = ""
	with open("/Users/rbovill/bin/XML_Versions.txt") as versionfile:
		for line in versionfile:
			if string in line:
				line = versionfile.next()
				while line != "\n":
					version+=line.split(" ")[1].rstrip() + "\\n"
					line = versionfile.next()   #.split(" ")[1].rstrip()
	return version[:-2]


