<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="cusheader.jsp" %>
   <head>
<style>
.button3 {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>

<%
    String z;
    z=DBR.DBlayer.getScaler("SELECT sum(total) from cart where custid='"+session.getAttribute("cid")+"'");
    Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
    String strDate= formatter.format(date);
    String a;
    a=DBR.DBlayer.getScaler("select address from customer where cusid="+session.getAttribute("cid"));
    if(request.getParameter("r")!=null)
    out.print("Please add some items");
    
%>

    <td align="center">
        <table align="center" width="500">
            <tr>
                <th>
                    Total Amount
                </th>
                <td>
                    <% out.print(z);%>
                </td>
            </tr>
            <tr>
                <th>
                    Date and Time
                </th>
                <td>
                    <% out.print(strDate);%>
                </td>
                
            </tr>
            <tr>
                <th>
                    Address
                </th>
                <td>
                    <%out.print(a);%>
                </td>
            </tr>
            <tr>
                <th>
                    Mode of payment
                </th>
                <td>
                    COD
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="post.jsp" class="button3">Order</a>
                </td>
            </tr>
        </table>
                </td>
            </tr>
            
            
        </table>
        
    </body>
</html>
