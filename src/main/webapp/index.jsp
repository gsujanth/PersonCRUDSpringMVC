<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spring 4 MVC - HelloWorld Index Page</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" >
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h2>INDEX PAGE</h2>
				<p>ABC</p>
				<p>
					<a class="btn btn-info" href="#" type="button">View details</a>
					<button type="button" class="btn btn-info">Button</button>
				</p>
			</div>
		</div>
	</div>

	<center>
		<h2>Hello World</h2>
		<h3>
			<a href="hello?name=Sujanth">Click Here</a>
		</h3>
		<h3>
			<a href="ex1?ex1=Sujanth">EX1</a>
			<a href="persons">persons</a>
			<a href="ajs">ajs</a>
		</h3>
	</center>
</body>
</html>
