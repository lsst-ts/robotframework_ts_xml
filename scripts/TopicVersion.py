#!/usr/bin/env python
# -*- coding: utf-8 -*-
import glob
import re
import subprocess
import os

file = open(os.environ['HOME']+"/bin/XML_Versions.txt","w")

subsystems = ['archiver', 'camera', 'catchuparchiver', 'dm', 'dome', 'domeADB', 'domeAPS', 'domeLouvers', 'domeLWS', 'domeMONCS', 'domeTHCS', 'hexapod', 'm1m3', 'm2ms', 'MTMount', 'ocs', 'processingcluster', 'rotator', 'scheduler', 'sequencer', 'tcs']

for subsystem in subsystems:
	# Get the list of XMLs for each CSC, to include Telemetry, Events and Commands.
	xmls = glob.glob("/Users/rbovill/trunk/ts_xml/sal_interfaces/" + subsystem + "/" + subsystem + "*")
	for xml in xmls:
		file.write(xml + "\n")
		# Get the CSC from the xml filename. 
		csc = xml.split('/')[7].split('_')[0]
		# Get the message type, i.e. Telemetry, Events, Commands.
		messageType = xml.split('/')[7].split('_')[1].split('.')[0]
		
		path = '//SAL'+messageType.rstrip('s')+'Set/SAL'+messageType.rstrip('s')+'/EFDB_Topic'
		topics = subprocess.check_output(['xml', 'sel', '-t', '-m', path, '-v', '.', '-n', xml])
		topics = topics.splitlines()
		path = '//SAL'+messageType.rstrip('s')+'Set/SAL'+messageType.rstrip('s')+'/Version'
		versions = subprocess.check_output(['xml', 'sel', '-t', '-m', path, '-v', '.', '-n', xml])
		versions = versions.splitlines()
		for topic, version in zip(topics, versions):
			file.write(topic + ": " + version + "\n")
		file.write("\n")
