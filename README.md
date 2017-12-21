1.install python3.4.X

2.install MySQL
 https://dev.mysql.com/downloads/mysql/

3.install heidisql
 https://www.heidisql.com/download.php

4.打開cmd 打
pip install django
pip install django-bootstrap3
pip install Pillow

 5.打開heidisql
 新建(隨便名稱) 密碼看你有沒有設 沒有的話就直接 打開

6.加載
文件->加載SQL文件->選擇專案資料夾裡面的SQL->initial.sql->按藍色的播放(叉叉旁)

7.直接打開 cmd 到專案資料夾 ($ cd ...) 打
python manage.py runserver

如果有connector問題 在cmd打
pip install mysql-connector-python --allow-external mysql-connector-python

如果你MYSQL有設密碼->用Atom打開專案 進去InternetBookstore->settings 更改Database裡面
的PASSWORD為你MySQL的密碼

8.打開瀏覽器 打 127.0.0.1:8000/admin
帳:admin
密:adminadmin

9.Add Book

10.匯出SQL
打開heidisql->按我們的資料庫(internetbookstore)右鍵->匯出資料腳本(SQL資料夾裡有圖)->
覆蓋我們initial.sql檔->匯出

11.PUSH(push完再群組說一下)
