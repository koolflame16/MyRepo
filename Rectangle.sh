
#!/bin/bash


IFS=","
while read -r  Name Height Width Area Colour
do
    echo -e "$Name,$Height,$Width,$Area,$Colour" | sed 's/^/ Name:/' | sed 's/,/ Height:/' | sed 's/,/  Width:/' | sed 's/,/ Area: /' | sed 's/,/ Colour: /g' 

done < rectangle.txt