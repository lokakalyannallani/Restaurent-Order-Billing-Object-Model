<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>About Project</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI;
}

body{

background:#eef2f7;

}

.header{

background:#1E3A5F;
color:white;
padding:20px;
text-align:center;
font-size:30px;
font-weight:bold;

}

.container{

width:800px;
margin:40px auto;
background:white;
padding:35px;
border-radius:12px;
box-shadow:0px 10px 20px rgba(0,0,0,.2);

}

h2{

color:#1E3A5F;
margin-bottom:20px;

}

p{

font-size:18px;
line-height:30px;

}

ul{

margin-left:25px;
margin-top:15px;

}

li{

font-size:18px;
margin-bottom:10px;

}

button{

margin-top:30px;
padding:12px 25px;
background:#28a745;
color:white;
border:none;
border-radius:8px;
font-size:17px;
cursor:pointer;

}

button:hover{

background:#1f7f35;

}

</style>

</head>

<body>

<div class="header">
🍽 Restaurant Billing System
</div>

<div class="container">

<h2>About This Project</h2>

<p>

This project is developed using Java, JSP, Servlets and Object-Oriented Programming concepts.

It simulates a professional restaurant billing system where customers can place orders, calculate taxes, service charges and generate restaurant invoices.

</p>

<br>

<h2>Project Features</h2>

<ul>

<li>Create Restaurant Orders</li>

<li>Add Food Modifiers</li>

<li>Automatic Tax Calculation</li>

<li>Service Charge Calculation</li>

<li>Split Bill Option</li>

<li>Professional Invoice Generation</li>

<li>Print Restaurant Bill</li>

<li>Exception Handling</li>

<li>Object-Oriented Design</li>

</ul>

<button onclick="location.href='index.jsp'">
← Back to Home
</button>

</div>

</body>
</html>