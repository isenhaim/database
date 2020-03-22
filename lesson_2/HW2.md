1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.

Файл .my.cnf

2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

Файл example.sql

3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

isenhaim@server:~$mysqldump example > example.sql

# Два варианта развертывания
    
    1.  isenhaim@server:~$ mysql
        mysql> CREATE DATABASE sample;
        mysql> USE sample;
        mysql> source example.sql

# При условии что целевая БД уже существует.

    2.  isenhaim@server:~$ mysql sample < example.sql




4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. 
Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

isenhaim@server:~$mysqldump --where='true limit 100' mysql help_keyword > help_keyword.sql
