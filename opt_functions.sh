#!/bin/bash

function input_valid() {
  local re='^-?[0-9]+$'
  if [[ $1 =~ $re && $2 =~ $re ]]; 
  then
    echo "1"
  else 
    echo "0"
  fi
}

function input_valid_div_mod() {
  local re_num1='^-?[0-9]+$'
  local re_num2='^-?[1-9]+$'
  if [[ $1 =~ $re_num1 && $2 =~ $re_num2 ]]; 
  then
    echo "1"
  else 
    echo "0"
  fi
}

# Function for addition
function add {
  local res_add=$(( $1 + $2 ))
  echo "$res_add"
}

# Function to perform subtraction
function sub {
  local res_sub=$(( $1 - $2 ))
  echo "$res_sub"
}

# Function to perform multiplication
function multiply() {
  local res_mult=$(( $1 * $2 ))
  echo "$res_mult" 
}

# Function to perform division
function division() {
  local res_mult=$(( $1 / $2 ))
  echo "$res_mult" 
}

# Function to perform Power_Of
function power() {
  local res_power=$(echo “$1^$2” | bc -l)
  echo "$res_power" 
}

# Function to perform modulos
function modulos() {
  local res_mod=$(( $1 % $2 ))
  echo "$res_mod" 
}








