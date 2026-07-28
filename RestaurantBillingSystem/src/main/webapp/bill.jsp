<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Restaurant Invoice</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI, Arial, sans-serif;
}

body{
    background:#eef2f7;
}

.header{
    background:#1E3A5F;
    color:white;
    text-align:center;
    padding:22px;
    font-size:30px;
    font-weight:bold;
}

.invoice{
    width:700px;
    margin:40px auto;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0px 10px 25px rgba(0,0,0,.2);
}

h1{
    text-align:center;
    color:#1E3A5F;
    margin-bottom:25px;
}

.invoiceInfo{
    display:flex;
    justify-content:space-between;
    margin-bottom:25px;
    font-size:15px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th,td{
    padding:15px;
    border-bottom:1px solid #ddd;
    text-align:left;
}

th{
    background:#f5f5f5;
    width:40%;
}

.total{
    background:#d4edda;
    color:green;
    font-size:22px;
    font-weight:bold;
}

.buttons{
    margin-top:30px;
    display:flex;
    justify-content:space-between;
}

button{
    padding:14px 28px;
    background:#28a745;
    color:white;
    border:none;
    border-radius:8px;
    font-size:17px;
    cursor:pointer;
    transition:.3s;
}

button:hover{
    background:#1f7f35;
}

a{
    text-decoration:none;
}

</style>

</head>

<body>

<div class="header">
🍽 Restaurant Billing System
</div>

<div class="invoice">

<h1>Restaurant Invoice</h1>

<div class="invoiceInfo">

<p>
<b>Invoice No :</b>
INV-1001
</p>

<p>
<b>Date :</b>
<%= new java.util.Date() %>
</p>

</div>

<table>

<tr>
<th>Customer Name</th>
<td>${customerName}</td>
</tr>

<tr>
<th>Food Item</th>
<td>${foodItem}</td>
</tr>

<tr>
<th>Price</th>
<td>₹ ${price}</td>
</tr>

<tr>
<th>Quantity</th>
<td>${quantity}</td>
</tr>

<tr>
<th>Modifier</th>
<td>${modifier}</td>
</tr>

<tr>
<th>Split Type</th>
<td>${splitType}</td>
</tr>

<tr>
<th>Persons</th>
<td>${persons}</td>
</tr>

<tr>
<th>Subtotal</th>
<td>₹ ${subtotal}</td>
</tr>

<tr>
<th>Tax (5%)</th>
<td>₹ ${tax}</td>
</tr>

<tr>
<th>Service Charge (10%)</th>
<td>₹ ${serviceCharge}</td>
</tr>

<tr class="total">
<th>Grand Total</th>
<td>₹ ${grandTotal}</td>
</tr>

<tr>
<th>Amount Per Person</th>
<td>₹ ${amountPerPerson}</td>
</tr>

</table>

<div class="buttons">

<button onclick="window.print()">
🖨 Print Bill
</button>

<a href="addOrder.jsp">
<button type="button">
➕ New Order
</button>
</a>

</div>

</div>

</body>

</html>