<%-- 
    Document   : second
    Created on : Feb 9, 2016, 1:04:43 PM
    Author     : Ohjelmistokehitys
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
        <title>Teacher</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class ="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="my_color" style = "text-align: center; text-decoration: underline;">Add new teacher</h1>
                    <form:form class='loginForm' action="/admin/teacher" method="POST" modelAttribute="teacher">
                        <form:label path="">Name</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="TName" autofocus="autofocus"></form:input>
                        <form:label path="">Email</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="email" ></form:input>
                        <form:label path="">Phone</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="phone" ></form:input>
                        <form:label path="">Subject</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="TSubject" ></form:input><br>
                        <input type="submit" class="btn btn-primary" value="Save Teacher"/>
                    </form:form><br>
                    <p>${save_info}</p>
                </div>
                <div class="col-md-6">
                    <h1 class="my_color" style = "text-align: center; text-decoration: underline;">Teachers</h1>
                    <div class="table_container">
                        <table class="table table-hover table-bordered ">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Subject</th>
                                </tr>                    
                            </thead>
                            <tbody>
                                <c:forEach var ="teach" items="${teachers}">
                                    <tr>
                                        <td>${teach.getTName()}</td>
                                        <td>${teach.getEmail()}</td>
                                        <td>${teach.getPhone()}</td>
                                        <td>${teach.getTSubject()}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
