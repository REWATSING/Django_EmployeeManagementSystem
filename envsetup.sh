#!/bin/bash
if [ -d "env" ]
then
 echo "Python virtual environment alredy exists"
else
    python3 -m venv env
fi

echo $PWD
source /env/bin/activate

pip3 install -r requirements.txt

if [-d "logs"]
then
 echo "Logs folder alredy exists"
else
    mkdir logs
    touch  logs/error.log logs/access.log
fi

echo "833172" | sudo -S chmod -R 777 logs

echo "Environment setup finished for your project"
