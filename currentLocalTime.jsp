<%--
    Document   : CurrentLocalTime
    Created on : 2018. 3. 8, 오후 11:54:03
    Author     : 이준규
--%>

<%@page import="java.util.*,java.text.*"%>
<%Locale loc = request.getLocale();
DateFormat df=DateFormat.getDateTimeInstance(
DateFormat.LONG,DateFormat.LONG,loc);
%>
<%=df.format(new Date())%>
