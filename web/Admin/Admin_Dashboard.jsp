<%
String user=(String)session.getAttribute("user");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        
    </head>
    <body>
        
        <jsp:include page="menu.jsp" /> 
        <div class="w3-main" style="margin-left:300px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
      <div class="w3-quarter" ><br>
      <div class="w3-container w3-red w3-padding-16" >
        <div class="w3-left"><i class="fa fa-bank w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select count(city_id) as total from tbl_city where status='A'");
                                            
                                        while(rs.next())
                                        {
                                             out.println(rs.getString("total"));
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Cities</h4>
      </div>
    </div>
        <div class="w3-quarter" ><br>
            <div class="w3-container w3-purple w3-padding-16">
        <div class="w3-left"><i class="fa fa-tasks w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select count(cat_id) as total from tbl_category where status='A'");
                                            
                                        while(rs.next())
                                        {
                                             out.println(rs.getString("total"));
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Categories</h4>
      </div>
    </div>
        <div class="w3-quarter" ><br>
      <div class="w3-container w3-pink w3-padding-16" >
        <div class="w3-left"><i class="fa fa-tasks w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select count(brand_id) as total from tbl_brand where status='A'");
                                            
                                        while(rs.next())
                                        {
                                             out.println(rs.getString("total"));
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Brands</h4>
      </div>
    </div>
        <div class="w3-quarter"><br>
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-tasks w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select count(product_id) as total from tbl_product where status='A'");
                                            
                                        while(rs.next())
                                        {
                                             out.println(rs.getString("total"));
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Products</h4>
      </div>
    </div>
    <div class="w3-quarter"><br>
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-tasks w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>99</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Orders</h4>
      </div>
    </div>
    
    <div class="w3-quarter"><br>
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select count(user_id) as total from tbl_user where status='A' and role_of_user='Customer'");
                                            
                                        while(rs.next())
                                        {
                                             out.println(rs.getString("total"));
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Users</h4>
      </div>
    </div>

<hr>
  <!-- Footer -->
  <footer class="w3-container w3-padding-16 w3-light-grey">
    
    <p>Powered by Man Patel <i class="fa fa-copyright"></i> 2020</p>
  </footer>

  <!-- End page content -->
</div>
        </div>


    </body>
</html>
