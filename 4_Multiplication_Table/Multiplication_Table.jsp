<html>
	<head>
		<title>Multiplication JSP</title>
	</head>
	<body>
		<h2><center><%
			int num=Integer.parseInt(request.getParameter("txtMulNum"));
			out.println("<br>===PRINTING MULTIPLICATION TABLE OF "+num+"===");
			multiplication_table(out,num);
			
			%>
			<%!
			void multiplication_table(JspWriter out,int num) throws Exception
			{
				int ans=0;
				for(int i=1;i<=10;i++)
				{
					out.println("<br>"+num+" x "+i+" = "+num*i);
				}
			}
			%></center></h2>
	</body>
</html>