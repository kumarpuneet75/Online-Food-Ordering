<%@include file="welcomeheader.jsp" %>
<script language="java">
    function enlarge(y)
{
y.width=50;
y.height=50;
}
function shrink(y)
{
y.width=30.height=30;
}

    </script>
<style>
    div{
        
        color: White;
      padding: 20px;
      font-style: oblique;
      
    }
</style>
<table border="1" width="98%" height=200 cellspacing="0" style="opacity: 0.5; background-color: black;" >
    <tr>
        <td width="50%">
            <h1><div>About us</div></h1>
            <p><div>We are here to provide facility to different restaurant to come online and expand their business. we provide a 
            facility of reviews about your dishes in the restaurants by the customer and also there is a food blog in which people can give a new 
            idea about the dish and many more things. so come and join us.</div></p>
        </td>
        <td width="50%">
            <h1><div>Contact us</div></h1>
            <p><div>You can contact us at. +91-9780440718, +91-9988737787 or you can email uss @ puneetk1998@gmail.com
                and beingkaran21@gmail.com.you can like our facebook page/instagram account/twitter account.<br>
                <image src="images/insta.jpg" height="30" width="30" onmouseover="enlarge(this)" onmouseout="shrink(this)" >
                <image src="images/fb.png" height="30" width="30" onmouseover="enlarge(this)" onmouseout="shrink(this)" >
                <image src="images/twitter.png" height="30" width="30" onmouseover="enlarge(this)" onmouseout="shrink(this)"></div></p>
            <p></p>
            
        </td>
        </table>
    </tr>

        </td>      
    </tr>
</table>
      
        

    </body>
</html>
  