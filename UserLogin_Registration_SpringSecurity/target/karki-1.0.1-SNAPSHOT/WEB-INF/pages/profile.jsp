<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet" />
<%--<style>--%>

    <%--body{--%>
        <%--background-color: #d9edf7;--%>

    <%--}--%>
    <%--#profileTop--%>
    <%--{--%>
        <%--background-color: #f2dede;--%>
        <%--font-family: "Baskerville Old Face";--%>
        <%--width:inherit;--%>
        <%--height: 5%;--%>
        <%--font-size: medium;--%>
        <%--font-style: normal;--%>

    <%--}--%>
    <%--#profileLeft--%>
    <%--{--%>
        <%--background-color:blanchedalmond;--%>
        <%--font-family: "Baskerville Old Face";--%>
        <%--width: 100px;--%>
        <%--height: 100%;--%>
        <%--font-style: italic;--%>
        <%--align-items:center;--%>
        <%--align-items:center;--%>
    <%--}--%>
<%--</style>--%>
<sec:authorize access="hasRole('ROLE_USER')">
    <!-- For login user -->
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>
<div id="container" class="container" >
    <c:if test="${pageContext.request.userPrincipal.name != null}">

         Hello!  ${pageContext.request.userPrincipal.name} &nbsp;| <a
                href="javascript:formSubmit()"> Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </c:if>

    <a href="contact.html" >Contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="account.html">Edit Account</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="home.html">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>

<div id="profileLeft">
    <table>
        <tr><td><a href="tutorials.html">Tutorials</a></td></tr>&nbsp;&nbsp;
        <tr><td><a href="e-books.html">E-books</a></td></tr>&nbsp;&nbsp;
        <tr><td><a href="blogs.html">Blogs</a></td></tr>&nbsp;&nbsp;
        <tr><td><a href="reviews.html">Book reviews</a></td></tr>&nbsp;&nbsp;
    </table>
</div>
</sec:authorize>
<footer>
    <p>&copy; 2015 Anemone Company, Inc.</p>
</footer>

</body>
</html>