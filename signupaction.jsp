<%@ page import="java.sql.*" %>
<%
//String message;//=request.getParameter('message');
try
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	String s=request.getParameter("gen");
	
	con=DriverManager.getConnection("jdbc:ucanaccess://C:/Users/ROUNAK SARDA/Documents/mailsystem.accdb");
	
	ps=con.prepareStatement("INSERT INTO account (first_name,last_name,emailid,password,mobile,gender) VALUES('"+request.getParameter("firstname")+"','"+request.getParameter("lastname")+"','"+request.getParameter("emailid")+"','"+request.getParameter("password")+"','"+request.getParameter("mobilenumber")+"','"+s+"')");
	ps.executeUpdate();
	
	con.close();
	ps.close();
	response.sendRedirect("index.html");
}
catch(Exception e)
{
	out.print("<script language=\"javascript\">alert(\"Email Id Already Exist\")</script>");
	//response.sendRedirect("signup.html");
}

%>