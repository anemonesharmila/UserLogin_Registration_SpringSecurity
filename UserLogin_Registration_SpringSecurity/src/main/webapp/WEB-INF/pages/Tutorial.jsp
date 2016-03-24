<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 1/31/2016
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Off Canvas Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="dropdown" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ZProject</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="Introduction.html">Introduction</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li class="divider"><a href="index.html">Go to home page</a> </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="SignIn.html">SignIN</a></li>
                <li><a href="signinboot.html">signinboot</a></li>
                <li><a href="LatestNews.html">Latest News</a></li>
            </ul>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav><!-- /.navbar -->

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
            </p>
            <%--<div class="jumbotron">--%>
                <%--<h1>Lets learn!</h1>--%>
                <%--<p>Here are few tutorials to get started with :)</p>--%>
            <%--</div>--%>
            <div class="row">
                <div class="col-xs-6 col-lg-4">
                    <h2>Introduction to Java</h2>
                    <p>Java is a fun programming language, its object- oriented and easy. </p>
                    <p><a class="btn btn-default" href="Java.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>Introduction to RDMBS</h2>
                    <p>Relational Database Management System is mordern technique to store data in database.
                        The data are interrelated to each other in several ways. </p>
                    <p><a class="btn btn-default" href="Rdbms.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>Information Technology</h2>
                    <p>Information technology has been a boon to the mordern day society. </p>
                    <p><a class="btn btn-default" href="It.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->

                <div class="col-xs-6 col-lg-4">
                    <h2>Discrete Structure</h2>
                    <p>Contradictions, propsitions ,negations </p>
                    <p><a class="btn btn-default" href="DiscreteStructure.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>Web technology</h2>
                    <p>Web technology is related to different aspects of the web. i.e World Wide Web </p>
                    <p><a class="btn btn-default" href="WebTech.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->

                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
                <div class="col-xs-6 col-lg-4">
                    <h2>programming language</h2>
                    <p>The foundation to any programming language</p>
                    <p><a class="btn btn-default" href="c.html" role="button">View details &raquo;</a></p>
                </div><!--/.col-xs-6.col-lg-4-->
            </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">

                <a href="Math.html" class="list-group-item active">Math</a>
                <a href="Science.html" class="list-group-item active">Science</a>
                <a href="Computer.html" class="list-group-item active">Computer</a>
                <a href="Css.html" class="list-group-item">Css</a>
                <a href="bootstrap.html" class="list-group-item">Bootstrap</a>
                <a href="Mysql.html" class="list-group-item">Mysql</a>
                <a href="C.html" class="list-group-item">C Prpgramming Language</a>
                <a href="Java.html" class="list-group-item">Java</a>
                <a href="DatabaseAd.html" class="list-group-item">Database Administration</a>
                <a href="Toc.html" class="list-group-item">TOC</a>
                <a href="Stat.html" class="list-group-item">Statitics</a>
                <a href="News.html" class="list-group-item">Latest News</a>
            </div>
        </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->

    <hr>

    <footer>
        <p align="center">&copy; 2015 Anemone Company, Inc.</p>
        ___________________________________________________________________________________________________________________________________________________
    </footer>
    <nav class="navbar  navbar-default navbar-fixed-bottom  " role="navigation">
        <div>
            <ul class="nav navbar-nav ">
                <li class="active"><a href="#">ZProject</a></li>
                <li><a href="customercare.html">customer care</a> </li>
                <li><a href="maps.html">maps</a> </li>
                <li><a href="branches.html">branches</a> </li>
                <li><a href="contact.html">contact</a> </li>

            </ul>
        </div>
    </nav>
</div><!--/.container-->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/webstuffs/js/jquery.min.js"><\/script>')</script>
<script src="/webstuffs/js/bootstrap.min.js"></script>
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>--%>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<script src=" http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css "></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
<%--<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">--%>
</body>
</html>
