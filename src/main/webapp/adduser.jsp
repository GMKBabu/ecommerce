<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="userbean" scope="session" class="beans.User"/>
<jsp:setProperty name="userbean" property="connectionUrl" value="jdbc:odbc:ecommweb"/>
<HTML>
<HEAD>
<TITLE>E-Commerce Site</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF" text="#000000">
<TABLE>
<TR>
  <TD COLSPAN=2><jsp:include page="header.jsp" flush="true"/></TD>
</TR>
<TR>
  <TD><jsp:include page="menu.jsp" flush="true"/></TD>
  <TD VALIGN="TOP">
<%
String firstName=request.getParameter("firstName");
String lastName =  request.getParameter("lastName");
String emailAddress= request.getParameter("emailAddress");
String  companyName =  request.getParameter("companyName");
String address1 =   request.getParameter("address1");
String address2=request.getParameter("address2");
String city =  request.getParameter("city");
String state= request.getParameter("state");
String  pin =  request.getParameter("pin");
String country =   request.getParameter("country");
if(userbean.insertrec(firstName, lastName, emailAddress, companyName, address1, address2, city, state, pin, country))
{
      out.println("Thanks for registering with us. Your record is saved");
}
else
out.println("Error");
%>
  </TD>
</TR>
</TABLE>
</BODY>
</HTML>
