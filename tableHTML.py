from flask import Flask
import mysql.connector

app = Flask(__name__)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",
    database="attendance"
   )

@app.route("/getTable")
def getTable():
    print("get table")
    mycursor = mydb.cursor()
    query = "SELECT RFID, Name, DATE_FORMAT(Time, '%Y-%m-%d %T.%f') FROM students ORDER BY Time DESC LIMIT 30;"
    print(query)
    mycursor.execute(query)
    myresult = mycursor.fetchall()
    table = "<table align=center style=\"width:1\" border=\"2\">\n<tr>\n<th>RFID</th>\n<th>Name</th>\n<th>Date</th>\n</tr>\n"
    for index in range(len(myresult)):
            print("(" + str(myresult[index-1][0]) + ", \"" + myresult[index-1][1].strip() + "\", " + myresult[index-1][2])
    for row in myresult:
        table = table + "<tr>\n<td>" + str(row[0]) + "</td>\n<td>" + row[1].strip() + "</td>\n<td>" + row[2]+ "</td>\n</tr>\n"
    table = table + "</table>"
    return table

@app.route("/")
def home():
    myhtml = '''
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<h1>ATTENDANCE</h1>

''' + getTable() + '''
</body>
</html>

'''
    
    return myhtml

if __name__ == '__main__':
  app.run()

