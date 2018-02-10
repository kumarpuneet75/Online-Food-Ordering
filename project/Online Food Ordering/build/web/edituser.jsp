<%@include file="cusheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html"  pageEncoding="UTF-8" %>
<%
    ResultSet rsc;
    rsc=DBR.DBlayer.getResult("select * from customer where cusid="+session.getAttribute("cid"));
    rsc.next();
    %>
    <td>
    <table cellspacing="0" align="center" bgcolor="cyan" height="300">
        <form method="post" action="pgedituser.jsp">
         <td colspan="2" align="center">
                User Information
            </td>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                <textarea name="t1"><%out.print(rsc.getString(2));%> </textarea>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <input type="text" value=<%out.print(rsc.getString(3));%> name=t2>
            </td>
        </tr>
        <tr>
            <td>
                Phone no.
            </td>
            <td>
                <input type="text" value=<%out.print(rsc.getString(5));%> name=t3>
            </td>
        </tr>
        <tr>
            <td>
                Gender
            </td>
            <td>
                <select name="t4">
                        <option value="0">Select..</option>
                        <option value="1" <% out.print(rsc.getString(6).equals("1")?"selected":""); %>>Male</option>
                        <option value="2" <% out.print(rsc.getString(6).equals("2")?"selected":""); %>>Female</option>
              
            </td>
            <tr>
            <td>
                Address
            </td>
            <td>
                <textarea name="t5"><%out.print(rsc.getString(7));%> </textarea>  
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
        <input type="submit" value="save">         
            </td>
        </tr>
        
       
                    </form>

    </table>
                </td>
            </tr>
            
            
        </table>
        
    </body>
</html>
