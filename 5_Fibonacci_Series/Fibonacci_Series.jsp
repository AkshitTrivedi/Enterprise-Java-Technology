<html>
	<head>
		<title>Fibonacci Series JSP</title>
	</head>
	<body>
		<h2><center><%
			int num=Integer.parseInt(request.getParameter("txtFiboNum"));
			out.println("<br>===PRINTING FIBONACCI SERIES UPTO "+num+" NUMBERS===<br>");
			fibo_series(out,num);
			%>
			<%!
			void fibo_series(JspWriter out,int num) throws Exception
			{
				int n1=0,n2=1,sum=0;
				out.println(n1+" "+n2);
				for(int i=2;i<=num;i++)
				{
					sum=n1+n2;
					out.println(" "+sum);
					n1=n2;
					n2=sum;
				}
			}
		%></center></h2>
	</body>
</html>