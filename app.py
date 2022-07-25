import psycopg2
from flask import Flask, request, redirect, url_for, render_template, session, send_from_directory, send_file, flash, abort, make_response
import decimal
import itertools 

app = Flask(__name__)
try:
    db = psycopg2.connect(host = "localhost", database="store", user = "postgres", password = "12345")
except:
    print("not connected")

cur = db.cursor()
cur.execute("SELECT *  from customer")
rows = cur.fetchall()
  
@app.route('/',methods=['GET'])
def homepage():
    return render_template('homepage.html')

@app.route('/seller', methods=['POST','GET'])
def seller():
    if request.method == 'GET':
        cur1=cur
        cur1.execute("SELECT * from product")
        row = cur1.fetchall() 
        return render_template('seller.html')

    if request.method == 'POST':
        if request.form['action'] == 'Show':
            cur1 = cur
            cur1.execute("SELECT * from product")
            row = cur1.fetchall() 
            return render_template('seller.html', df = row)
        
        if request.form['action'] == 'Add':
            cur1=cur
            ProductRate = request.form['ProductRate']
            SellingRate = request.form['SellingRate']
            BatchNumber = request.form['BatchNumber']
            Quantity = request.form['Quantity']
            ProductName = request.form['ProductName']
            ProductId = request.form['ProductId']
            cur1.execute('ROLLBACK')
            cur1.execute("INSERT INTO PRODUCT (product_id, prod_name ,product_rate,selling_rate,batch_no,quantity) VALUES (%s, %s, %s, %s, %s, %s)",(ProductId, ProductName, ProductRate, SellingRate,BatchNumber,Quantity))
            db.commit()

            cur2 = db.cursor()
            cur2.execute("SELECT * from product where product_id = %s", (ProductId,))
            row = cur2.fetchall() 
            cur2.close()
            return render_template('seller.html', df = row)
        

        if request.form['action'] == 'Delete':
            # add the values to table
            cur1=cur
            ProductRate = request.form['ProductRate']
            SellingRate = request.form['SellingRate']
            BatchNumber = request.form['BatchNumber']
            Quantity = request.form['Quantity']
            ProductName = request.form['ProductName']
            ProductId = request.form['ProductId']
            cur1.execute('ROLLBACK')
            cur1.execute("DELETE FROM PRODUCT WHERE product_id=%s",(ProductId,))
            db.commit()

            cur2 = db.cursor()
            cur2.execute("SELECT * from product where product_id = %s", (ProductId,))
            row = cur2.fetchall()
            cur2.close()
            return render_template('seller.html', df = row)

        if request.form['action'] == 'Update': # its update
            # its update
            ProductRate = request.form['ProductRate']
            SellingRate = request.form['SellingRate']
            BatchNumber = request.form['BatchNumber']
            Quantity = request.form['Quantity']
            ProductName = request.form['ProductName']
            ProductId = request.form['ProductId']
            cur.execute('ROLLBACK')
            cur.execute("UPDATE PRODUCT SET quantity=%s, product_rate=%s, selling_rate=%s where product_id=%s",(Quantity, ProductRate,SellingRate,ProductId))
            db.commit()

            cur2 = db.cursor()
            cur2.execute("SELECT * from product where product_id = %s", (ProductId,))
            row = cur2.fetchall() 
            cur2.close()
            return render_template('seller.html')
        """
        #if request.method == "POST":

        """
@app.route('/inventory', methods=['POST','GET'])
def inventory():
    if request.method == 'GET':
        cur1=cur
        cur1.execute("SELECT * from product")
        row = cur1.fetchall() 
        return render_template('inventory.html', df = row)

    if request.method == 'POST':
        if request.form['action'] == 'Show':
            cur1 = cur
            cur1.execute("SELECT * from product")
            row = cur1.fetchall() 
            return render_template('inventory.html', df = row)

if __name__=="__main__":
    app.run(debug=True)
    