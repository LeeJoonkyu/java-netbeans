#CelsiusToFahrenheit
<html>
<head>
<title>Convert Celsius to Fahrenheit Jsp</title>
</head>
<body>
<table border="1" cellpadding="0"
   cellspacing="0" width="35%" align="center">

  <tr>
    <td width="100%">
     <p align="center"><b>Convert Celsius to Fahrenheit Jsp</b></p>
     <form method="POST" action="CelsiusToFahrenheitConverter.jsp">

        <p align="center"><b>Enter Temprature in Celsius:</b>
	<input type="text" name="cel" size="20">
        <input type="submit" value="Convert" name="B1"></p>
        </form>
      <%
		String str=request.getParameter("cel");
			if(str == null || str.equals("")){
			   out.println("<b>Fahrenheit:</b>");
			}
			else{
			 float c=Float.parseFloat(str);
			float f = 32 + 9*c/5;
			out.println("<b>Fahrenheit:</b>"+f);
			}%>
	  <p>&nbsp;</p></td></tr>
  </table>
</body>
</html>
