<html>
	<head>
		<title>Prime JSP</title>
	</head>
	<body>
		<h2><center>
		<%
			out.println("<br>===CHECKING IF NUMBER IS PRIME OR NOT===");
			int n=Integer.parseInt(request.getParameter("txtPrimeNum"));
			out.println("<br>Entered Number is: "+n);
			check_prime_or_not(out,n);
		%>
		<%!
			void check_prime_or_not(JspWriter out,int n) throws Exception
			{
				int count=0;
				for(int i=1;i<=n;i++)
				{
					if(n%i==0)
					{
						count=count+1;
						//count++;
					}
				}
				if(count==2)
				{
					out.println("<br>"+n+" is a Prime Number");
				}
				else
				{
					out.println("<br>"+n+" it is not a Prime Number");
				}
			}
		%>
		<%
			out.println("<br><br>===PRINTING PRIME NUMBERS IN RANGE===");
			int start=Integer.parseInt(request.getParameter("txtStartPrime"));
			int endrange=Integer.parseInt(request.getParameter("txtEndPrime"));
			out.println("<br>Printing Prime Numbers from "+start+" to "+endrange+" : ");
			print_prime_range(out,start,endrange);
		%>
		<%!
			void print_prime_range(JspWriter out,int start,int endrange) throws Exception
			{
				int flag=0;
				int i,j;
				for(i=start;i<=endrange;i++)
				{
					for(j=2;j<i;j++)
					{
						if(i%j==0)
						{
							flag=1;
							break;
						}
						else
						{
							flag=0;
						}
					}
					if(flag==0)
					{
							out.println(i);
					}
					
				}
			}
		%>
		</center></h2>
	</body>
</html>