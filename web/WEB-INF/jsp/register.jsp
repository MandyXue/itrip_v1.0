<%--
  Created by IntelliJ IDEA.
  User: mandyxue
  Date: 15/5/28
  Time: 上午12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <title>sign up</title>

    <!-- CSS -->
    <%
        String basePath = request.getContextPath();
    %>
    <link href="<%=basePath%>/css/reset.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=basePath%>/css/supersized.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <%--<link rel="stylesheet" href="/WEB-INF/page/css/reset.css">--%>
    <%--<link rel="stylesheet" href="/WEB-INF/page/css/supersized.css">--%>
    <%--<link rel="stylesheet" href="/WEB-INF/page/css/style.css">--%>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>Join Us</h1>
    <form action="register" method="post">
        <input type="text" name="username" class="username" placeholder="username">
        <input type="text" name="email" class="email" placeholder="email address">
        <input type="password" name="password" class="password" placeholder="password">
        <input type="password" name="password2" class="password2" placeholder="confirm your password">
        <button type="submit">submit</button>
        <div class="error"><span>+</span></div>
    </form>
</div>

<!-- Javascript -->
<script src="<%=basePath%>/js/jquery-1.8.2.min.js"></script>
<script src="<%=basePath%>/js/supersized.3.2.7.min.js"></script>
<script src="<%=basePath%>/js/supersized-init.js"></script>
<script src="<%=basePath%>/js/scripts.js"></script>

</body>

</html>
