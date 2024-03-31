# Import the Flask class from the flask package
from flask import Flask

# Create an instance of the Flask class with the name of the current module as the parameter
app = Flask(__name__)


# Define a route for the root URL ("/") of the application
@app.route("/")
def hello_world():
    # Returns a simple HTML response
    return "<center><h1>Hello, this is a simple Flask application</center></h1>"
