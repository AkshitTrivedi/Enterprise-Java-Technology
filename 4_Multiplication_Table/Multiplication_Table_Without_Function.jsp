<html>
	<head>
		<title>Multiplication JSP</title>
	</head>
	<body>
		<h2><center><%
			int num=Integer.parseInt(request.getParameter("txtMulNum"));
			out.println("<br>===PRINTING MULTIPLICATION TABLE OF "+num+"===");
			int ans=0;
			for(int i=1;i<=10;i++)
			{
				out.println("<br>"+num+" * "+i+" = "+num*i);
			}
		%></center></h2>
	</body>
</html>