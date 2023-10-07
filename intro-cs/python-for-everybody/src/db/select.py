import sqlite3

db = 'music.sqlite'

conn = sqlite3.connect(db)
cur = conn.cursor()

print('DB')
cur.execute('SELECT * FROM Tracks')
for row in cur:
     print(row)