#! /bin/bash

source opt_functions.sh

select operation in Add Subtract Multiply Divide Power_of Modulos Exit ;
do 
    case $operation in 
        Add ) 
            read -p "Please enter two number to add" num1 num2
            re='^-?[0-9]+$'
            if [[ $num1 =~ $re && $num2 =~ $re ]]; 
            then
                result=$(add $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
               
        Subtract )
            read -p "Please enter two number to add" num1 num2
            re='^-?[0-9]+$'
            if [[ $num1 =~ $re && $num2 =~ $re ]]; 
            then
                result=$(sub $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Multiply ) 
            read -p "Please enter two number to add" num1 num2
            re='^-?[0-9]+$'
            if [[ $num1 =~ $re && $num2 =~ $re ]]; 
            then
                result=$(multiply $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Divide ) 
            read -p "Please enter two number to add" num1 num2
            re_num1='^-?[0-9]+$'
            re_num2='^-?[1-9]+$'
            if [[ $num1 =~ $re_num1 && $num2 =~ $re_num2 ]];
            then
                result=$(division $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Power_of ) 
            read -p "Please enter two number to add" num1 num2
            re='^-?[0-9]+$'
            if [[ $num1 =~ $re && num2 =~ $re ]]; 
            then
                result=$(power $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Modulos ) 
            read -p "Please enter two number to add" num1 num2
            re_num1='^-?[0-9]+$'
            re_num2='^-?[1-9]+$'
            if [[ $num1 =~ $re_num1 && $num2 =~ $re_num2 ]];
            then
                result=$(modulos $num1 $num2)
                echo "Result: $result"
            else
                echo "Error: input is invalid!"
            fi ;;
        Exit )
            exit ;;
        * )
            echo "Input is invalid" ;;
    esac    
done