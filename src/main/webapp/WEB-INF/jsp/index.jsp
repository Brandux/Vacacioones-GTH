<%-- 
    Document   : index
    Created on : 02/07/2017, 03:40:49 AM
    Author     : Brandukosky
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:. Brandux .:</title>
        
        <%@include file="../../jspf/head.jspf" %>
      
        
    </head>
    <body>
        <div class="container">

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
                        <a class="navbar-brand" href="#">Project name</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">Static top</a></li>
                            <li><a href="#" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-circle-o" aria-hidden="true"></i></a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>

            <!-- Main component for a primary marketing message or call to action -->
            <div class="jumbotron">
                <h1> INGRESA AL SISTEMA JONAS  - ING SISTEMAS</h1>
                <p>This example is a quick exercise to illustrate how the default, static navbar and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
                <p>
                    <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
                </p>
            </div>

        </div> <!-- /container -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel">Log in</h4>
                    </div> <!-- /.modal-header -->

                    <div class="modal-body">
                      <%--  dan con o sin esto 
                        <form:form action="loguea" method="post"  modelAttribute="user"> --%>
                            <form  action="loguea" method="post"  modelAttribute="user">

                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" name="user" class="form-control" id="user" placeholder="Login">
                                    <label for="uLogin" class="input-group-addon glyphicon glyphicon-user"></label>
                                </div>
                            </div> <!-- /.form-group -->

                            <div class="form-group">
                                <div class="input-group">
                                    <input type="password" name="pass" class="form-control" id="pass" placeholder="Password">
                                    <label for="uPassword" class="input-group-addon glyphicon glyphicon-lock"></label>
                                </div> <!-- /.input-group -->
                            </div> <!-- /.form-group -->                           

                            <div class="modal-footer">
                                <button class="form-control btn btn-primary" id="btnlogin">Ok</button>
                            </div> <!-- /.modal-footer -->
                        </form>
                    </div><!-- /.modal-body -->

                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </body>
</html>
