<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Employee Management Application</title>
</head>
<body>
	<center>
		<h1>Employee Management</h1>
        <h2>
        	<a href="new">Add New User</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Users</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                 <th>Gender</th>
                  <th>Designation</th>
                   <th>Salary</th>
                    <th>City</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                     <td><c:out value="${user.gender}" /></td>
                      <td><c:out value="${user.desi}" /></td>
                       <td><c:out value="${user.salary}" /></td>
                        <td><c:out value="${user.city}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.mobile}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${user.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
