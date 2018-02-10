<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBR.DBlayer.executeq("delete from cart where tempid="+request.getParameter("cartid"));
    response.sendRedirect("showmenu.jsp");
    %>