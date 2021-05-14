<%@page import="com.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/research.js"></script>

<meta charset="ISO-8859-1">
<title>Order Management</title>
</head>
<body>
<div class="container"><div class="row"><div class="col-6">
<h1>Order Management</h1>

	<form id="formItem" name="formItem">
		
		Order ID:
		<input id="orid" name="orid" type="text" class="form-control form-control-sm"><br>
		Buyer ID :
		<input id="ordescription" name="ordescription" type="text" class="form-control form-control-sm"><br>
		Product ID:
		<input id="orproduct" name="orprduct" type="text" class="form-control form-control-sm"><br>
		Quantity:
		<input id="orqty" name="orqty" type="text" class="form-control form-control-sm"><br>
		Order Date:
		<input id="ordate" name="ordate" type="text" class="form-control form-control-sm"><br>
		
		
		
		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
		<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
	</form>
	
	<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
	<br>
	<div id="divItemGrid">
	<%
	Order orderdObj = new Order(); 
	 out.print(orderdObj.readOrders()); 
	%>
	</div>
</div> </div> </div> 
	
</body>
</html>