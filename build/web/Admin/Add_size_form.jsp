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
             <a href="view_sizes.jsp"><button style="height: 35px;" class="btn btn-default btn-xs btn-filter"><i class="fa fa-tasks"></i>&nbsp;View Sizes</button></a>&nbsp;&nbsp;
                </div>
 
                        <div class="container register-form" style="padding-top: 120px;">
            <div class="form" style="background-color: white">
                
                <div style="background-color: black;height: 40px">
                    <h2> <center><lable style="color: white;">Add Size</lable></center></h2>
                    
                </div>

                <div class="form-content" style="padding-top: 10px">
                    
                        
                    <center><form method="post" action="Add_size.jsp">
                            
                            <div class="form-group">
                                <h3>Size</h3>
                                <input type="text" class="form-control" style="width: 50%" name="size_name" placeholder="Size" value="" required=""/>
                            </div>
                            <div class="form-group">
                                <h3>Status</h3>
                                <select  class="form-control" style="width: 50%" name="status" placeholder="Status" value="" required="">
                                <option>A</option><option>D</option></select>
                            </div>
                            
                   
                    <br>
                    <center><button type="submit" class="btnSubmit" style="background-color: black;color: white" value="submit" name="">Add</button></center></form>
               </form></center>
                </div>
                
            </div>
</div>
                    
                       

        </div>
</body>
</html>
