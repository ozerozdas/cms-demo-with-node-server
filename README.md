# CMS Demo with NodeJS Server

Hello, I created this project for NodeJs api with Laravel.<br />
You can use these installation steps.

## Installation
Create a <b>.env</b> file in the customer-management-server folder. 

    APP_PORT=3000
    DB_PORT=
    DB_HOST=
    DB_USER=
    DB_PASSWORD=
    MYSQL_DB=

I prepared sql file for quick table create and dummy data. You can import <b>customer.sql</b> to your database.<br />

You must run <b>npm install</b> in the customer-management-server folder.<br />
```
    $ cd customer-management-server && npm install
```
For run NodeJs server:
```
    $ npm start
```
Now, you can run composer update for Laravel project. <br />
```
    $ cd customer-management-app && composer update
```
For run Laravel PHP server:
```
    $ php artisan serve
```

## Note
I used 3000 port for NodeJs server, don't change this! <br />
API Link: https://127.0.0.1:3000/api
