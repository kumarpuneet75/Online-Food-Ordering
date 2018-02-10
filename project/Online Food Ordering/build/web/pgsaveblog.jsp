<%
    DBR.DBlayer.executeq("update blog set title='"+request.getParameter("t1")+"',description='"+request.getParameter("t2")+"',dateofadding=Now() where blogid="+request.getParameter("bid")+" and cusid="+session.getAttribute("cid"));
   response.sendRedirect("viewmyblog.jsp");
    //System.out.print(request.getParameter("bid"));
    %>