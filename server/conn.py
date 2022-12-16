import mysql.connector
from password import password

try:
    conn = mysql.connector.connect(user='root', password=password,
                            host='127.0.0.1',
                            database='hotel')
except Exception as e:
    print("Conexão falhou")