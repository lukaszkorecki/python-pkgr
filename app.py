from flask import Flask
app = Flask(__name__)

from lib import hello

@app.route("/")
def root():
    return hello.Hello().greet('you')

if __name__ == "__main__":
    app.run()
