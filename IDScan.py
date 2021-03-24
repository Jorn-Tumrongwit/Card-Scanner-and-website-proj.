import mysql.connector
import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522
from time import sleep
from RPLCD.i2c import CharLCD
lcd = CharLCD('PCF8574', 0x27)
 
reader = SimpleMFRC522()

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",
    database="attendance"
   )

mycursor = mydb.cursor()
query = "CREATE TABLE IF NOT EXISTS students(RFID TEXT, Name TEXT, Time DATETIME);"
mycursor.execute(query)
try:
    while True:
        print("Scan your card")
        id, text = reader.read()
        lcd.write_string(text)
        sleep(3)
        lcd.clear()
        lcd.cursor_pos = (0,0)
        mycursor.execute("INSERT INTO students VALUES (\"" + str(id) + "\", \"" + text + "\", NOW());")
        mydb.commit()
        mycursor.execute("SELECT RFID, Name FROM students ORDER BY Time DESC LIMIT 5;")
        myresult = mycursor.fetchall()
        mycursor.execute("SELECT DATE_FORMAT(Time, '%Y-%m-%d %T.%f') FROM students ORDER BY Time DESC LIMIT 5;")
        mydate = mycursor.fetchall()
        for index in range(5):
            print("(" + str(myresult[index-1][0]) + ", \"" + myresult[index-1][1].strip() + "\", " + mydate[index-1][0] +")")
finally:
    GPIO.cleanup()