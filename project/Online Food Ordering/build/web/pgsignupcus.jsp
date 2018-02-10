<%@ include file="welcomeheader.jsp" %>
<style>
    div{
        
        color: White;
      padding: 20px;
      font-style: oblique;
      
    }
</style>

<form name="frmcus" method="post" action="pgnewacccus.jsp">            
    <table width=250 border=0 align="center" height=400 style="opacity: 0.5; background-color: black;">
        <tr><td colspan="2" align="center">Sign up</td></tr>
            <tr>
                <td> <div>User Name</div></td>
                <td><input type=text name=t1 required ></td>
            </tr>
            <tr>
                <td><div>Password</div></td>
                <td><input type=password name=t2 required ></td>
            </tr>
            <tr>
                <td><div>Email</div></td>
                <td><input type=text name=t3></td>
            </tr>
            <tr>
                <td><div>Phone number</div></td>
                <td><input type=text name=t4></td>
            </tr>
              <tr>
                  <td><div>Gender</div></td>
                <td><select name="t5">
                        <option value="0">Select..</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        
                </td>
            </tr>
            <tr>
                <td><div>Address</div></td>
                <td><textarea name="t6"></textarea></td>
            </tr>
            <tr>
                <Td colspan="2" align=center >
                    <div> <input type="submit" value="Create Account" ></div>
                </TD>
            </tr>
              </table>
    
                </td>      
                
            </tr>
  
    </table>
    
</form>
