#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"
echo -e "Enter your username:"

read USERNAME
USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
#if username exist
if [[ -z $USER_ID ]]
then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAME_PLAYED=$($PSQL "select count(*) from games where user_id = $USER_ID")
  BEST_GAME=$($PSQL "select min(number_of_guesses) from games where user_id = $USER_ID")
  echo -e "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
echo $SECRET_NUMBER
echo -e "Guess the secret number between 1 and 1000:"
NUMBER_OF_GUESSES=0
NUMBER_GUESS=0
while [[ $NUMBER_GUESS != $SECRET_NUMBER ]]
do
  read NUMBER_GUESS
  #check number
  while [[ ! $NUMBER_GUESS =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    read NUMBER_GUESS
  done
  if [[ $NUMBER_GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  fi
  if [[ $NUMBER_GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  fi
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
done

if [[ -z $USER_ID &&  $NUMBER_GUESS == $SECRET_NUMBER ]]
then
  INSERT_USER_RESULT=$($PSQL "insert into users(username) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
fi
#if number is guessed
INSERT_GAME_RESULT=$($PSQL "insert into games(user_id, number_of_guesses) values($USER_ID, $NUMBER_OF_GUESSES)")
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
