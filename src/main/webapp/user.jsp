<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>E-Commerce Site</TITLE>
</HEAD>
<body bgcolor="#FFFFFF" text="#000000">
<table cellpadding="6" border="0" width="750">
  <tr> 
    <td colspan=2><jsp:include page="header.jsp" flush="true" />  </td>
  </tr>
  <tr> 
    <td valign="top"><jsp:include page="menu.jsp"  flush="true" /></td>
    <td valign="top">

    <script language="JavaScript">
    function validate(form) {
        if (form.firstName.value=="") {
                alert("Please fill in your first name");
                form.firstName.focus();
        }
        else if (form.lastName.value=="") {
                alert("Please fill in your last name");
                form.lastName.focus();
        }
        else if (form.emailAddress.value=="") {
                alert("Please fill in your email address");
                form.emailAddress.focus();
        }
        else if (form.address1.value=="") {
                alert("Please fill in your street address line 1");
                form.address1.focus();
        }
        else if (form.city.value=="") {
                alert("Please fill in your city name");
                form.city.focus();
        }
        else if (form.state.value=="") {
                alert("Please fill in your state");
                form.state.focus();
        }
        else if (form.pin.value=="") {
                alert("Please fill in your pin/postal code");
                form.pin.focus();
        }
        else if (form.country.value=="") {
                alert("Please fill in your country");
                form.country.focus();
        }
        else {
               form.submit();
        }
    }
    </script>
    
<h1>Enter your name and contact information</h1>

<form action="adduser.jsp" method=post>
<table border="0" cellpadding="5">
  <tr>
    <td></td>
    <td align=left><p>Required <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>First Name</td>
    <td><input type="text" name="firstName"  size="20" maxlength=20>
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Last Name</td>
    <td><input type=text name="lastName" size=20  >
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Email Address</td>
    <td><input type=text name="emailAddress" size=20  >
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Company</td>
    <td><input type=text name="companyName" size=20></td>
  </tr>
  <tr>
    <td align=right><p>Address1</td>
    <td><input type=text name="address1" size=20> 
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Address2</td>
    <td><input type=text name="address2" size=20 ></td>
  </tr>
  <tr>
    <td align=right><p>City</td>
    <td><input type=text name="city" size=20 >
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>State</td>
    <td><input type=text name="state" size=20  >
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Pin Code</td>
    <td><input type=text name="pin" size=20 >
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>Country</td>
    <td><input type=text name="country" size=20 > 
               <font color=red>*</font></td>
  </tr>
  <tr>
    <td align=right><p>&nbsp;</td>
    <td><input type="button" value="Save" onClick="validate(this.form)"></td>
  </tr>
</table>
</form>
  </tr>
</table>
</body>
</html>