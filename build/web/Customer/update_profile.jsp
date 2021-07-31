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
		{       String id=request.getParameter("id");
                        String f_name=request.getParameter("f_name");
                        String l_name=request.getParameter("l_name");
                        String add=request.getParameter("add");
                        String city=request.getParameter("city");
                        String c_number=request.getParameter("c_number");
                        //String email=request.getParameter("email");

              
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        
                        String sql="Update tbl_user set f_name='"+f_name+"',l_name='"+l_name+"',address='"+add+"',city_name='"+city+"',contact_no='"+c_number+"' where user_id="+id;
                        PreparedStatement ps = con.prepareStatement(sql);
                          
//                        ps.setString(1, f_name);
//                        ps.setString(2, l_name);
//                        ps.setString(3, add);
//                        ps.setString(4, city);
//                        ps.setString(5, c_number);
//                        ps.setString(6, email);
//                       
                        int i= ps.executeUpdate();
                        if(i > 0)
                        {
                                response.sendRedirect("Profile.jsp");
                         }
                }
                catch(Exception e){
                    out.println(e);
                }
             %>
                        
<html>
<body>
    <form action="View_product.jsp">

</form>
</body></html>