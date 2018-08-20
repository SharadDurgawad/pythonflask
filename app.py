import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome to OpenShift"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

@app.route('/who are you')
def hello_there():
    return 'This is Sharad Durgawad, a OpenShift enthusiast'

@app.route('/hi')
def hello_hi():
    return 'Hey Hi, Whats up?'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
