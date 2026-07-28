<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Restaurant Billing System</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI;
}

body{

background:#f4f6f9;

}

.header{

background:#1E3A5F;

color:white;

padding:25px;

text-align:center;

font-size:34px;

font-weight:bold;

letter-spacing:1px;

}

.sub{

text-align:center;

margin-top:10px;

font-size:18px;

color:#555;

}

.container{

width:500px;

margin:60px auto;

background:white;

padding:40px;

border-radius:12px;

box-shadow:0px 0px 20px rgba(0,0,0,.2);

text-align:center;

}

.btn{

display:block;

margin:20px auto;

padding:15px;

width:280px;

background:#28a745;

color:white;

text-decoration:none;

font-size:18px;

border-radius:8px;

transition:.3s;

}

.btn:hover{

background:#1f7f35;

transform:scale(1.03);

}

.footer{

margin-top:30px;

text-align:center;

color:gray;

}

</style>

</head>

<body>

<div class="header">

🍽 Restaurant Billing System

</div>

<div class="sub">

Fast • Accurate • Professional Restaurant Billing

</div>

<div class="container">

<h2>Welcome</h2>

<br>

<a href="addOrder.jsp" class="btn">

🛒 Create New Order

</a>

<a href="bill.jsp" class="btn">

📄 Sample Invoice

</a>

<a href="about.jsp" class="btn">

ℹ About Project

</a>

</div>

<div class="footer">

Designed using Java, JSP, Servlets & OOP

</div>

</body>

</html>