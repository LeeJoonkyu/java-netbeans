<%-- 
    Document   : DynamicJSPTable
    
The following example shows how to generate five rows without having to code each one of them:
<TABLE>
<% for(int row=1; row <= 5; row++) { %>
    <TR>
    </TR>
<% } %>
</TABLE>

en columns can be added for each row by nesting another for loop within the TR tag as follows:
<TABLE>
<% for(int row=1; row <= 5; row++) { %>
    <TR>
<%      for(int col=1; col<=10; col++) { %>
        <TD> (<%=col%>, <%=row%>)
        </TD>
        <% } %>
    </TR>
<% } %>
</TABLE>

    

Each cell contains its row and column numbers as the tuple (col, row).

The following listing shows how tables can be generated dynamically. The JSP provides two INPUT fields to define the width and height of the dynamic table. When the user submits the form, the JSP processes the request and generates the table on-the-fly. Each cell of the table has a unique background color and text based on the row and column of the cell. 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <HEAD><TITLE>A Colorful and Dynamic Table</TITLE></HEAD>
 <BODY>
 <CENTER>
 <H1>Colorful and Dynamic Table</H1>
 <FORM METHOD=POST ACTION=dynamicTable.jsp>
 Table Width  (<16) = <INPUT TYPE=TEXT NAME=WIDTH  VALUE=15 SIZE=2>,
 Table Height (<16) = <INPUT TYPE=TEXT NAME=HEIGHT VALUE=5  SIZE=2>,
 <INPUT TYPE=SUBMIT VALUE="Do it !">
 </FORM>
<HR>
<%  String w = request.getParameter("WIDTH");
String h = request.getParameter("HEIGHT");
    if(w == null) w = "5";
    if(h == null) h = "15";
     int width  = Integer.parseInt(w);
     int height = Integer.parseInt(h);
     if(width>15)  width  = 15;
    if(width<0)   width  = 0;
    if(height>15) height = 15;
     if(height<0)  height = 0;
    String[] colorArray  = { "00", "11", "22", "33",
          "44", "55", "66", "77",
           "88", "99", "AA", "BB",
           "CC", "DD", "EE", "FF"  };  %>
 <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
 <%  for(int y=0; y<=height; y++){    %>
        <TR>
 <%      for(int x=0; x<=width; x++){
         String bgColor = "AA" + colorArray[y] + colorArray[x];    %>
         <TD BGCOLOR=<%=bgColor%>>
         (<%=x%>, <%=y%>)
         <a href="Home1.html"> Go To Page 1</a>
         </TD>
 <%      }           %>
         </TR>
 <%  }     %>
 </TABLE>
 <HR>
 </CENTER>
 </BODY>
    
</html>
