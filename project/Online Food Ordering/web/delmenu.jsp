  <%
            DBR.DBlayer.executeq("delete from menu where menuitemid="+request.getParameter("id"));
            response.sendRedirect("modifymenu.jsp");
            %>