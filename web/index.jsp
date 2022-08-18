<%-- 
    Document   : index
   
    Author     : theja
--%>

<%@ page session="true" %>
<html>
<head>
 <title>COMPUTER STORE  </title>
</head>
<body bgcolor="Beige">
 
 <hr><p>
 <center>
 <form name="shoppingForm"  action="ComputerServlet"  method="POST">
 <b>Products Available:</b> 
 <select name=computer>
  <option> Laptop ThinkPad 2022 | Lenovo | 655.50 </option>
  <option> CPU 2021 | Dell | 100.15 </option>
  <option> Mouse | HP | 16.95 </option>
  <option> Keyboard | Mac | 116.95 </option>
  
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
