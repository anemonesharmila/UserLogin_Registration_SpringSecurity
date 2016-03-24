<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/6/2015
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <title>Login form</title>
    <spring:url value="/webstuffs/css/sigin.css" var="signinCss" />
    <link href="${signinCss}" rel="stylesheet" />

    <spring:url value="/webstuffs/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
</head>
<body onload="document.LoginForm.Username.focus();">



<%--<script type="text/javascript">--%>
  <%--function validate()--%>
  <%--{--%>
     <%--if (document.LoginForm.Username.value=="")--%>
     <%--{--%>
         <%--alert( "Please provide your Username!" );--%>
         <%--document.LoginForm.Username.focus() ;--%>
         <%--return false;--%>
     <%--}--%>
      <%--if(document.LoginForm.Password.value=="")--%>
      <%--{--%>
          <%--alert("please provide your password");--%>
          <%--document.LoginForm.Password.focus();--%>
          <%--return false;--%>
      <%--}--%>
  <%--}--%>
<%--</script>--%>




    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>
    <c:url value="/j_spring_security_check" var="loginUrl"/>
        <div class="container">

            <form class="form-signin" action="${loginUrl}" role="form" method="POST" name="loginForm">
                <h2 class="form-signin-heading">Please sign in</h2>
                <label for="inputUsername" class="sr-only">Username</label>
                <input type="text" name="Username" id="inputUsername" class="form-control" placeholder="UserName" required autofocus>
                <label for="inputPassword"  class="sr-only">Password</label>
                <input type="password" name="Password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>


</div>
<footer>
    <p align="center">&copy; 2015 Anemone Company, Inc.</p>
    ___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
</footer>


</body>
</html>
