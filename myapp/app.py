from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    # Get environment variable (with a default fallback)
    custom_message = os.getenv('CUSTOM_MESSAGE', 'Hello from the Docker container!')
    return f'{custom_message}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
