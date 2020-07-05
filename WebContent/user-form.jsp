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
        	<a href="new">Add New Employee</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Employee</a>
        		&nbsp;&nbsp;&nbsp;
        	<a href="list">Search Employee</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${user != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${user != null}">
            			Edit User
            		</c:if>
            		<c:if test="${user == null}">
            			Add New User
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${user != null}">
        			<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        		</c:if>            
            <tr>
                <td> Name </td>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${user.name}' />"
                		/>
                </td>
            </tr>
            
             <tr>
                <td> Gender </td>
                <td>
                	<input type="text" name="gender" size="45"
                			value="<c:out value='${user.gender}' />"
                		/>
                </td>
            </tr>
            
             <tr>
                <td> Designation </td>
                <td>
                	<input type="text" name="desi" size="45"
                			value="<c:out value='${user.desi}' />"
                		/>
                </td>
            </tr>
             <tr>
                <td> Salary </td>
                <td>
                	<input type="text" name="salary" size="45"
                			value="<c:out value='${user.salary}' />"
                		/>
                </td>
            </tr>
            
             <tr>
                <td> City </td>
                <td>
                	<input type="text" name="city" size="45"
                			value="<c:out value='${user.city}' />"
                		/>
                </td>
            </tr>
            
            <tr>
                <th> Email Id </th>
                <td>
                	<input type="text" name="email" size="45"
                			value="<c:out value='${user.email}' />"
                	/>
                </td>
            </tr>
             <tr>
                <td> Mobile </td>
                <td>
                	<input type="text" name="mobile" size="45"
                			value="<c:out value='${user.mobile}' />"
                		/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
      
            </div>	
</body>
</html>
