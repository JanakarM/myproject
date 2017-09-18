<%-- 
    Document   : sample
    Created on : Sep 15, 2017, 6:47:09 PM
    Author     : Janakar-PT1585
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
    </head>
    <body>
        <h3>Sample</h3>
        Name:<input type="text" id="name" />
        Hand:<input type="text" id="hand" />
        <input type="button" id="btn" onclick="fn()" />
            </body>
              <script>
                  fn()
var xmlhttp = new XMLHttpRequest();
obj=json_encode(document.getElementById("name").innerHTML);
xmlhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
        myObj = JSON.parse(this.responseText);
        document.getElementById("name").innerHTML = myObj.name;
         document.getElementById("text").innerHTML = myObj.hand;
    }
};
xmlhttp.open("GET", "ap1.jsp?q="+, true);
xmlhttp.send();
            </script>
</html>
