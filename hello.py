from flask import Flask,render_template,request,redirect,url_for
import pymysql

app = Flask(__name__)
conn=pymysql.connect('localhost','root','','data_web')#connect to database

@app.route('/')
def srikai_food():
    with conn :
        cur = conn.cursor()#ให้ชี้ไปยัง
        cur.execute("select * from reviews")
        rows = cur.fetchall()

        return render_template('index.html',datas=rows)

@app.route('/insert',methods=['POST'])
def insert():
    if request.method=="POST":
        food = request.form['food']#รับค่าจากหน้า post.html
        review = request.form['review']#รับค่าจากหน้า post.html
     
        if food and review != '':
            with conn.cursor() as cursor:
                sql = "INSERT INTO `reviews`( `foodname`, `rev`) VALUES (%s,%s)"
                cursor.execute(sql,(food,review))#insert ข้อมูลไปยังฐานข้อมูล อ้างอิงตามชื่อตัวแปร
                conn.commit()
            return redirect(url_for('srikai_food'))#กลับไปยังหน้าแรก ชื่อฟังก์ชั่น srikai_food
        else:
            return render_template('post.html')

@app.route('/post')
def addpost():
    return render_template('post.html')

#@app.route('/Home')
#def showdata():
    #return render_template('Home.html')


if __name__ == '__main__':
    app.run(debug=True )

