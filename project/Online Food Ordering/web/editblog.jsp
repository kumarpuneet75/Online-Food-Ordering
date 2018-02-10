<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html"  pageEncoding="UTF-8" %>
<head>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>


<%
    ResultSet rs;
    rs=DBR.DBlayer.getResult("select * from blog where blogid="+request.getParameter("eid")+" and cusid="+session.getAttribute("cid"));
    rs.next();
    %>

        <td>
            <%out.print("<form method=post action=pgsaveblog.jsp?bid="+rs.getString(1)+" >");
            %>
           
                 <table cellspacing="0" align="center"  height="300">
        
        <tr>
            <td colspan="2" align="center">
                Edit Blog
            </td>
        </tr>
        <tr>
            <td>
                Title
            </td>
            <td>
                 <textarea name="t1"><%out.print(rs.getString(2));%></textarea>
            </td>
        </tr>
        <tr>
            <td>
                Description
            </td>
            <td>
                <textarea name="t2" rows='4' cols="30"><%out.print(rs.getString(3));%> </textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" class="button button1" value="Save">

                
            </td>
        </tr>
        
    </table>
            </form>