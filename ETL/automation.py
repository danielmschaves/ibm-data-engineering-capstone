import mysql.connector
import psycopg2

def get_last_rowid():
    # Connect to PostgreSQL
    conn = psycopg2.connect(database="your_db", user="your_user", password="your_pass", host="your_host", port="5432")
    cur = conn.cursor()

    cur.execute("SELECT MAX(rowid) FROM sales_data")
    last_rowid = cur.fetchone()[0]

    cur.close()
    conn.close()

    return last_rowid

def get_latest_records(last_rowid):
    # Connect to MySQL
    conn = mysql.connector.connect(user='your_user', password='your_pass', host='your_host', database='sales')
    cur = conn.cursor()

    cur.execute(f"SELECT * FROM sales_data WHERE rowid > {last_rowid}")
    records = cur.fetchall()

    cur.close()
    conn.close()

    return records

def insert_records(records):
    # Connect to PostgreSQL
    conn = psycopg2.connect(database="your_db", user="your_user", password="your_pass", host="your_host", port="5432")
    cur = conn.cursor()

    for record in records:
        cur.execute("INSERT INTO sales_data (rowid, product_id, customer_id, price, quantity, timestamp) VALUES (%s, %s, %s, %s, %s, %s)", record)

    conn.commit()
    cur.close()
    conn.close()

if __name__ == "__main__":
    last_rowid = get_last_rowid()
    new_records = get_latest_records(last_rowid)
    insert_records(new_records)
    print("Data synchronization complete!")
