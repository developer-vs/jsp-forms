<!DOCTYPE html>
<html>
<head>
	<title>Student Confirmation</title>
</head>
<body>
	<h3>Student Confirmation</h3>
	<p>The student is confirmed: <%= request.getParameter("firstName") %>, ${param.lastName}.</p>
	<p>The student's country: ${param.country}.</p>
	<p>The student's programming experience: ${param.programmingExperience}.</p>
	<!-- display list of favorite programming language -->
	<p>The student's favorite programming languages:</p>
	<ul>
		<% 			
			String[] langs = request.getParameterValues("programmingLanguage") ;
			if (langs != null) {
				for (String tempLang : langs) {
					out.println("<li>" + tempLang + "</li>");
				}
			}
		%>
	</ul>
	
</body>
</html>
