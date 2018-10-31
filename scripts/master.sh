echo "Generating Generic topics tests..."; python XML_Generic.py; 
echo "Count field tests..."; python XML_Count.py; 
echo "Definition tests..."; python XML_Definitions.py; 
echo "No Spaces tests..."; python XML_NoSpaces.py; 
echo "Topic Size tests..."; python XML_Size.py; 
echo "XSD Validation tests..."; python XML_XSD.py; 
echo "Reserved Words tests..."; python XML_ReservedWords.py; 
echo "Topic Naming tests..."; python Topic_Naming.py; 
echo "Attribute Naming tests..."; python Attribute_Naming.py; 
echo "Done"
