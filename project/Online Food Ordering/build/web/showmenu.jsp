<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
       
        <table border="1" width="100%">
            
            <tr>
                <td width="75%">
                     
                    <h1>Menu</h1>
                    <%
                       ResultSet rsm;
                       rsm=DBR.DBlayer.getResult("Select * from menu where resid="+session.getAttribute("pid"));
                       out.print("<table align=center width='60%'>");
                       out.print("<tr><td>Description</td><td>price</td><td>Quantity</td></tr>");
                       while(rsm.next())
        {
            out.print("<form method=post action=cartadd.jsp?menuid="+rsm.getString(1)+"&resid="+request.getParameter("id")+" ><tr><td><h3>"+rsm.getString(2)+"</h3>"+rsm.getString(7)+"</td><td>"+rsm.getString(4)+"</td><td><select name='selectname'><option value='0'>Select..</option><option value="+1+">1</option><option value="+2+">2</option><option value="+3+">3</option><option value="+4+">4</option><option value="+5+">5</option></select></td><td><input type='submit' name='menuid' value='Add to cart'></td></tr></form>");
        }
        out.print("</table>");
                        %>
                        
                </td>
                <td>
                    <h1>Cart</h1>
                    <%
                        ResultSet rsc;
                        rsc=DBR.DBlayer.getResult("Select * from cart where custid="+session.getAttribute("cid"));
                        out.print("<table align=center ");
                        out.print("<tr><td>Item name</td><td>Quantity</td><td>total</td></tr>");
                        
                         while(rsc.next())
                         {
                             out.print("<form method=post action='postdetails.jsp'> <tr><td>"+rsc.getString(7)+"</td><td>"+rsc.getString(3)+"</td><td>"+rsc.getString(5)+"</td><td><a href=deletecart.jsp?cartid="+rsc.getString(6)+">Delete</a></tr>");
                         }
                         out.print("<tr><td colspan=3 align=center><input type=submit value=order </td></tr>");
                         out.print("</form>");
                         out.print("</table>");
                        %>
                </td>
            </tr>
            
        </table>
    </body>
</html>
