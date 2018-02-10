<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="welcomeheader.jsp" %>
<style>
    div{
        
        color: White;
      padding: 20px;
      font-style: oblique;
      
    }
</style>
<!DOCTYPE html>
<html>
    <body>
    
<form name="frmuser" method="post" action="checklogincus.jsp">            
                   <table width=250 border=0 align="center" height=400 style="opacity: 0.6; background-color: black;">
                       <tr><td colspan="2" align="center"><div>Authenticate UrSelf(User)</div></td></tr>
                        <tr>
                            <td><div>Email</div></td>
                            <td><input type=text name=t1 required ></td>
                        </tr>
                        <tr>
                            <td><div>Password</div></td>
                            <td><input type=password name=t2 required  ></td>
                        </tr>
                        <%
                            if(request.getParameter("ses")!=null)
                                out.print("<tr><td colspan=2 align=center><div>Session expired</div></td></tr>"); 
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><div>invalid password and user</div></td></tr>");
                                  //out.print("select resid from resdetails where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
                            if(request.getParameter("j")!=null)
                              out.print("<tr><td colspan=2 align=center><div>you are added plzz login</div></td></tr>");            %>
                        <tr>
                        <Td colspan="2" align=center >
                            <div> <input type="submit" value="login" ></div>
                            <a href='pgsignupcus.jsp'><div>New User/ Sign Up</div></a>
                        </TD>
                        </tr>
                   </table>
                      </form>
                          </table>
    
                </td>      
                
            </tr>
  

    </body>
</html>
