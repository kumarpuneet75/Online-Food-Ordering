<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <body>
        <%
        if(session.getAttribute("rid")==null)
            {
            response.sendRedirect("reslogin.jsp?ses=exp");
            return;
            }
%>
        <table  width=100%>
           
            <tr>
                <td height="350" colspan="2">
                    <img src="images/cust.gif" width=100% height=350 >  
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    Welcome <%  if(session.getAttribute("resn")!=null)
                out.print(session.getAttribute("resn")); %>
                <a href="logoutres.jsp" vlink="blue"><u>(Logout)</u></a>
                    
                </td>
            </tr>
            
            <tr>
                <td width="200" align=up>
                    <a href="welcomeres.jsp" vlink="blue"><u>Home</u></a><hr>             
                    <a href="addmenu.jsp" vlink="blue"><u>Add Menu</u></a><hr>              
                    <a href="viewmenu.jsp" vlink="blue"><u>view menu</u></a><hr>
                    <a href="modifymenu.jsp" vlink="blue"><u>Modify menu</u></a><hr>
                    <a href="viewfeedback.jsp" vlink="blue"><u>View Feedback</u></a><hr>
                    <a href="pendingorders.jsp" vlink="blue"><u>Pending Orders</u></a><hr>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> 
                  
                    
                </td>
                <td align=center bgcolor="#b3c1ca">