<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Nuevo/Modificar Contacto</h1>
        <form:form action="saveContact" method="post" modelAttribute="contact">
            <form:hidden path="id"/>
            <div class="form-group">
                    <label>Nombres:</label>
                    <form:input path="name" class="form-control"/>
            </div>
            <div class="form-group">
                    <label>Email:</label>
                    <form:input path="email" class="form-control"/>
            </div>
            <div class="form-group">
                    <label>Dirección:</label>
                    <form:input path="address" class="form-control"/>
            </div>
            <div class="form-group">
                    <label>Telephone:</label>
                    <form:input path="telephone" class="form-control"/>
            </div>
            <div class="form-group">
                    <input type="submit" value="Save" class="btn btn-primary">
            </div>
        </form:form>
    </div>
</body>
</html>