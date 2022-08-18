<%-- 
    Document   : Checkout
    Created on : Feb 25, 2013, 11:43:40 AM
    Author     : nazaraf
--%>

<%@ page session="true" import="java.util.*, computer.Computer" %>
<html>
<head>
<title>Computer Store Checkout</title>
</head>
<body bgcolor="Grey">
 
  COMPUTER  Checkout
 </font>
 <hr><p>
 <center>
 <table border="0" cellpadding="0" width="100%" bgcolor="green">
 <tr>
 <td><b>Computer</b></td>
 <td><b>Manufacturer</b></td>
 <td><b>PRICE</b></td>
 <td><b>QUANTITY</b></td>
 <td></td>
 </tr>
 <%
  ArrayList list = (ArrayList) session.getAttribute("shoppingcart");
  String amount = (String) request.getAttribute("amount");
  for (int i=0; i < list.size();i++) {
 <td><b><%= order.getPrice() %></b></td>
 <td><b><%= order.getQuantity() %></b></td>
 </tr>
 <%
  }
  session.invalidate();
 %>
 <tr>
 <td>  -   </td>
 <td>  -  </td>
 <td><b>TOTAL</b></td>
 <td><b>£<%= amount %></b></td>
 <td>     </td>
 </tr>
 </table>
 <p>
 <a href="index.jsp">Shop more!</a>
 </center>
</body>
</html>
   Computer order = (Computer) list.get(i);
 %>
 <tr>
 <td><b><%= order.getName() %></b></td>
 <td><b><%= order.getManufacturer() %></b></td>
