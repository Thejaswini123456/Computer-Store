<%-- 
    Document   : index
   
    Author     : theja
--%>

<%@ page session="true" %>
<html>
<head>
 <title>Computer Store  </title>
</head>
<body bgcolor="White">
 
 <hr><p>
 <center>
 <form name="shoppingForm"  action="ComputerServlet"  method="POST">
 <b>Computer:</b> 
 <select name=computer>
  <option> Laptop | Lenovo | 155.50</option>
  <option> CPU | Dell | 10.15</option>
  <option> Mouse | HP | 6.95</option>
  <option> Keyboard | Mac | 16.95</option>
  
 </select>
 <b>Quantity: </b><input type="text" name="qty" SIZE="4" value=1>
 <input type="hidden" name="action" value="ADD">
 <input type="submit" name="Submit" value="Add to Cart">
 </form>
 </center>
 <p>
 <jsp:include page="Cart.jsp" flush="true" />
</body>
</html>
