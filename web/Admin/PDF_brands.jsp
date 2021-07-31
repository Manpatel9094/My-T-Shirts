<html>
<head>
    <title>Convert Table to PDF</title>
    <style>
        table
        {
            width: 300px;
            font: 17px Calibri;
        }
        table, th, td 
        {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="tab">
        <%@ page import="java.sql.*"%>
             <%
		try
		{
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_brand");  
                        
			%>
                        <table  class="table table-bordered table-responsive-md table-striped">
                <thead>
                    <tr class="filters" style="background-color: lightgray">
                        <th><input type="text" class="form-control"  placeholder="#" disabled></th>
                        <th><input type="text" class="form-control"  placeholder="Brand Name" disabled></th>
                        <th><input type="text" class="form-control"  placeholder="Status" disabled></th>
                </thead>
                        <%
		  	while(rs.next())
		  	{
		  		
		  		
					out.println("<tr>"
							+"<td>" + rs.getString("brand_id") + "</td>"
							+"<td>" + rs.getString("brand_name") +"</td>"
							+"<td>" + rs.getString("status") + "</td>"
                                                        +"</tr>");
			
		  	}
		  	
		 	out.print("</table>");
		  	out.println("</body></html>");
		}
		catch(Exception e)
                {
			out.println(e);
                }
	%>
    </div>

    <p>
        <input style="width:30%;height: 5%" type="button" value="Genrate PDF" 
            id="btPrint" onclick="createPDF()" />
    </p>
</body>
<script>
    function createPDF() {
        var sTable = document.getElementById('tab').innerHTML;

        var style = "<style>";
        style = style + "table {width: 100%;font: 17px Calibri;}";
        style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
        style = style + "padding: 2px 3px;text-align: center;}";
        style = style + "</style>";

        // CREATE A WINDOW OBJECT.
        var win = window.open('', '', 'height=700,width=700');

        win.document.write('<html><head>');
        win.document.write('<title>Profile</title>');   // <title> FOR PDF HEADER.
        win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
        win.document.write('</head>');
        win.document.write('<body>');
        win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
        win.document.write('</body></html>');

        win.document.close(); 	// CLOSE THE CURRENT WINDOW.

        win.print();    // PRINT THE CONTENTS.
    }
</script>
</html>