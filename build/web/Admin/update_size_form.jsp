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

            <%@ page import="java.sql.*"%>
             <%
		try
		{
                    String size_id = request.getParameter("size_id");

                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_size where size_id="+size_id);  
                        while(rs.next()){
			%>

                        <div class="container register-form" style="padding-top: 120px;">
            <div class="form" style="background-color: white">
                <div style="background-color: black;height: 40px">
                    <h2> <center><lable style="color: white;">Update Brand</lable></center></h2>
                </div>

                <div class="form-content" style="padding-top: 10px">
                    
                        
                             <center><form method="post" action="update_sizes.jsp">
                            <div class="form-group">
                                <h3>Size ID</h3>
                                <input type="text" class="form-control"style="width: 50%" name="size_id" placeholder="Size ID" value="<%=rs.getString("size_id") %>" readonly="" />
                            </div>
                            <div class="form-group">
                                <h3>Size</h3>
                                <input type="text" class="form-control" style="width: 50%" name="size" placeholder="Size" value="<%=rs.getString("size") %>" required=""/>
                            </div>
                            <div class="form-group">
                                <h3>Current status = <b><i><%=rs.getString("status") %></i></b> </h3>
                                <select  class="form-control" style="width: 50%" name="status" placeholder="Status" value="" required="">
                                <option>A</option><option>D</option></select>
                            </div>
                            
                   
                    <br>
                    <center><button type="submit" class="btnSubmit" style="background-color: black;color: white" value="submit" name="">Update</button></center></form>
               </form></center>
                </div>
            </div>
</div>
                        
                        <%
		  	
		}}
		catch(Exception e)
                {
			out.println(e);
                }
	%>

        </div>
</body>
</html>