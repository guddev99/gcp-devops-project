from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<center><h1>Hello, this is a simple Flask application</center></h1>"
