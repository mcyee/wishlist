from flask import render_template
from wishlist import app

@app.route('/')

def main():
    return render_template('index.html')
