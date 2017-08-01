<%@ page import="java.util.Hashtable" %>
<%@ page import="beans.ShoppingItem" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*" %>
<%
  try {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    }
  catch (ClassNotFoundException e) {
    System.out.println(e.toString());
  }
%>
<HTML>
<HEAD>
<TITLE>E-commerce Site</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF" text="#000000">
<TABLE cellpadding="6" border="0" width="750">
<TR>
  <TD COLSPAN=2><jsp:include page="header.jsp" flush="true"/></TD>
</TR>
<TR>
  <TD><jsp:include page="menu.jsp" flush="true"/></TD>
  <TD VALIGN="TOP">
<%
String contactName=request.getParameter("contactName");
String deliveryAddress =  request.getParameter("deliveryAddress");
String ccName= request.getParameter("ccName");
String  ccNumber =  request.getParameter("ccNumber");
String ccExpiryDate =   request.getParameter("ccExpiryDate");
Hashtable shoppingCart =   (Hashtable) session.getAttribute("shoppingCart");
 long orderId = System.currentTimeMillis();
Connection con = null;
con = DriverManager.getConnection("jdbc:odbc:ecommweb");

  try {
String sql;
sql = "INSERT INTO Orders" +
        " (OrderId, ContactName, DeliveryAddress, CreditCardName, CreditCardNumber, CreditCardExpiryDate)" +
        " VALUES" +
        " (" + orderId + ",'" + contactName + "','" + deliveryAddress + "'," +
        "'" + ccName + "','" + ccNumber + "','" + ccExpiryDate + "')";

Statement s = con.createStatement();
    s.executeUpdate(sql);
      // now insert items into OrderDetails table
      Enumeration enu = shoppingCart.elements();
    while (enu.hasMoreElements()) {
    ShoppingItem item = (ShoppingItem) enu.nextElement();
 sql = "INSERT INTO OrderDetails (OrderId, ProductId, Quantity, Price)" +
     " VALUES (" + orderId + "," + item.productcode + "," +
     item.quantity + "," + item.price + ")";
     s.executeUpdate(sql);
      }
      s.close();
      con.commit();
      con.close();
session.invalidate();
out.println("Thank you for your purchase");
 }
  catch (SQLException e) {
  }
  catch (Exception e) {
  }

%>
  </TD>
</TR>
</TABLE>
</BODY>
</HTML>
