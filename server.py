from flask import Flask, render_template, request, redirect
from mysqlconnection import connectToMySQL

app = Flask(__name__)

@app.route("/")
def index():
    print("*"*50, "\nIN INDEX METHOD\n", "*"*50)
    mysql = connectToMySQL("art_works")
    all_artists = mysql.query_db("SELECT * FROM artists;") 
    return render_template("index.html", artists = all_artists)

@app.route("/create_artist", methods=["POST"])
def add_artist_to_db():
    print("*"*50, "\nIN CREATE METHOD\n", "*"*50)
    query = "INSERT INTO artist(name, birthday, deathdate) VALUES (%(n)s, %(b)s, %(d)s);"
    data = {
        'name': request.form["name"],
        'birthdate': request.form["birth"],
        'deathdate': request.form["death"],
    }
    new_artist_id = mysql.query_db(query, data)

    return redirect("/")

if __name__ == "__main__":
    app.run(debug=True)