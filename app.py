from flask import Flask

app = Flask(__name__)


@app.route('/')
def basic_app():
    return "Application with Ubuntu Base"


app.run(host='0.0.0.0', port=5000)