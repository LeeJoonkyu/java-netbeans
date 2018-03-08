<%-- 
    localText.jsp-three localized versions of a greeting, an inquiry, and a farewell are displayed
--%>

<%@page import= "java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Example - Locale Text</title>
    </head>
    <body>
        <%Locale curLocale;
        ResourceBundle messages;
        Locale localeArr[]={Locale.US,Locale.GERMANY,Locale.FRANCE};%>
        <table border='2' cellspacing='0' cellpadding='0'>
            <tr><th>Greeting</th><th>Inquiry</th><th>Farewell</th></tr>
            <%for(int i=0;i<localeArr.length;i++){
                curLocale=localeArr[i];
                messages=ResourceBundle.getBundle("MessagesBundle",curLocale);%>
            <tr><td><%=messages.getString("greetings")%></td>
                <td><%=messages.getString("inquiry")%></td>
                <td><%=messages.getString("farewell")%></td></tr>
            <%}%></table>
            }
        </table>
    </body>
</html>
