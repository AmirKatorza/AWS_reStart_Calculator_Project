#!/bin/bash
multiply() {
read -p "Enter first number: " num1
read -p "Enter second number: " num2


result=$((num1 * num2))
echo "the result is: $result" 
}
multiply