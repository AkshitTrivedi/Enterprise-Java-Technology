<html>
	<head>
		<title>Diamond Pyramid JSP</title>
	</head>
	<body>
		<h2><center><%
			int n=Integer.parseInt(request.getParameter("txtDiamondNum"));
			out.println("<br>===PRINTING DIAMOND PYRAMID FOR "+n+" ROWS===<br>");
			diamond_pyramid(out,n);
			%>
			<%!
			void diamond_pyramid(JspWriter out,int n) throws Exception
			{
				int i, j, space = 1;
				space = n - 1;
				for (j = 1; j <= n; j++) 
				{
					for (i = 1; i <= space; i++) 
					{
						out.print(" ");
					}
					space--;
					for (i = 1; i <= 2 * j - 1; i++) 
					{
						out.print("*");                
					}
					out.println("<br>");
				}
				space = 1;
				for (j = 1; j <= n - 1; j++) 
				{
					for (i = 1; i <= space; i++) 
					{
						out.print(" ");
					}
					space++;
					for (i = 1; i <= 2 * (n - j) - 1; i++) 
					{
						out.print("*");
					}
					out.println("<br>");
				}
			}
		%></center></h2>
	</body>
</html>
