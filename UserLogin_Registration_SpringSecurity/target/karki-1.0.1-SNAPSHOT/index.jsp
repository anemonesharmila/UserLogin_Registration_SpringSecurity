
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <spring:url value="/webstuffs/css/hello.css" var="coreCss" />
    <spring:url value="/webstuffs/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>
<body>

<div class="container">

    <!-- Static navbar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">ZProject</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="signUp.html">Sign Up</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"  aria-expanded="false">Get Information <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Nav header</li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
                    <li><a href="SignIn.html">SignIN</a></li>
                    <li><a href="signinboot.html">signinboot</a></li>
                    <li><a href="LatestNews.html">Latest News</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>

    <!-- Main component for a primary marketing message or call to action -->
    <div class="jumbotron">
        <h1>Get Started with the tutorials</h1>
        <p>Learning is fun and knowledge is wisdom.</p>
        <p>
            <a class="btn btn-lg btn-primary" href="Tutorial.html" role="button">View tutorials&raquo;</a>
        </p>
    </div>

</div> <!-- /container -->

<nav class="navbar  navbar-default navbar-fixed-bottom" role="navigation">
    <div>
            <ul class="nav navbar-nav">
            <li class="active"><a href="#">ZProject</a></li>
                <li><a href="customercare.html">customer care</a> </li>
                <li><a href="maps.html">maps</a> </li>
                <li><a href="branches.html">branches</a> </li>
                <li><a href="contact.html">contact</a> </li>

            </ul>
        </div>
</nav>

</body>
</html>
