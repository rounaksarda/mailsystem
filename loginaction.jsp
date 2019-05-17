<%@ page import="java.sql.*"%>

<%
try{
	Connection con;
	Statement stat;
	ResultSet rs;

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

con=DriverManager.getConnection("jdbc:ucanaccess://C:/Users/ROUNAK SARDA/Documents/mailsystem.accdb");
stat=con.createStatement();
rs=stat.executeQuery("SELECT emailid,password,admin FROM account where emailid='"+request.getParameter("emailid")+"'");

rs.next();
//String pass=request.getParameter("password");
//String passsql=rs.getString("password");
//out.print(pass);
//out.print(passsql);
if(rs.getString("password").equals(request.getParameter("password")))
{
//out.println("hello");
//out.print(" "+rs.getString("emailid")+"  "+rs.getString("password"));
session.setAttribute("user",request.getParameter("emailid")); 
	if(rs.getString("admin").equalsIgnoreCase("y"))
	{
	response.sendRedirect("admin/adminhome.html");
	}
	else
	{
	response.sendRedirect("home.html");
	}
}
else
{
response.sendRedirect("index.html");
}

}
catch(Exception e)
{

}



%>

