<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Maven + Spring MVC</title>

	<%--<spring:url value="/webstuffs/css/hello.css" var="coreCss" />--%>
	<%--<spring:url value="/webstuffs/css/bootstrap.min.css" var="bootstrapCss" />--%>
	<link href="/webstuffs/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${coreCss}" rel="stylesheet" />
</head>
<body>
<ul class="nav nav-pills nav-stacked col-lg-4 col-lg-2" id="Ul">
    <li class="active"><a href="#">Home</a> </li>
    <li><a href="Tutorial.html" >Tutorial</a></li>
    <li><a href="signUp.html" >Signup</a></li>
    <li><a href="SignIn.html" >SignIn</a></li>
    <li><a href="SignIn.html" >Java</a></li>
    <li><a href="SignIn.html" >Science</a></li>
    <li><a href="SignIn.html" >Math</a></li>


</ul>

<ul class="nav nav-tabs nav-justified">
    <li><a href="Tutorial.html" >Tutorial</a></li>
    <li><a href="signUp.html" >Signup</a></li>
    <li><a href="SignIn.html" >SignIn</a></li>
    <li><a href="SignIn.html" >Java</a></li>
    <li><a href="SignIn.html" >Science</a></li>
    <li><a href="SignIn.html" >Math</a></li>
    <li><a href="#">PHP</a></li> </ul>

<ul class="nav nav-tabs">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">SVN</a></li>
    <li><a href="#">iOS</a></li>
    <li class="disabled"><a href="#">VB.Net(disabled link)</a></li>
    <li><a href="#">Java</a></li>
    <li><a href="#">PHP</a></li>
</ul>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">TutorialsPoint</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">iOS</a></li>
            <li><a href="#">SVN</a></li>
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Java <b class="caret"></b> </a>
                <ul class="dropdown-menu">
                    <li><a href="#">jmeter</a></li>
                    <li><a href="#">EJB</a></li>
                    <li><a href="#">Jasper Report</a></li>
                    <li class="divider"></li>
    <li><a href="#">Separated link</a></li>
                    <li class="divider"></li>
                    <li><a href="#">One more separated link</a></li>
                </ul> </li>
            </ul>
        </div>
    </nav>
<footer>
    <p align="center">&copy; 2015 Anemone Company, Inc.</p>
    ___________________________________________________________________________________________________________________________________________________
</footer>

</body>
</html>