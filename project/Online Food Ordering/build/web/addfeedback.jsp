<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html"  pageEncoding="UTF-8" %>
<html>
    <head>
<style>
.button {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>

    <body>
        <script lang="javasvript">
       <%
        if(request.getParameter("pid")!=null)
        out.print("alert('feedback added')");
        %>
            </script>

                <td>
        <form method="post" action="pgaddfeedback.jsp">
        <table cellspacing="0" align="center"  height="300">
             
        <tr>
            <td colspan="2" align="center">
                <h2>Give Feedback</h2>
            </td>
        </tr>
        <tr>
            <td>
                Title
            </td>
            <td>
                <input type="text" name="t1" required>
            </td>
        </tr>
        <tr>
            <td>
                Description
            </td>
            <td>
                <textarea name="t2" rows="4" cols="50" required></textarea>
            </td>
            
            
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" class="button" value="Save Feedback">
            </td>
        </tr>
        
        </table>
        </form>
    </body>
</html>
