from flask import Flask
from .views.user import user

app = Flask(__name__)
app.register_blueprint(user, url_prefix='/user/<int:user_id>')

#
# import wishlist.views
#
# if __name__ == '__main__':
#     app.run()
