# INSTALLATION
### Install python 3.6 or higher
```brew install python```
### Install virtualenv
```pip install virtualenv``` 
Ensure that the pip corresponds to python 3
### Create a Virtual Environment
```virtualenv venv```
### Activate Virtual Environment
In the root directory of the project install a virtual environment
```source venv/bin/activate```
### Install Dependencies
```pip install -r requirements.txt```
### Set Flask App Environment Variable
```export FLASK_APP=application.py```
### Run Flask Development Server
```flask run``` 
Ensure you are in the root folder of the project when this command is run
