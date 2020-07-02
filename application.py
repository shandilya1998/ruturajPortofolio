from flask import Flask, render_template, request

application = Flask(__name__, static_folder = './static')

@application.route('/', methods = ['GET', 'POST'])
def home():
    return render_template('index.html')        
