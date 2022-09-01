<html>
	<head>
		<title>Palindrome JSP</title>
	</head>
	<body>
		<h2><center><%
			out.println("<br>===CHECKING IF NUMBER IS PALINDROME OR NOT===");
			int num=Integer.parseInt(request.getParameter("txtPalindromeNum"));
			int org_num=num;
			int rev=0;
			out.println("<br>Entered Number is: "+num);
			while(num!=0)
			{
				rev=rev*10+num%10;
				num=num/10;
			}
			out.println("<br>Reversed Number is: "+rev);
			if (org_num==rev)
			{
				out.println("<br>It is a Palindrome Number");
			}
			else
			{
				out.println("<br>It is not a Palindrome Number");
			}
			
			
			out.println("<br><br>===PRINTING PALINDROME NUMBERS IN RANGE===");
			int start=Integer.parseInt(request.getParameter("txtStartPalNum"));
			int endrange=Integer.parseInt(request.getParameter("txtEndPalNum"));
			out.println("<br>Palindrome numbers between "+start+" to "+endrange+" is: ");
			for(int i = start; i <= endrange; i++)
			{
				int n1 = i;
				int n2 = 0;
				while(n1!=0)
				{
					int reme = n1 % 10;
					n1 = n1 / 10;
					n2 = n2 * 10 + reme;
				}
				if(i == n2)
				{
					out.print(i+ " ");
				}
			}
			
			
			out.println("<br><br>===PALINDROME STRING CHECK===");
			String s=request.getParameter("txtStringPal");
			out.println("<br>Entered String is: "+s);
			String org_s=s;
			String revs="";
			int len=s.length();
			for (int i=len-1;i>=0;i--)
			{
				revs=revs+s.charAt(i);
			}
			System.out.println(revs);

			if(org_s.equals(revs))
			{
				out.println("<br>It is a Palindrome String.");
			}
			else
			{
				out.println("<br>It is not a Palindrome String.");
			}
		%></center></h2>
	</body>
</html>