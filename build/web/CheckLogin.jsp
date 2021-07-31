<%-- 
    Document   : CheckLogin
    Created on : 29 Oct, 2020, 7:23:10 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check login</title>
    </head>
    <body>
        
    </body>
</html>
<%@ page import="java.sql.*"%>
<%
    
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        
                    session.setAttribute("user", email);

        if(email.equals("Admin@gmail.com") && (pass.equals("Admin1234"))){
                              
            session.setAttribute("user", email);
            
                response.sendRedirect("Admin/Admin_Dashboard.jsp");
                    
                }
        else{
         
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from tbl_user where email_id = '"+email+"' and password = '"+pass+"';");
            if(rs.next()){
          
%>
<input type="text" name="user_id" value="<% out.println(rs.getString("user_id")); %>">          
<%
                    
                    response.sendRedirect("Customer/Customer_Dashboard.jsp");
       
            }
            else{
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('incorrect')");
                out.println("location='index.jsp'");
                out.println("</script>");
            }
        }
        catch(Exception e){
            out.println(e);
            
        }
        }
        
    
%>
