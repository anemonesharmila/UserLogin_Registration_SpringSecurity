<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 2/4/2016
  Time: 6:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>News Feed</title>
    <link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
     <button  type="button" class="navbar-toggle collapsed" data-toggle=dropdown" data-target="#navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
     </button>
        <a href="#" class="navbar-brand">ZProject</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar">
        <ul class="nav navbar-nav">
            <li class="active" ><a href="#">Latest News</a></li>
            <li><a href="Tutorial.html">Tutorials</a></li>
            <li> <a href="contact.html">Contact</a></li>
            <li><a href="introduction.html">Introduction</a></li>
            <li> <a href="signUp.html">Sign Up</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false">About Project <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="introduction.html">Introduction</a></li>
                    <li class="divider">
                        <a href="LatestNews.html"></a><b class="caret"></b>
                    </li>
                </ul>
            </li>
        </ul>

            <form class=" nav navbar navbar-form navbar-right" role="search">
                <input type="text" class="form-control" placeholder="search"/>
                <button type="button"  class="btn btn-sm"/>Go!</button>
            </form>

    </div>
</nav>
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
<footer>
    <p align="center">&copy; 2015 Anemone Company, Inc.</p>
    ______________________________________________________________________________________________________________________________________________________________________________________
</footer>


</body>
</html>
