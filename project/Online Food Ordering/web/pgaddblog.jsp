<%
    DBR.DBlayer.executeq("insert into blog(title,description,cusid,dateofadding) values('"+request.getParameter("t1").replace("'","''") +"','"+request.getParameter("t2").replace("'","''")+"','"+session.getAttribute("cid")+"',NOW())");
    response.sendRedirect("viewmyblog.jsp");
    %>