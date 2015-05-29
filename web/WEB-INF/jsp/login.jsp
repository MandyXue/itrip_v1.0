<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/5/27
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <%--set base path--%>
    <c:set var="bp" value="${pageContext.request.contextPath}"/>

    <meta charset="utf-8">
    <title>sign in</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${bp}/css/reset.css">
    <link rel="stylesheet" href="${bp}/css/supersized.css">
    <link rel="stylesheet" href="${bp}/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>Sign In</h1>
    <form action="login" method="post">
        <input type="text" name="username" class="username" placeholder="username">
        <input type="password" name="password" class="password" placeholder="password">
        <button type="submit">submit</button>
        <div class="error"><span>+</span></div>
    </form>
</div>

<!-- Javascript -->
<script src="${bp}/js/jquery-1.8.2.min.js"></script>
<script src="${bp}/js/supersized.3.2.7.min.js"></script>
<script src="${bp}/js/supersized-init.js"></script>
<script src="${bp}/js/scripts.js"></script>

</body>

</html>