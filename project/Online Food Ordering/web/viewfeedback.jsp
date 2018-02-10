<%@page import="java.sql.ResultSet"%>
<%@include file="resheader.jsp" %>
<!DOCTYPE html>
<html>
    <body>
        <h1>Feedbacks</h1>
        <table border="1" width="400">
            <tr>
                <th>Title</th>
                <th>Description</th>
            </tr>
        <%
            ResultSet rd;
            rd=DBR.DBlayer.getResult("select * from feedback where resid="+session.getAttribute("rid"));
            while(rd.next())
            out.print("<tr><td>"+rd.getString(2)+"</td><td>"+rd.getString(3)+"</td></tr>");
            
        %>
        </table>
    </td>
</tr>
</table>
</body>
</html>