<html>
	<head>
		<title>Factorial JSP</title>
	</head>
	<body>
		<%
			long num=Integer.parseInt(request.getParameter("txtFactNum"));
		%>
		
		<%!
			/*long fact(long n)
			{
				long sum=1;
				for (long i=1;i<=n;i++)
				{
					sum=sum*i;
				}
				return sum;
			}*/
			long fact(long n)
			{
				if(n==1)
					{
						return n;
					}
					else
					{
						return n * fact(n-1);
					}
			}
		%>
		
		<center><%
			/*out.println("Comment Test");*/
			out.println("<h1>"+"The Factorial of "+num+" is: "+"<u>"+fact(num)+"</u>"+"</h1>");
		%></center>
	</body>
</html>