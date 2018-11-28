echo "=======Update ts_xml======="; 
read -n 1 -p "Do you want to update ts_xml? [y]: " -e confirm
confirm="${confirm:-"y"}"
echo $XML_HOME

if [ "$confirm" == "y" ] && [ -z $JENKINS_HOME ]; then
	if [ ! -z $XML_HOME ]; then
		cd ${XML_HOME}
	else
		echo "ERROR: XML_HOME not defined. Exiting."
		exit 1;
    fi
	echo "Updating ts_xml..."
	git branch
	git pull
	cd ~-
fi

echo "=======Begin test generation======="; 
echo "SAL Dictionary tests..."; python SAL_Dictionary.py; 
echo "Generic topics tests..."; python SAL_Generics.py; 
echo "Count field tests..."; python XML_Count.py; 
echo "Definition tests..."; python XML_Definitions.py; 
echo "No Spaces tests..."; python XML_NoSpaces.py; 
echo "Topic Size tests..."; python XML_Size.py; 
echo "XSD Validation tests..."; python XML_XSD.py; 
echo "Reserved Words tests..."; python XML_ReservedWords.py; 
echo "Topic Naming tests..."; python Topic_Naming.py; 
echo "Attribute Naming tests..."; python Attribute_Naming.py; 
echo "=======Done======="
