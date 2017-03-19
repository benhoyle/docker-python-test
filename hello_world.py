from flask import Flask

from blueprints import pages

def create_app(settings_override=None):
    """
    Create a Flask application using the app factory pattern.

    :param settings_override: Override settings
    :return: Flask app
    """
    app = Flask(__name__, instance_relative_config=True)
    app.debug = False
    app.register_blueprint(pages)

    return app

