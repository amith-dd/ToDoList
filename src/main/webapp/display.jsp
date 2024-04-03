<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% Dao dao = new Dao();
	List<Task> tasks = dao.getalltasks();%>
	
	<table border="5px">
	
	<% for(Task task : tasks){ %>
	
	<tr>
	<td><%= task.getTaskid()  %></td>
	<td><%= task.getTasktitle() %></td>
	<td><%= task.getTaskdescription() %></td>
	<td><%= task.getTaskpriority() %></td>
	<td><%= task.getTaskduedate() %></td>
	<td><%= task.getTaskstatus() %></td>
	
	
	
	<% } %>
	</tr>
	
	
	</table>
	
	
</body>
</html>