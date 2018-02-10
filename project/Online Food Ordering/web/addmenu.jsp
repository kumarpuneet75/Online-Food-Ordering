<%@include file="resheader.jsp" %>
    <form name="firm2" method="post" action="pgaddmenu.jsp">

<table cellspacing="0" align="center" height="300">
    <tr>
        <td colspan="2">
    <center><h1>Add Item</h1></center>
        </td>
    </tr>
    <tr>
        <td>
            Item name
        </td>
        <td>
            <input type="text" name="t1">
        </td>
    </tr>
    
    <tr>
        <td>
            Type
        </td>
        <td>
    <input type="text" name="t2">       
        </td>
    </tr>
    
    <tr>
        <td>
            Price
        </td>
        
        <td>
            <input type="text" name="t3">
        </td>
    </tr>
    
    <tr>
        <td>
            Description
        </td>
        <td>
            <textarea name="t4"></textarea>
        </td>
    </tr>
    
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="add">
        </td>
    </tr>
    
</table>
            </form>
    
</td>
</tr>
</table>
</body>
</html>