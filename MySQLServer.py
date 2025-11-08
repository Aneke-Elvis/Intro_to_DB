#!/usr/bin/env python3
"""
MySQLServer.py
Creates a database named alx_book_store if it doesn't already exist.
"""

import mysql.connector
from mysql.connector import Error, errorcode

def create_database():
    connection = None
    try:
        # Connect to MySQL server (adjust user/password as needed)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",        # <-- change if your MySQL username differs
            password="Chiboy2025"  # <-- replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
            print("Database 'alx_book_store' created successfully!")
    except mysql.connector.Error as err:
        # 3. Handle connection and execution errors
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Access denied. Check your username and password.")
        else:
            print(f"Failed to connect to the database: {err}")

    finally:
        if connection is not None and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")  # Optional for debugging


if __name__ == "__main__":
    create_database()
