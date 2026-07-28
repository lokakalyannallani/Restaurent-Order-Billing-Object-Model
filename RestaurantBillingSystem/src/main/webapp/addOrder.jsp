<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Order</title>

<style>

body{
    background:#f2f2f2;
    font-family:Arial, sans-serif;
}

.container{
    width:500px;
    margin:auto;
    margin-top:40px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

input,select{

width:100%;
padding:10px;
margin-top:8px;
margin-bottom:15px;

}

button{

width:100%;
padding:12px;
background:green;
color:white;
border:none;
font-size:18px;

}


*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI;
}

body{

background:linear-gradient(135deg,#EEF2F7,#D8E3F5);

}


.header{

background:#1E3A5F;

color:white;

padding:22px;

text-align:center;

font-size:30px;

font-weight:bold;

}

.container{

width:520px;

margin:45px auto;

background:white;

padding:35px;

border-radius:15px;

box-shadow:0px 10px 25px rgba(0,0,0,.2);

}

h2{

text-align:center;

margin-bottom:25px;

color:#1E3A5F;

}

label{

font-weight:bold;

display:block;

margin-top:18px;

margin-bottom:8px;

}

input,select{

width:100%;

padding:12px;

border-radius:8px;

border:1px solid #ccc;

font-size:15px;

}

input:focus,
select:focus{

outline:none;

border:2px solid #28a745;

}

button{

width:100%;

margin-top:30px;

padding:14px;

background:#28a745;

color:white;

font-size:18px;

border:none;

border-radius:8px;

cursor:pointer;

transition:.3s;

}

button:hover{

background:#1f7f35;

transform:scale(1.02);

}

</style>

</head>

<body>

<div class="header">

🍽 Restaurant Billing System

</div>

<div class="container">

<h2>🍔 Create New Order</h2>

<form action="OrderServlet" method="post">

<label>Customer Name</label>

<input
type="text"
name="customerName"
placeholder="Enter Customer Name"
required>

<label>Food Item</label>

<input
type="text"
name="foodItem"
placeholder="Enter Food Item"
required>

<label>Price</label>

<input
type="number"
name="price"
placeholder="Enter Price"
min="1"
required>

<label>Quantity</label>

<input
type="number"
name="quantity"
value="1"
min="1"
required>

<label>Modifier</label>

<select name="modifier">

<option>None</option>

<option>Extra Cheese (+50)</option>

<option>Extra Sauce (+20)</option>

</select>

<br><br>

<label>Split Bill</label>

<select name="splitType">

<option>None</option>

<option>Even Split</option>

<option>By Item</option>

</select>

<br><br>

<label>Number of Persons</label>

<input
type="number"
name="persons"
value="1"
min="1"
required>

<button type="submit">Add Item</button>

</form>

</div>

</body>

</html>