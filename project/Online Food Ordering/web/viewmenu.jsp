<%@include file="resheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
    function abc()
    {
    document.form[0].submit();
}
    </script>
<form name="form3" method="post" action="viewmenu.jsp">
<table align="center"width="700">
    <tr height="40">
        <td colspan="3" align="center" >
     <input type="radio" name="r1" value="name" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >Item name
        </td>
        <td colspan="2" align="center">
         <input type="radio" name="r1" value="type" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("type")?" checked ":"")%> onclick="abc()">Type
        </td>
    </tr>
    <tr>
        <td colspan="5" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Go">
        </td>
    </tr>
    <tr>
        <th width="100" align="left">
            Item name
        </th>
        <th width="100" align="left">
            Type
        </th>
        <th width="100" align="left">
            Price
        </th>
        <th width="200" align="left">
            Description
        </th>
        <th width="100" align="left">
            Active/Inactive
        </th>   
        
    </tr>
    <%
        ResultSet rss;
        
        int i=0;
        if(request.getParameter("t1")==null)
        rss=DBR.DBlayer.getResult("Select * from menu where resid="+session.getAttribute("rid"));
        else
            rss=DBR.DBlayer.getResult("select * from menu where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%' and resid='"+session.getAttribute("rid")+"'");
        while(rss.next())
        {
        out.print("<tr><td>"+rss.getString(2)+"</td><td>"+rss.getString(3)+"</td><td>"+rss.getString(4)+"</td><td>"+rss.getString(7)+"</td><td><input type=checkbox disabled "+(rss.getString(5).equals("1")?"checked":"") +"></td></tr>");
               i++;
        }
        
        %>
    
</table>
</form>
    </td>
    </tr>
    </table>
    </body>
    </html>
    