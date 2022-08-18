<%-- 
   
--%>



<%@ page session="true" import="java.util.*, computer.Computer" %>
<%
 ArrayList  list = (ArrayList) session.getAttribute("shoppingcart");
 if (list != null && (list.size() > 0)) 
 {
%>
<center>
<table border="0" cellpadding="0" width="100%" bgcolor="grey">
 <tr>
 <td><b>Computer</b></td>
 <td><b>Manufacturer</b></td>
 
 <td><b>Pice</b></td>
 <td><b>Quantity</b></td>
 <td></td>
 </tr>
 <%
  for (int index=0; index <list.size();index++) {
   Computer item = (Computer) list.get(index);
 %>
 <tr>
  <td><b><%= item.getName() %></b></td>
  <td><b><%= item.getManufacturer() %></b></td>
  <td><b><%= item.getPrice() %></b></td>
  <td><b><%= item.getQuantity() %></b></td>
  <td>
   <form name="deleteForm" action="ComputerServlet"  method="POST">
   <input type="submit" value="Delete">
   <input type="hidden" name= "deleteindex" value='<%= index %>'>
   <input type="hidden" name="action" value="DELETE">
  </form> 
      </td>
    </tr> 
    <% } %>
  </table>
  <p>
  <form name="checkoutForm"   action="ComputerServlet"  method="POST">
    <input type="hidden" name="action" value="CHECKOUT">
    <input type="submit" name="Checkout" value="Checkout">
  </form>
  </center>
<% } %>
