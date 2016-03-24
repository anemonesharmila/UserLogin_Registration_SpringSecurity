<%--
  Created by IntelliJ IDEA.
  User: sharmila
  Date: 3/5/2016
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Upload File </title>
</head>
<style>
    .error {
        color: #ff0000;
    }

    .errorblock {
        color: #000;
        background-color: #ffEEEE;
        border: 3px solid #ff0000;
        padding: 8px;
        margin: 16px;
    }
</style>
<body>

<form:form method="post" commandName="fileUploadForm" enctype="multipart/form-data">
<form:errors path="*" cssClass="errorblock" element="div"/>
    Please select a file to upload
    <input type="file" class="file"/>
    <input type="submit" value="upload"/>

    <span><form:errors path="file" cssClass="error"/></span>
</form:form>
</body>
</html>
