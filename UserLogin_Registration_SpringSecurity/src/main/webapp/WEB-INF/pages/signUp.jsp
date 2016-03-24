<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/13/2015
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>SignUp page</title>
    <link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet">
    <link href="/webstuffs/css/signin.css" rel="stylesheet"/>

</head>
<body>
<script type="text/javascript">
function validate()
{
    if(document.SignUpForm.Username.value=="")
    {
        alert("please provide the Username");
        document.SignUpForm.Username.focus();
        return false;
    }
    if(document.SignUpForm.Password.value=="")
    {
        alert("please provide the Password");
        document.SignUpForm.Password.focus();
        return false;
    }
    if(document.SignUpForm.Email.value=="")
    {
        alert("please provide the Email");
        document.SignUpForm.Email.focus();
        return false;
    }
    var email=document.SignUpForm.Email.value;
    atpos=email.indexOf("@");
    dotpos=email.indexOf(".");
    if(atpos < 1 || ( dotpos - atpos < 2))
    {
        alert("please provide the valid email address");
        document.SignUpForm.Email.focus();
        return false;
    }
    return true;
}
</script>
<%--<nav class="navbar-fixed-top navbar-inverse">--%>
    <%--<div class="container">--%>
        <%--<div class="navbar-header">--%>
            <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="false">--%>
                <%--<span class="sr-only">Toggle navigation</span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>

            <%--</button>--%>
            <%--<a class="navbar-brand" href="#">ZProject</a>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--<div>--%>
<%--<nav class="navbar navbar-fixed-top navbar-inverse">--%>
    <%--<div class="container">--%>
        <%--<div class="navbar-header">--%>
            <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">--%>
                <%--<span class="sr-only">Toggle navigation</span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
            <%--</button>--%>
            <%--<a class="navbar-brand" href="#">ZProject</a>--%>
        <%--</div>--%>
        <%--<div id="navbar" class="collapse navbar-collapse">--%>
            <%--<ul class="nav navbar-nav">--%>
                <%--<li class="active"><a href="#">Home</a></li>--%>
                <%--<li><a href="Introduction.html">Introduction</a></li>--%>
                <%--<li><a href="Contact.html">Contact</a></li>--%>
            <%--</ul>--%>
        <%--</div><!-- /.nav-collapse -->--%>
    <%--</div><!-- /.container -->--%>
<%--</nav><!-- /.navbar -->--%>
<%--</div>--%>
<c:if test="${not empty error}">
    <div class="error">${error}</div>
</c:if>
<c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
</c:if>

<div id="SignUpDown" align="center">
<c:url var="userRegistration"  value="saveUser"/>
    <%--<form:form id="registrationForm" modelAttribute="user"--%>
               <%--name="SignUpForm" action="${userRegistration}" method="POST" onsubmit="return(validate());">--%>


            <%--<table width="400px" height="150px">--%>
                <%--<tr>--%>
                    <%--<td><form:label path="Username">Username</form:label></td>--%>
                    <%--<td><form:input  path="Username"/></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="Password" >Password</form:label></td>--%>
                    <%--<td><form:input  path="Password" type="password" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="Email">Email</form:label></td>--%>
                    <%--<td><form:input path="Email" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="Address">Address</form:label></td>--%>
                    <%--<td><form:input path="Address" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="Phone">Phone</form:label></td>--%>
                    <%--<td><form:input path="Phone" /></td>--%>
                <%--</tr>--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td><form:label path="Enabled" >Remember me</form:label></td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td><form:input path="Enabled"  /></td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td><form:label path="Enabled">Type 1</form:label></td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td><form:input path="Enabled" /></td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>


                <%--<tr><td></td><td>--%>
                    <%--<input type="submit" value="Register" />--%>
                <%--</td></tr>--%>
            <%--</table>--%>

        <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
    <%--</form:form>--%>
    <form class="form-signin" action="${userRegistration}" method="post" onsubmit="return(validate());">
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="text" name="Username" id="inputUsername" class="form-control" placeholder="UserName" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="text" name="Password" id="inputPassword" class="form-control" placeholder="Password" required autofocus>
        <label for="inputPhone" class="sr-only" >Phone</label>
        <input type="text" name="Phone" id="inputPhone" class="form-control" placeholder="Phone" required autofocus>
        <label for="inputEmail" class="sr-only">Email</label>
        <input type="text" name="Email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
        <label for="inputAddress" class="sr-only">Address</label>
        <input type="text" name="Address" id="inputAddress" class="form-control" placeholder="Address" required autofocus>
        <div>

            <label>Terms and conditions</label>
            <input type="checkbox" name="Enabled" id="inputTerms" class="form-control" value="Terms" required autofocus>

        </div>

        <button class="btn btn-lg btn-block btn-primary" type="submit">Register</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>




</div>
<footer>
    <p>&copy; 2015 Anemone Company, Inc.</p>
</footer>

</body>
</html>
