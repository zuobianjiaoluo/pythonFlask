"""
Routes and views for the flask application.
"""
#import sys
#sys.path.append(r"D:\python\FlaskWeb\FlaskWeb")
#import utils.httpClientHelper
from datetime import datetime
from flask import render_template
from FlaskWeb import app



@app.route('/')
@app.route('/home')
def home():
    """呈现主页  ."""
    return render_template(
        'index.html',
        title='Home Page',
        year=datetime.now().year,
        neirong='hellow python' #utils.httpClientHelper.httpPostMethod("http://172.16.1.122:63310/api/RealtyFiles/GetRealtyFiles","{'areaCode':'B024','realtyid':2279071}")#
        
    )

@app.route('/contact')
def contact():
    """Renders the contact page."""
    return render_template(
        'contact.html',
        title='Contact',
        year=datetime.now().year,
        message='Your contact page.'
    )

@app.route('/about')
def about():
    """Renders the about page."""
    return render_template(
        'about.html',
        title='About',
        year=datetime.now().year,
        message='Your application description page.'
    )
