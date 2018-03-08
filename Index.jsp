<%--helloYou.jsp -- a JSP page that uses a form and an implicit object--%>
<%!private static final String DEFAULT_NAME = "World";%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Example - Hello You!</title>
    </head>
    <body>
        <%String name = request.getParameter("name");
        if (name==null){%>
            Enter your name and press Submit.
            <form action = "Index.jsp" method="post">
                <input type="test"name="name"/>
                <input type="submit"value="Submit"/>
            </form>
        <%}
        else{
            if(name.length()==0)name=DEFAULT_NAME;%>
            <font color="000FFF">Hello,<%=name%>!</font>
        <%}%>

    </body>
</html>
