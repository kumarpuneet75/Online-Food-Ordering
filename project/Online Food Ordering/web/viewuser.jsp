<%@include file="adminheader.jsp" %>                    
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>                    
                    
                    
    <div class="center_content">
      <div class="right_content">
    <script language="javascript">
    function abc()
    {
    document.form[0].submit();
}
    </script>

<form name="form3" method="post" action="viewuser.jsp">
<table  align="center" width="500">
    <tr height="40">
        <td align="center" >
    <input type="radio" name="r1" value="name" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >Customer Name
        </td>
        <td  align="center">
         <input type="radio" name="r1" value="email" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("email")?" checked ":"")%> onclick="abc()">Email
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Search">
        </td>
    </tr>
</table>
</form>
        **You can Change User active/inactive status by just clicking on the checkbox.<br>
        * You can permanently delete User from here by just clicking on delete button.
 
        
    <h2>User details </h2> 
                    
                    
<table width="1300" id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th width="37" class="rounded-company" scope="col">ID</th>
            <th width="82" class="rounded" scope="col">Name</th>
            <th width="134" class="rounded" scope="col">Email</th>
            <th width="78" class="rounded" scope="col">Password</th>
            <th width="97" class="rounded" scope="col">Phone</th>
            <th width="75" class="rounded" scope="col">Gender</th>
            <th  class="rounded" scope="col">Address</th>
            <th width="75" class="rounded" scope="col">Active</th>
            <th width="162" class="rounded-q4" scope="col">Delete</th>
        </tr>
    </thead>
        <tfoot>
    	<tr>
        	
    </tfoot>
    <tbody>
            <%
        ResultSet rss;
        if(request.getParameter("t1")==null)
        rss=DBR.DBlayer.getResult("Select * from customer");
        else
            rss=DBR.DBlayer.getResult("select * from customer where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%'");
        while(rss.next())
        {
        out.print("<tr><td>"+rss.getString(1)+"</td><td>"+rss.getString(2)+"</td><td>"+rss.getString(3)+"</td><td>"+rss.getString(4)+"</td><td>"+rss.getString(5)+"</td><td>"+(rss.getString(6).equals("1")?"Male":"Female")+"</td><td>"+rss.getString(7)+"</td><td><a href=changeactive.jsp?id="+rss.getString(1)+" class='ask'><input type=checkbox  "+(rss.getString(8).equals("1")?"checked":"") +"></a></td><td><a href=deleteuser.jsp?id="+rss.getString(1)+" class='ask'><img src='images/trash.png' alt='' title='' border='0' /></a></td></tr>");
               
        }
        
        %>

        
    </tbody>
</table>

	 <h2>&nbsp;</h2>
      
      </div>
      <!-- end of right content-->
            
                    
  </div>   <!--end of center content -->               
                    
                    
    
    
    <div class="clear"></div>
    </div> 
</div>		
</body>
</html>