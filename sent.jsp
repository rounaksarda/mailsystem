<%@ page import="java.sql.*"%>

<%
	try
	{
	Connection con;
	Statement stat;
	ResultSet rs;

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

con=DriverManager.getConnection("jdbc:ucanaccess://C:/Users/ROUNAK SARDA/Documents/MailSystem.accdb");
stat=con.createStatement();

String name=(String)session.getAttribute("user");

rs=stat.executeQuery("SELECT receiver,subject,message FROM mail where sender='"+name+"'");



out.print("<table border=0><tr><th class=\"button\"><input type=\"button\" value=\"Delete\"></th><th class=\"button\">To</th><th class=\"button\">Subject</th><th class=\"button\">Message</th></tr>");
while(rs.next())
{
out.print("<tr><td  style=\"width: 40px;\"><input type=\"checkbox\"></td><td style=\"width: 250px;\">"+rs.getString("receiver")+"</td><td>"+rs.getString("subject")+"</td><td style=\"width: 850px;\">"+rs.getString("message")+"</td></tr>");
}
out.print("</table>");

}

catch(Exception e)
{


}

%>
<style>
td{
  border-radius: 4px;
  background-color: #ffe6e6;
  border: none;
  color: #000000;
  text-align: center;
  font-size: 16px;
  padding: 10px;

  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  
}

.button {
  border-radius: 4px;
  background-color: #FFFAFA;
  border: none;
  color: #8B0000;
  text-align: center;
  font-size: 14px;
  padding: 10px;
padding-right:0px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  margin-right:0px;
}
</style>