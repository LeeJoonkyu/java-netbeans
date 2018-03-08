<%--
    Document   : Index1
    Created on : 2018. 3. 8, 오후 11:49:47
    Author     : 이준규
--%>

<html>
    <head>
        <meta http-equiv="refresh" content="5" />
        <title>JSP Example - Current Time</title>
    </head>
    <body>
        <table border='2' cellspacing='0' cellpadding='0'>
            <tr><th>CurrentTime - at Server Location</th>
                <th>Current Time - at Client Location</th></tr>
            <tr><td><%@include file="currentTime.jsp"%></td>
                <td><%@include file="currentLocalTime.jsp"%></td></tr></table>

    </body>
</html>
