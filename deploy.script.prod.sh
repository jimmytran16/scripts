# Get the first argument and assign it to the commit variable
com=$1;
#  Check if there is an arg being passed in (this will be the commit message)
if [ -z "$com" ]
    then 
        echo 'Please enter a commit messasge as arg1'
        echo 'EXAMPLE: ./deploy.script.prod.sh "This is the commit message"'
        exit
# If there is a valid commit message, then add, commit, and deploy to server
else 
    echo "Adding ......"
    git add .
    echo "Commiting ....."
    git commit -m "$com"
    echo "Deploying....."
    git push heroku master
fi #end condition