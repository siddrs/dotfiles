#!/bin/bash
FILE="$HOME/Desktop/script-testing/git-token.txt"
GET_TOKEN=$(grep "^ghp" $FILE)

if [[ $1 == "get" ]]
then
    echo -e "\n$GET_TOKEN\n"
elif [[ $1 == "update" ]]
then
    echo -e "\nDeleting expired tokens..."
    sed -i '/^/d' $FILE
    echo -e "Deleted expired tokens\n"

    read -p "Enter the token: " UPDATE_TOKEN
    sed -e "2 s/*/$UPDATE_TOKEN/" $FILE
    echo -e "Updated token\n"

    read -p "Enter the Expiry Date (Ex: 23 Mar 2022): " EXPIRY_DATE
    sed -e "1 s/*/$EXPIRY_DATE/" $FILE
    echo -e "Updated expiry date\n"

else
    echo "Argument Required: 'update' or 'get'"
fi
 