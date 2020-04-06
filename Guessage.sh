
#!/bin/bash


colour_green () 
{
echo -e -n "\e[1;32m"
}

colour_red () 
{
echo -e -n "\e[1;31m"
}

colour_cyan () 
{
    echo -e -n "\e[0;36m"
}

colour_yellow () 
{
    echo -e -n "\e[0;33m"
}

colour_magenta () 
{
    echo -e -n "\e[0;35m"
}


colour_reset () 
{
    echo -e -n "\033[0m"
}


welcome_note () {
colour_cyan
echo -e "Welcome to the Guess the Age game."
echo -e "Press Ctrl+C at any time to exit \n"
colour_reset
}


function intro ()
{
    colour_yellow
    read -p "Hi, what is your name? " name
    colour_reset
    echo  -e "Hi, $name ! \n"
}

# start game
function prompt {
       
        result=$(( RANDOM % 50 + 20 )) # generate random number between 20 and 70

        
        while (( guess != result )); do
        colour_magenta
	    read -p "Guess the age (between 20 - 70): " guess
        colour_reset


        #prompt if result higher than the correct number
        if (( guess > result )); then
                echo "Too high...."
    
        #prompt if guess is lower than the correct number
        elif (( guess < result )); then 
             echo "Too low...."
        fi

         #output if guess is above range
        if  (( guess > 70 )); then
        colour_red
            echo -e "This is above the range. Please enter any number between 20 - 70"
            colour_reset
        fi

        #output if guess is below the range
         if  (( guess < 20 )); then
         colour_red
            echo -e "This is below the range. Please enter any number between 20 - 70"
            colour_reset
        fi
    
           
        #output if guess is correct
        
        if (( guess == result )); then
        colour_green
        echo "Congratulations! You have guessed correctly."
        fi


        done 
}

welcome_note
intro
prompt

exit 0
