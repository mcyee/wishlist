from flask import Blueprint, render_template
from flask_login import login_required, current_user

user = Blueprint('user', __name__)

@user.route('/user/settings')
@login_required
def settings():
    return render_template('user/settings.html')

@user.route('/user/<int:user_id>')
@login_required
def profile(user_id):
    pass
    return render_template('user/profile.html')

