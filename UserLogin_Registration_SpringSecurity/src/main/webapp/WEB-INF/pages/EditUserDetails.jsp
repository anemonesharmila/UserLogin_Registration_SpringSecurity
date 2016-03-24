<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/18/2015
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Edit</title>
    <%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/13/2015
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <html>
        <head>
            <title>SignUp page</title>
            <style>

                body
                {
                    background-color: #bce8f1;

                }
                #SignUpDown
                {
                    width: 400px;
                    margin:100px auto;
                    padding:20px;
                    -webkit-border-radius: 2px;
                    -moz-border-radius: 2px;
                    border: 1px solid #000;
                }
            </style>
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
<link href="/webstuffs/css/bootstrap.min.css">
<div id="SignUpTop">
    <a href="SignIn.html">Sign in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="contact.html">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="introduction.html">Introduction</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div id="SignUpDown">
    <c:url var="userRegistration" value="saveUser"/>
    <%--<form:form id="registrationForm" modelAttribute="user"--%>
               <%--name="SignUpForm" action="update" method="post" onsubmit="return(validate());">--%>

        <%--<table align="center">--%>
            <%--<tr>--%>
                <%--<td><form:label path="Username">Username</form:label></td>--%>
                <%--<td><form:input path="Username" value="${userObject.Username}"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><form:label path="Password">Password</form:label></td>--%>
                <%--<td><form:input path="Password" value="${userObject.Password}"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><form:label path="Email">Email</form:label></td>--%>
                <%--<td><form:input path="Email" value="${userObject.Email}"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><input type="submit" name="Update"></td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</form:form>--%>
    <form class="form-edit" action="update" method="post" onsubmit="return(validate());" modelAttribute="user" name="editUserList">
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="text" name="Username" id="inputUsername" value="${userObject.Username}" class="form-control" placeholder="Name" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="text" name="Password" id="inputPassword" value="${userObject.Password}" class="form-control" placeholder="Password" required autofocus>
        <label for="inputPhone" class="sr-only" >Phone</label>
        <input type="text" name="Phone" id="inputPhone" value="${userObject.Phone}" class="form-control" placeholder="Phone" required autofocus>
        <label for="inputEmail" class="sr-only">Email</label>
        <input type="text" name="Email" id="inputEmail" value="${userObject.Email}" class="form-control" placeholder="Email" required autofocus>
        <label for="inputAddress" class="sr-only">Address</label>
        <input type="text" name="Address" id="inputAddress" value="${userObject.Address}" class="form-control" placeholder="Address" required autofocus>

        <button class="btn btn-lg btn-block btn-primary" type="submit">Update</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    </form>
    <c:if test="${!empty user}">
        <table>
            <tr>
                <th>Username</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
            </tr>
            <c:forEach items="${user}" var="user">
                <tr><c:out value="${userObject.Username}"></c:out> </tr>
                <tr><c:out value="${userObject.Phone}"></c:out> </tr>
                <tr><c:out value="${userObject.Email}"></c:out> </tr>
                <tr><c:out value="${userObject.Address}"></c:out> </tr>

            </c:forEach>
        </table>

    </c:if>

</div>
<footer>
    <p>&copy; 2015 Anemone Company, Inc.</p>
</footer>

</body>
</html>

