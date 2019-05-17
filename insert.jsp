<%@ page import="java.sql.*" %>
<%
//String message;//=request.getParameter('message');
try
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	
	con=DriverManager.getConnection("jdbc:ucanaccess://C:/Users/ROUNAK SARDA/Documents/MailSystem.accdb");
	String name=(String)session.getAttribute("user");
	ps=con.prepareStatement("INSERT INTO mail (sender,receiver,cc,bcc,subject,message) VALUES('"+name+"','"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"')");
	ps.executeUpdate();
	session.setAttribute("user",name);
response.sendRedirect("sent.jsp");	
con.close();
	ps.close();
	
	
	
}
catch(Exception e)
{
	out.print(e);
}

%>