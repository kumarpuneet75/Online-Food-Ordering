<%
    String id=request.getParameter("rid");
    session.setAttribute("rpid", id);
    response.sendRedirect("addfeedback.jsp");
%>