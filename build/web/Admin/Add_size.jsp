<%@page import="java.sql.*,java.util.*"%>
<%
String size_name=request.getParameter("size_name");
String status=request.getParameter("status");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into tbl_size(size,status)values('"+size_name+"','"+status+"')");
if(i>0)
{
    response.sendRedirect("view_sizes.jsp");
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>