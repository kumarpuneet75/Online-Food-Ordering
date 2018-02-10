<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html"  pageEncoding="UTF-8" %>
<%
    ResultSet rsc;
    rsc=DBR.DBlayer.getResult("select * from customer where cusid="+session.getAttribute("cid"));
    rsc.next();
    %>

        <td>
    <table cellspacing="0" align="center"  height="300">
        <form method="post" action="edituser.jsp">
        <tr>
            <td colspan="2" align="center">
                User Information
            </td>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                 <textarea disabled><%out.print(rsc.getString(2));%> </textarea>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <input type="text" value=<%out.print(rsc.getString(3));%> disabled>
            </td>
        </tr>
        <tr>
            <td>
                Phone no.
            </td>
            <td>
                <input type="text" value=<%out.print(rsc.getString(5));%> disabled>
            </td>
        </tr>
        <tr>
            <td>
                Gender
            </td>
            <td>
               <input type="text" value=<% out.print(rsc.getString(6).equals("1")?"Male":"Female"); %> disabled>
            </td>
            <tr>
            <td>
                Address
            </td>
            <td>
                <textarea disabled><%out.print(rsc.getString(7));%> </textarea>  
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
        <input type="submit" value="Edit profile">         
            </td>
        </tr>
        
       
                    </form>

    </table>
                </td>
            </tr>
            
            
        </table>
        
    </body>
</html>
