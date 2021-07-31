<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Admin Dashboard</title>
    </head>
    <body>
        <jsp:include page="../style.jsp" /> 
              <jsp:include page="menu.jsp" /> 
        <div class="w3-main" style="margin-left:300px;">
    

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

 
    
	 <div class="pull-right" style="padding-top: 100px;padding-right: 125px">
             <a href="#"><button style="height: 35px;" class="btn btn-default btn-xs btn-filter"><i class="fa fa-tasks"></i>&nbsp;View Products</button></a>&nbsp;&nbsp;
                </div>
 
                        <div class="container register-form" style="padding-top: 120px;">
            <div class="form" style="background-color: white">
                
                <div style="background-color: black;height: 40px">
                    <h2> <center><lable style="color: white;">Add Product</lable></center></h2>
                    
                </div>
                 <div class="form-content">
                    <form action="Add_product.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="prod_name" placeholder="Enter product name" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <select type="text" class="form-control" name="cat_name" placeholder="Select Category" value="" required="">
                                <option class="hidden"  selected disabled>Select category</option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select cat_name from tbl_category where status='A'");
                                            
                                        while(rs.next())
                                        {
                                            %><option><% out.println(rs.getString("cat_name")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                            
                            <div class="form-group">
                                <select type="text" class="form-control" name="brand_name" placeholder="City *" value="" required="">
                                <option class="hidden"  selected disabled>Select brand</option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select brand_name from tbl_brand where status='A'");
                                            
                                        while(rs.next())
                                        {
                                            %><option><% out.println(rs.getString("brand_name")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                                
                            <div class="form-group">
                                <select type="text" class="form-control" name="size" placeholder="City *" value="" required="">
                                <option class="hidden"  selected disabled>Select size</option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt=con.createStatement();  
                                            ResultSet rs=stmt.executeQuery("select size from tbl_size where status='A'");
                                            
                                        while(rs.next())
                                        {
                                            %><option><% out.println(rs.getString("size")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                           
                            <div class="form-group">
                                <input type="file" class="form-control" style="height: 42px" name="image" accept="Product_image/* required">
                            </div>    
                                
                        </div>
                        <div class="col-md-6">
                             <div class="form-group">
                                 <input type="number" class="form-control" name="cost_price" placeholder="Enter cost price" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control" name="sell_price" placeholder="Enter sell price" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <textarea type="text" class="form-control" name="description" placeholder="About product"  rows="4" value="" required=""></textarea>
                            </div>
                             
                        </div>
                    </div><br>
                    <center><button type="submit" class="btnSubmit" style="background-color: black;color: white" value="submit" name="">Add</button></center>
                    </form>
                </div>
                
            </div>
</div>
                    
                       

        </div>
</body>
</html>
