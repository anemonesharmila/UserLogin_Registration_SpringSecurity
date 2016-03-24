<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/10/2015
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin Page</title>
    <link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet">

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


   <%--<nav class="navbar navbar-fixed-bottom">--%>
       <%--<div class="container">--%>
           <%--<div class="navbar-header" data-toggle="collapse" data-target="#navbar">--%>
               <%--<button type="button" class="navbar-toggle" >--%>
                   <%--<span class="sr-only">Toggle navigation</span>--%>
                   <%--<span class="icon-bar"></span>--%>
                   <%--<span class="icon-bar"></span>--%>
                   <%--<span class="icon-bar"></span>--%>
               <%--</button>--%>
                <%--<a class="navbar-header" href="#">ZProject</a>--%>
           <%--</div>--%>
           <%--<div id="#navbar">--%>
                <%--<ul>--%>
                    <%--<li><c:if test="${pageContext.request.userPrincipal.name != null}">--%>

                            <%--Welcome : ${pageContext.request.userPrincipal.name} | <a--%>
                                <%--href="javascript:formSubmit()"> Logout</a>--%>
                    <%--</c:if></li>--%>
                    <%--<li><a href="EditUserDetails.html">Edit User Details</a></li>--%>
                    <%--<li><a href="UserList.html">User List</a></li>--%>
                    <%--<li><a href="Tutorial.html">Tutorials</a></li>--%>

                <%--</ul>--%>
           <%--</div>--%>
       <%--</div>--%>
   <%--</nav>--%>
<nav class="navbar navbar-fixed-top navbar-inverse">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ZProject</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="Introduction.html">Introduction</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>

        </div><!-- /.nav-collapse -->
    <!-- /.container -->
</nav><!-- /.navbar -->
<div class="container">
    <div class="col-xs-3 col-sm-3" id="sidebar" align="center" >

    <div class="list-group">
        <a href="EditUserDetails.html" class="list-group-item active">Edit User Details</a>
        <a href="Tutorial.html" class="list-group-item active">Tutorial</a>
        <a href="LatestNews.html" class="list-group-item active">Latest News</a>
        <a href="UserList.html" class="list-group-item active">User List</a>
        <a href="EditUserDetails.html" class="list-group-item active">Edit User Details</a>
    </div>
</div>

</div>

<div class="row row-offcanvas row-offcanvas-right">
    <div class="row">

    </div>

</div>

<footer>
    <p>&copy; 2015 Anemone Company, Inc.</p>
</footer>

</body>
</html>
