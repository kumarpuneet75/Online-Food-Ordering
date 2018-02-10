<%@include file="resheader.jsp" %>
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<table align="center"width="600" border="1">
    <tr>
        <th width="120">
            Item name
        </th>
        <th width="100">
            Type
        </th>
        <th width="100">
            Price
        </th>
        <th width="200">
            Description
        </th>
        <th width="50">
            Active
       </th>
        <th width="100">
            Action
        </th>
    </tr>
    <%
        ResultSet rss;
        rss=DBR.DBlayer.getResult("Select * from menu where resid="+session.getAttribute("rid"));
        
        while(rss.next())
              {
              if( request.getParameter("id")!=null &&  request.getParameter("id").equals(rss.getString(1)) )
                  out.print("<form name=ff method=post action=updatemenu.jsp?id="+rss.getString(1)+"><tr height=40 bgcolor=yellow ><td><input type=text name=t1 value='"+rss.getString(2)+"'></td><td><input type=text name=t2 value='"+rss.getString(3)+"'></td><td><input type=text name=t3 value='"+rss.getString(4)+"'></td><td><input type=text name=t4 value='"+rss.getString(7)+"'></td><td><input type=checkbox name=chk1 "+(rss.getString(5).equals("1")?"checked":"")+" ></td><td align=center><input type=submit value=save > - <input type=button value=cancel onclick=\"window.location='modifymenu.jsp'\"></td></tr></form>"); 
             else
                   out.print("<tr><td>"+rss.getString(2)+"</td><td>"+rss.getString(3)+"</td><td>"+rss.getString(4)+"</td><td>"+rss.getString(7)+"</td><td><input type=checkbox name=chk1 disabled "+(rss.getString(5).equals("1")?"checked":"")+" ></td><td align=center><a href=modifymenu.jsp?id="+rss.getString(1)+" >edit </a> - <a href=delmenu.jsp?id="+rss.getString(1)+">delete</a></td></tr>");
              }


%>
</table>
    </td>
    </tr>
    </table>
    </body>
    </html>
