<%
    DBR.DBlayer.executeq("insert into feedback(title,description,resid,cusid) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"',"+session.getAttribute("rpid")+",'"+session.getAttribute("cid")+"')");
    response.sendRedirect("addfeedback.jsp?pid=2");
%>