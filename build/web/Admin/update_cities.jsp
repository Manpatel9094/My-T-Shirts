<%-- 
    Document   : update_cities
    Created on : 25 Nov, 2020, 12:06:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*"%>
             <%
		try
		{
                    
                    String city_id = request.getParameter("city_id");
                    String city_name = request.getParameter("city_name");
                    String status = request.getParameter("status");
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        
                        String sql="Update tbl_city set city_name=?,status=? where city_id="+city_id;
                        PreparedStatement ps = con.prepareStatement(sql);
                          
                        ps.setString(1, city_name);
                        ps.setString(2, status);
                       
                        int i= ps.executeUpdate();
                        if(i > 0)
                        {
                                response.sendRedirect("view_cities.jsp");
                         }
                }
                catch(Exception e){
                    out.println(e);
                }
             %>
                        
<html>
<body>
    <form action="view_cities.jsp">

</form>
</body></html>