<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 12/18/2015
  Time: 1:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Information</title>
</head>
<style>
    #contactTop
    {
        background-color: aliceblue;
    }
    #contactDown
    {
        background-color: burlywood;
        margin: 200px;
        -webkit-border-radius: 22px;
        width: 300px;

    }
</style>
<body>
<h1><% out.println("My ip adddress is" +request.getRemoteAddr()); %></h1>
<div id="contactTop">
    <a href="SignIn.html">Sign in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="contact.html">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="introduction.html">Introduction</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="signUp.html">Sign Up</a>
</div>

<div id="contactDown">
    <address>
        <strong>Anemone Company, Ince</strong>
        Basundhara,Kathmandu
        <abbr title="Phone">P:</abbr> (123) 456-789
    </address>

</div>
<footer>
    <p align="center">&copy; 2015 Anemone Company, Inc.</p>
    ___________________________________________________________________________________________________________________________________________________
</footer>


</body>
</html>
