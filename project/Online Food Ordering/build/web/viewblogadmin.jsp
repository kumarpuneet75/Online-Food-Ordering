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

<form name="form3" method="post" action="viewblogadmin.jsp">
<table  align="center" width="500">
    <tr height="40">
        <td align="center" >
    <input type="radio" name="r1" value="title" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >title
        </td>
        
    </tr>
    <tr>
        <td colspan="2" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Search">
        </td>
    </tr>
</table>
</form>
        **You can Change User's blog active/inactive status by just clicking on the checkbox.<br>
        * You can permanently delete User from here by just clicking on delete button.
 
        
    <h2>Blog details </h2> 
                    
                    
<table width="1300" id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th width="37" class="rounded-company" scope="col">ID</th>
            <th width="82" class="rounded" scope="col">Title</th>
            <th width="134" class="rounded" scope="col">Description</th>
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
        rss=DBR.DBlayer.getResult("Select * from blog");
        else
            rss=DBR.DBlayer.getResult("select * from blog where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%'");
        while(rss.next())
        {
        out.print("<tr><td>"+rss.getString(1)+"</td><td>"+rss.getString(2)+"</td><td>"+rss.getString(3)+"</td><td><a href=changeactiveblog.jsp?id="+rss.getString(1)+" class='ask'><input type=checkbox  "+(rss.getString(5).equals("1")?"checked":"") +"></a></td><td><a href=deleteadminblog.jsp?id="+rss.getString(1)+" class='ask'><img src='images/trash.png' alt='' title='' border='0' /></a></td></tr>");
               
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