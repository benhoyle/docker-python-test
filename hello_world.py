from flask import Flask

from blueprints import pages

def create_app():
    """
    Create a Flask application using the app factory pattern.
    
    :return: Flask app
    """
    app = Flask(__name__)
    app.register_blueprint(pages)

    return app

