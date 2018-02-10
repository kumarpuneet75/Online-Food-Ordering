<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<head>
<style>
.button1 {
    background-color: #4CAF50;
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
.button2 {
    background-color: #f44336;
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
<form name="formblog" method="post" action="viewmyblog.jsp">
    <td>
 <table  align="center"width="700">
    <tr height="40">
        <td  align="center" >
     <input type="radio" name="r1" value="title" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("name")?" checked ":"")  %> onclick="abc()" >Title 
        </td>
       
    </tr>
    <tr>
        <td colspan="2" align="center" height="40">
            <input type="text" name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>'><input type="submit" value="Search">
        </td>
    </tr>
    <%
        String s=DBR.DBlayer.getScaler("select count(*) from blog where cusid='"+session.getAttribute("cid")+"'");
        int p=Integer.parseInt(s);
        if(p==0)
        {
            out.print("<td><h2>You have not written any blog</h2></td></tr>");
        }
        ResultSet rsb;
        if(request.getParameter("t1")==null)
        rsb=DBR.DBlayer.getResult("Select * from blog where cusid='"+session.getAttribute("cid")+"'");
        else
            rsb=DBR.DBlayer.getResult("select * from blog where "+request.getParameter("r1") +" like '%"+request.getParameter("t1")+"%' and cusid='"+session.getAttribute("cid")+"'");
        while(rsb.next())
        {
            out.print("<td><h2>"+rsb.getString(2)+"</h2>"+rsb.getString(3)+"<br><a href='editblog.jsp?eid="+rsb.getString(1)+"' class='button1'>Edit</a><a href='deleteblog.jsp?bid="+rsb.getString(1)+"' class='button2'>Delete</a><hr></td></tr>");
        }
        
        %>
    
</table>
</form>
    </td>
    </tr>
    </table>
    </body>
    </html>
