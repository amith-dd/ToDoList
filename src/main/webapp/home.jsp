<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
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

	<%@ include file="template.jsp" %>
			<!-- get user from session -->
		<% User user = (User)request.getSession().getAttribute("user");%>
		<% String username = user.getUsername(); %>
		
		<h2>Welcome <%= username %></h2>
		<h4>Email: <%= user.getUseremail() %></h4>
		
		<% String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
		<img alt="" src="data:image/jpeg;base64,<%= image %>" width="150" height="100">
		
		<a href="addtask.jsp">Add Task</a><br>
		
		<h3>Tasks</h3><br>
		
		<% List<Task> tasks = (List)request.getAttribute("tasks"); %>
		
		<table border="5px">
		<tr border="5px">
		<th>id</th>
		<th>title</th>
		<th>description</th>
		<th>priority</th>
		<th>due date</th>
		<th>status</th>
		</tr>
		
		<% for(Task task :tasks){ %>
		
		<tr border="5px">
		<td><%= task.getTaskid() %></td>
		<td><%= task.getTasktitle() %></td>
		<td><%= task.getTaskdescription() %></td>
		<td><%= task.getTaskpriority()%></td>
		<td><%= task.getTaskduedate() %></td>
		<td><%= task.getTaskstatus() %></td>
		</tr>
		
		<% } %>
		
		</table>
		
		
		
		
		
		
		
</body>
</html>