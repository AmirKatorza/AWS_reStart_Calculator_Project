#! /bin/bash

source opt_functions.sh

select operation in Add Subtract Multiply Divide Power_of Modulos Exit ;
do 
    case $operation in 
        Add ) 
            read -p "Please enter two numbers: " num1 num2
            chk_input=$(input_valid $num1 $num2)
            if [ $chk_input -eq 1 ]; 
            then
                result=$(add $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
               
        Subtract )
            read -p "Please enter two numbers: " num1 num2
            chk_input=$(input_valid $num1 $num2)
            if [ $chk_input -eq 1 ]; 
            then
                result=$(sub $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Multiply ) 
            read -p "Please enter two numbers: " num1 num2
            chk_input=$(input_valid $num1 $num2)
            if [ $chk_input -eq 1 ]; 
            then
                result=$(multiply $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Divide ) 
            read -p "Please enter two numbers: " num1 num2
            chk_input=$(input_valid_div_mod $num1 $num2)
            if [ $chk_input -eq 1 ];
            then
                result=$(division $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Power_of ) 
            read -p "Please enter two numbers: " num1 num2
            chk_input=$(input_valid $num1 $num2)
            if [ $chk_input -eq 1 ]; 
            then
                result=$(power $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Modulos ) 
            read -p "Please enter two numbers" num1 num2
            chk_input=$(input_valid_div_mod $num1 $num2)
            if [ $chk_input -eq 1 ];
            then
                result=$(modulos $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Exit )
            exit ;;
        * )
            echo "Invalid choice, try again!" ;;
    esac    
done