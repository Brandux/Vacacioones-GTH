<%-- 
    Document   : Detalle
    Created on : 02/07/2017, 09:19:56 PM
    Author     : Brandukosky
--%>

<%@page import="pe.edu.upeu.mavenspring.model.UsuarioDTO"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("Persona") == null) {
        response.sendRedirect("http://localhost:9999/ventasbran/");

    } else {
        UsuarioDTO cli = (UsuarioDTO) session.getAttribute("Persona");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Brandux :.</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="<c:url value='resources/js/jquery-3.2.1.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet" type="text/css"/>
    </head>
    <script type="text/javascript">            
         if (history.forward(1)) {
                  location.replace(history.forward(1));
          }
    </script>
    <script>
        window.oncontextmenu = function() {
        return false;
    };
    </script>

    <body>
       

        <!-- Static navbar -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brandukosky System</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MENU <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Rol">ROL</a></li>
                                <li><a href="usuario">Usuario</a></li>
                                <li><a href="cliente">Cliente</a></li>
                                <li><a href="Producto">Producto</a></li>
                                <li><a href="vende">Venta</a></li>
                                <li><a href="#">Detalle</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span><i class="fa fa-user-circle-o" aria-hidden="true"></i></span> 
                                <strong><%= cli.getNomuser()%></strong>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="navbar-login">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <p class="text-center">
                                                    <span class="glyphicon glyphicon-user icon-size"></span>
                                                </p>
                                            </div>
                                            <div class="col-lg-8">
                                                <p class="text-left">Bienvenido: <strong><%=cli.getNombres()%></strong></p>
                                                <p class="text-left small"><b><%= cli.getIdrol()%></b></p>

                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="navbar-login navbar-login-session">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>
                                                    <a href="cerrar" class="btn btn-danger btn-block" >Cerrar Sesion</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>

        
        
        <div class="container" style="width: 650px;">            
            <div class="row">
                <div class="col-md-12">
                    <div class="pull-right">
                        <a class="btn btn-primary" href="vende" ><i class="fa fa-arrow-left" aria-hidden="true"></i></a >
                    </div>
                    <hr>
                    <h3><i class="fa fa-sitemap" aria-hidden="true" style="color: #cccc00"></i><strong style="margin-left: 5px;">Detalle de Venta</strong></h3>

                </div>
            </div>
            <hr>
             <c:forEach var="ven" items="${lista2}" varStatus="status">
                 
                
                <div class="row">                
                    <div class="col-md-2">
                        Fecha:  
                    </div>
                    <div class="col-md-4">
                        ${ven.fecha}
                    </div>
                    <div class="col-md-2">
                        Vendedor:  
                    </div>
                    <div class="col-md-3">
                        <b>  ${ven.NOM_USER}</b>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-2">
                        Cliente:  
                    </div>
                    <div class="col-md-4">
                        <b>${ven.NOMBRES}  ${ven.APELLIDOS}</b>
                    </div>
                </div>
            </c:forEach> 

            <hr>
            <br><br>
            <table class="table">
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>PRODUCTO</th>
                        <th>PRECIO</th>
                        <th>CANTIDAD</th>
                        <th colspan="2">OPERACION</th>
                    </tr>
                </thead>
                <tbody id="tablita">
                    
                    <c:forEach var="det" items="${lista}" varStatus="status">

                    <tr>
                        <td>${status.index + 1}</td>
                        <td>${det.NOM_PRODUCTO}</td> 
                        <td>${det.precio}</td> 
                        <td>${det.cantidad}</td> 
                        <td>
                        <td>
                            <button class="btn btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                            <button  class="btn btn-danger"><i class="fa fa-times" aria-hidden="true"></i></button>

                        </td> 
                    </tr>
                </c:forEach> 
                </tbody>

            </table>
        </div>
        
        
    </body>
</html>
<%
}
%>