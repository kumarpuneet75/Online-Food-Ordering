<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
    <head>
<style>
.button4 {
    background-color: green;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}
.button3 {
    background-color: red;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    cursor: pointer;
}

</style>
</head>


<script language="javascript">
    function abc()
    {
    document.form[0].submit();
}
    </script>
<form name="form3" method="post" action="viewres.jsp">
    <td>
 <table  align="center"width="700">
    <tr height="40">
        <td  align="center" >
     <input type="radio" name="r1" value="name" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >Restaurent name
        </td>
        <td  align="center" >
     <input type="radio" name="r1" value="address" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("address")?" checked ":"")  %> onclick="abc()" >Address
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Search">
        </td>
    </tr>
    <%
        ResultSet rss;
        if(request.getParameter("t1")==null)
        rss=DBR.DBlayer.getResult("Select * from restaurant where active='"+1+"'");
        else
            rss=DBR.DBlayer.getResult("select * from restaurant where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%' and active='"+1+"'");
        
        while(rss.next())
        {
            out.print("<td><h2>"+rss.getString(2)+"</h2>"+rss.getString(6)+"<br>Email:"+rss.getString(3)+"<br>Phone No:"+rss.getString(5)+"<hr></td><td><a  class='button4' href=sessionres.jsp?id='"+rss.getString(1)+"'>View Menu</a><br><a  class='button3' href=sessionrestaurant.jsp?rid="+rss.getString(1)+">Give Feedback</a></td></tr>");
        }
        
        %>
    
</table>
</form>
    </td>
    </tr>
    </table>
    </body>
    </html>
    