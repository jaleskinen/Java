<%-- 
    Document   : student
    Created on : Feb 16, 2016, 1:53:25 PM
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
        <title>Student</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class ="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="my_color" style = "text-align: center; text-decoration: underline;">Add new student</h1>
                    <form:form action="/admin/student" method="POST" modelAttribute="student">
                        <form:label path="">Name</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="SName" autofocus="autofocus"></form:input>
                        <form:label path="">Address</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="address" ></form:input><br>
                        <form:label path="">Email</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="email" ></form:input>
                        <form:label path="">Phone</form:label>
                        <form:input type="text" cssClass="form-control" style = "width:350px" path="phone" ></form:input>
                        <input type="submit" class="btn btn-primary" value="Save Student"/>
                    </form:form><br>
                    <p>${save_info}</p>
                </div>
                <div class="col-md-6">
                    <h1 class="my_color" style = "text-align: center; text-decoration: underline;">Students</h1>
                    <div class="table_container">
                        <table class="table table-hover table-bordered ">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Address</th>                                    
                                    <th>Email</th>
                                    <th>Phone</th>
                                </tr>                    
                            </thead>
                            <tbody>
                                <c:forEach var ="stud" items="${students}">
                                    <tr>
                                        <td>${stud.getSName()}</td>
                                        <td>${stud.getAddress()}</td>                                        
                                        <td>${stud.getEmail()}</td>
                                        <td>${stud.getPhone()}</td>
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