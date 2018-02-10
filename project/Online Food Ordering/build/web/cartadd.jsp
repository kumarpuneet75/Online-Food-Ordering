<%@page language='java' import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s;
    s=DBR.DBlayer.getScaler("select price from menu where menuitemid="+request.getParameter("menuid"));
    String item=DBR.DBlayer.getScaler("select  name from menu where menuitemid="+request.getParameter("menuid"));
    float p=Float.parseFloat(s);
    float totalpriceitem;
    String d=request.getParameter("selectname");
    float z=Float.parseFloat(d);
    totalpriceitem=p*z;
    
    //String Query;
    DBR.DBlayer.executeq("insert into cart(custid,menuitemid,quantity,price,total,itemname) values('"+session.getAttribute("cid")+"','"+request.getParameter("menuid").replaceAll("'","''")+"','"+request.getParameter("selectname").replaceAll("'","''")+"','"+p+"','"+totalpriceitem+"','"+item.replaceAll("'","''")+"')");
    response.sendRedirect("showmenu.jsp?id="+request.getParameter("resid"));
   %>
