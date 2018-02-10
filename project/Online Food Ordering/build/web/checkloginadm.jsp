<%
String id=DBR.DBlayer.getScaler("select admid from admin where email='"+request.getParameter("t1").replaceAll("'","''")+"' and password='"+request.getParameter("t2").replaceAll("'","''")+"'");
if(id==null || id.equals(""))
    response.sendRedirect("admlogin.jsp?p=2");
else
    {
        session.setAttribute("aid",id);
        String nam=DBR.DBlayer.getScaler("select name from admin where email='"+request.getParameter("t1")+"'");
        session.setAttribute("aesn",nam);
        response.sendRedirect("adminhome.jsp");
        }
%>