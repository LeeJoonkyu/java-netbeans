<HTML>
  <HEAD>
    <TITLE>Finding a Factorial using while loop</TITLE>
  </HEAD>
  <BODY>
    <font  size="6" color ="#000080">
     Finding a Factorial using while loop</font><br>
    <%
        int value = 12, factorial = 1, temp = value;
        while (temp > 0) {
            factorial *= temp;
            temp--;
        }
     out.println("The factorial of " + value + " is " + factorial + ".");
    %>
  </BODY>
</HTML>
