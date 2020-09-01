<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Student Confirmation</title>
<link href="webjars/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container py-4">
		<div class="col">
			<h3>Student Confirmation</h3>
			<p>The student is confirmed: <%= request.getParameter("firstName") %> ${param.lastName}.</p>
			<%
				String country = request.getParameter("country");
				if(country != null) {
					country = country + ".";
				} else {
					country = "not selected.";
				}
			%>
			<p>The student's country: <%= country %></p>
			<%
				String progExp = request.getParameter("programmingExperience");
				if(progExp != null) {
					progExp = progExp + ".";
				} else {
					progExp = "not selected.";
				}
			%>
			<p>The student's programming experience: <%= progExp %></p>
			<% 	
				String[] langs = request.getParameterValues("programmingLanguage");
				String msg = "The student's favorite programming languages:";
				if (langs != null) {
					out.println("<p>" + msg + "</p>");
					out.println("<ul>");
					for (String tempLang : langs) {
						out.println("<li>" + tempLang + "</li>");
					}
					out.println("</ul>");
				} else {
					out.println("<p>" + msg + " not selected.</p>");
				}
			%>
		</div>
	</div>
	<script src="webjars/jquery/3.5.1/jquery.slim.min.js"></script>
	<script src="webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>