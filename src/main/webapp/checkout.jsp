<HTML>
<HEAD>
<TITLE>E-Commerce Site</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF" text="#000000">
<TABLE cellpadding="6" border="0" width="750">
<TR>
  <TD COLSPAN=2><jsp:include page="header.jsp" flush="true"/></TD>
</TR>
<TR>
  <TD><jsp:include page="menu.jsp" flush="true"/></TD>
  <TD VALIGN="TOP">
 <form action="<%=response.encodeURL("order.jsp")%>"  method="post">
           <TABLE>
    <TR>
      <TD COLSPAN="2"><I><B>Delivery Details</B></I></TD>
    </TR>
    <TR>
      <TD>Contact Name:</TD>
      <TD><INPUT TYPE="TEXT" NAME="contactName"></TD>
    </TR>
    <TR>
      <TD>Delivery Address:</TD>
      <TD><INPUT TYPE="TEXT" NAME="deliveryAddress"</TD>
    </TR>
    <TR>
      <TD COLSPAN="2"><I><B>Credit Card Details</B></I></TD>
    </TR>
    <TR>
      <TD>Name on Credit Card:</TD>
      <TD><INPUT TYPE="TEXT" NAME="ccName"</TD>
    </TR>
    <TR>
      <TD>Credit Card Number:</TD>
      <TD><INPUT TYPE="TEXT" NAME="ccNumber"></TD>
    </TR>
    <TR>
      <TD>Credit Card Expiry Date:</TD>
      <TD><INPUT TYPE="TEXT" NAME="ccExpiryDate"</TD>
    </TR>
    <TR>
      <TD>&nbsp;</TD>
      <TD>

  <input type="submit" value="Order">

</TD>
    </TR>
    </TABLE>
</form>
    </TD>
</TR>
</TABLE>
</BODY>
</HTML>
