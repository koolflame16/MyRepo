
#!/bin/bash


# Read file
while IFS= read -r Name Height Width Area Colour; 
do
	# Get only line with Red colour
	IFS=","
while read -r  Name Height Width Area Colour
do
    echo -e "$Name,$Height,$Width,$Area,$Colour"  | sed 's/^/ Name:/' | sed 's/,/ Height:/' | sed 's/,/  Width:/' | sed 's/,/ Area: /' | sed 's/,/ Colour: /g'  | grep Red
done	

done < rectangle.txt