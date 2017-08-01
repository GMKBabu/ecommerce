<%@ page import="beans.Product" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="prodbean" scope="session" class="beans.ProductBean"/>
<jsp:setProperty name="prodbean" property="connectionUrl" value="jdbc:odbc:ecommweb"/>
<HTML>
<HEAD>
<TITLE>Product Details</TITLE>
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
  try {
    int productId = Integer.parseInt(request.getParameter("productid"));
    Product prod = prodbean.getProductDetails(productId);
    if (prod!=null) {
%>
<TABLE>
<TR>
  <TD valign="top" halign="left"><img border="0" width=170" height="170" src="images/<%=prod.code%>.jpg"></TD>
  <TD valign="top"><B><%=prod.name%></B><BR>
      <%=prod.description%><BR>
      Price : <%=prod.price%></TD>
  <TD><a href="ShoppingCart.jsp?pcode=<%=prod.code%>&action=addItem"><img border="0" width=70" height="70" src="images/addcart.jpg"></a><br><br>
<a href="showcart.jsp"><img border="0" width=70" height="70" src="images/showcart.jpg"></a>
</TD>

</TR>
<TR>
  <TD COLSPAN="2" ALIGN="RIGHT">
   
  </TD>
</TR>
</TABLE>
<%
    }
  }
  catch (Exception e) {
    out.println("Error: Invalid Product Code");
  }
%>
  </TD>
</TR>
</TABLE>
</BODY>
</HTML>
