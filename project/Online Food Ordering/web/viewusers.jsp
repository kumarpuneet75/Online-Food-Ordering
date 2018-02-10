<%@include file="adminheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
    function abc()
    {
    document.form[0].submit();
}
    </script>
<td width="900">
<form name="form3" method="post" action="viewusers.jsp">
<table align="center"width="700">
    <tr height="40">
        <td colspan="4" align="center" >
    <input type="radio" name="r1" value="name" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >Customer NAme
        </td>
        <td colspan="4" align="center">
         <input type="radio" name="r1" value="email" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("email")?" checked ":"")%> onclick="abc()">Email
        </td>
    </tr>
    <tr>
        <td colspan="8" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Go">
        </td>
    </tr>
    <tr>
        <th width="100" align="left">
          Customer id  
        </th>
        <th width="100" align="left">
            Customer name
        </th>
        <th width="100" align="left">
            Email
        </th>
        <th width="100" align="left">
            Password
        </th>
        <th width="200" align="left">
            Phone no
        </th>
        <th width="100" align="left">
            Gender
        </th>
        <th width="100" align="left">
            Address
        </th>   
        <th width="100" align="left">
            Active/Inactive
        </th>   
     </tr>
    <%
        ResultSet rss;
        
        int i=0;
        if(request.getParameter("t1")==null)
        rss=DBR.DBlayer.getResult("Select * from customer");
        else
            rss=DBR.DBlayer.getResult("select * from customer where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%'");
        while(rss.next())
        {
        out.print("<tr><td>"+rss.getString(1)+"</td><td>"+rss.getString(2)+"</td><td>"+rss.getString(3)+"</td><td>"+rss.getString(4)+"</td><td>"+rss.getString(5)+"</td><td>"+rss.getString(6)+"</td><td>"+rss.getString(7)+"</td><td><input type=checkbox disabled "+(rss.getString(7).equals("8")?"checked":"") +"></td><</tr>");
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

        </td>
    </tr>
</table>
