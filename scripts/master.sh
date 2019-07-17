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
echo "SAL Dictionary tests..."; python3.6 SAL_Dictionary.py; 
echo "Generic topics tests..."; python3.6 SAL_Generics.py; 
echo "Count field tests..."; python3.6 XML_Count.py; 
echo "Definition tests..."; python3.6 XML_Definitions.py; 
echo "No Spaces tests..."; python3.6 XML_NoSpaces.py; 
echo "Topic Size tests..."; python3.6 XML_Size.py; 
echo "XSD Validation tests..."; python3.6 XML_XSD.py; 
echo "Reserved Words tests..."; python3.6 XML_ReservedWords.py; 
echo "Topic Naming tests..."; python3.6 Topic_Naming.py; 
echo "Topic Alias tests..."; python3.6 Alias.py; 
echo "Attribute Naming tests..."; python3.6 Attribute_Naming.py; 
echo "Attribute Unit tests..."; python3.6 Units.py; 
echo "Attribute Description tests..."; python3.6 Attribute_Description.py;
echo "=======Done======="
