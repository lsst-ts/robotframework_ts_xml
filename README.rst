============================
RobotFramework TS_XML Readme
============================


Before installing Robotframework
================================

Install Java
------------

Open a terminal window
check version of java installed

.. code:: bash
	
   java -version
	
if it asks to install, say yes
else java version should be v1.6 or higher
add the following to your .bash_profile

.. code:: bash

   export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home


Install XML Starlet
-------------------

Use the package manager of your distribution to install xmlstarlet.

.. note:: On centos run the following to make sure that xml program is found during test execution.

   .. code:: bash
   
      sudo cp /usr/bin/xmlstarlet /usr/bin/xml


Installing RobotFramework and Libraries
=======================================
Robot Framework is a GitHub project.  Navigate to the following website for installation instructions.
https://github.com/robotframework/robotframework

Install Robot Framework using pip inside of a virtualenv.

>>> pip install robotframework

It is assumed that all Repositories are stored locally in a trunk/ directory off the home folder, i.e. $HOME/trunk

Installing RobotFramework IDE
-----------------------------
If desired, Robot Framework has its own IDE, called RIDE.  Installation instructions can be found at
https://github.com/robotframework/RIDE/wiki/Installation-Instructions

Current LSST QA forgoes use of this tool in favor of using a generic text editor, like VI. 


Installing RobotFramework SSHLibrary
------------------------------------
LSST QA makes heavy use of the SSHLibrary.  This must be installed for the tests to run successfully.
Follow the instructions for installing SSHLibrary at
https://github.com/robotframework/SSHLibrary

Install using pip in the same virtualenv.

>> pip install robotframework-sshlibrary


Searching for Additional Libraries
------------------------------------
Other RobotFramework libraries
These are not required at this time, but may be useful in the future.

:Library listing: http://robotframework.org/#libraries

HTTPLibrary
-----------
:homepage: https://github.com/peritus/robotframework-httplibrary

:git repo: https://github.com/peritus/robotframework-httplibrary.git

RequestsLibrary
---------------
:homepage: https://github.com/bulkan/robotframework-requests

:git repo: git://github.com/bulkan/robotframework-requests.git


Use pip to upgrade installed packages:
-----------------------------------------
.. code:: bash

   sudo pip install -U robotframework
   sudo pip install -U robotframework-SSHLibrary


List Installed Packages
=======================
Pip can return all of the installed versions by running:

>>> pip list


Running RobotFramework Tests
============================
To actually run the regression tests you will also need:

1.  UNIX utilities such as awk, sed, cut, grep, head, and tail.
2.  Create the <project>_Vars.txt in $HOME/bin

The <project>_Vars.txt file is a variables file for the server you are wishing to run against and your current environment.

Below is a template for the XML_Vars.txt that can be copied and edited appropriately:


.. code::

   #  Arguments file for testing the XML
   #  Output directory
   -d /Users/rbovill/Reports/junk/XML_Regression

   #  Specify tags to NOT run
   -e skipped

   # Specify non-critical failures
   --noncritical TSS*
   --noncritical TSEIA* #Skips known issue(s)
   --noncritical DM*

   # Dry run mode
   #--dryrun

   #  Redefine default variables
   --variable version:3.2.0
   ####



Test Workflow
-------------
Navigate to $HOME/trunk/robotframework_ts_xml (location of robotframework_ts_xml from checked out git repo).

.. code:: bash

   cd scripts
   export XML_HOME=/path/to/xml/git/repo
   ./master.sh
   cd ..
   robot -A /path/to/XML_Vars.txt -A XML_Validation.list



Additional Usage instructions
=============================
The robotframework_ts_xml tests are actually optimized to run in the Jenkins environment, https://ts-ci.lsst.codes/job/ts_xml, and should be run there.  One off usage for incremental testing is
described above.

The robotframework_ts_xml/ root directory contains the Jenkins_Validate_XML.list and the Validate_XML.list files.  These are simply lists of all test suites that aid in running the regression and reporting the results, both locally and in Jenkins.

Global_Vars.txt contains variables, some with default values, used throughout the test suites.  Use this in conjunction with $HOME/bin/XML_Vars.txt to control variables, such as
versions, that on commonly used but can change with time or location.  IMPORTANT NOTE: Values in XML_Vars.txt will supersede those in Global_Vars.txt.

The scripts/ directory contains utilities to automatically generate the test suites and test lists, as manual maintenence would be next to impossible.

Finally, the test suites themselves are stored directly in the root folder.  Should maintenence become unwieldy, additional folders may be created to aid in organization.




