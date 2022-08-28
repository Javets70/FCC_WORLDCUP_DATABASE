#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE games , teams;"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
  # INSERTING DATA IN TEAMS TABLE
    if [[ ! -z $WINNER || ! -z $OPPONENT ]] #CHECKING IF VALUE IS NOT EMPTY
    then
      $PSQL "INSERT INTO teams(name) VALUES('$WINNER') ON CONFLICT DO NOTHING;" #AVOIDING ERRORS ON DUPLICATE VALUES
      $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') ON CONFLICT DO NOTHING;"

    fi
  # INSERTING DATA IN GAMES TABLE
    #GET WINNER_ID
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    $PSQL "INSERT INTO games(year , round , winner_id , opponent_id , winner_goals , opponent_goals) VALUES($YEAR , '$ROUND' , $WINNER_ID , $OPPONENT_ID , $WINNER_GOALS , $OPPONENT_GOALS);"
  fi
done
