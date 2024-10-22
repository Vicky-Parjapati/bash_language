  GNU nano 8.1                   password_generator.sh *                           
#!/bin/bash

#Simple Password Generater

echo "Welcome to simple password Generator"

#delay for  three seconds
sleep 3

echo "Please enter the length of the password : "

#take the input
read PASS_LENGTH

#generate the password by for loop  and give only one sequence value
for p in $(seq 1 );
do
        openssl rand -base64 48 | cut  -c1-$PASS_LENGTH
done

