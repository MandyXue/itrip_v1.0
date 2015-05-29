<%--
  Created by IntelliJ IDEA.
  User: mandyxue
  Date: 15/5/28
  Time: 上午12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html><!--<![endif]-->
<head>

    <%--set base path--%>
    <c:set var="bp" value="${pageContext.request.contextPath}"/>

    <title>iTrip-detail</title>
    <meta charset="utf-8">
    <%--css--%>
    <link rel="stylesheet" href="${bp}/css/foundation.min.css">
    <link rel="stylesheet" href="${bp}/css/superfish.css">
    <link rel="stylesheet" href="${bp}/css/stylesheet.css">
    <link rel="stylesheet" href="${bp}/js/slider/flexslider.css">
    <link rel="stylesheet" href="${bp}/js/slider/flexcar.css">
    <link href='http://fonts.useso.com/css?family=Quando' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Droid+Sans:400,300' rel='stylesheet' type='text/css'>
    <%--js--%>
    <script src="${bp}/js/vendor/custom.modernizr.js"></script>
    <script>
        Modernizr.load({
            // test if browser understands media queries
            test: Modernizr.mq('only all'),
            // if not load ie8-grid
            nope: 'css/ie8-grid-foundation-4.css'
        });
    </script>
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="${bp}/css/ie-fixes.css">
    <![endif]-->
</head>
<body>
<div class="header">
    <div class="row">
        <div class="columns large-12">
            <div class="row header-inner">
                <!-- itrip logo pic -->
                <div class="columns large-3"><img src="${bp}/images/itrip.png" alt="" class="logo"></div>
                <!-- relax and be yourself -->
                <div class="columns large-3"><img src="${bp}/images/slogan.png" alt="" class="logo"></div>
                <!-- navigation bar -->
                <div class="columns large-6">
                    <nav>
                        <section>
                            <ul class="sf-menu large-8">
                                <li class="active"><a href="login">sign in</a></li>
                                <li><a href="register">sign up</a></li>
                                <%--home--%>
                                <li><a href="home">home</a></li>
                            </ul>
                        </section>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- picture slider -->
<div class="row content-wrapper">
    <div class="columns large-12">
        <div class="row wrapper">
            <div class="columns large-7 content">
                <!-- picture slider -->
                <%--<c:forEach var="list" items="${requestScope.list}">--%>
                    <c:if test="${requestScope.type=='spot'}">
                        <c:forEach var="list" items="${requestScope.list}">
                            <h1><c:out value="${list.name}"/></h1>
                        </c:forEach>
                    </c:if>
                    <c:if test="${requestScope.type=='food'}">
                        <c:forEach var="findFood" items="${requestScope.findFood}">
                            <h1><c:out value="${findFood.name}"/></h1>
                        </c:forEach>
                    </c:if>
                    <%--<h1 class="page-title services"><c:out value="${list.name}"/></h1>--%>
                <%--</c:forEach>--%>

                <div class="flexslider">
                    <ul class="slides">
                        <c:if test="${requestScope.type=='spot'}">
                            <c:forEach var="list" items="${requestScope.list}">
                                <li><img src="<c:out value="${bp}/images/trip/${list.name}/1.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/trip/${list.name}/2.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/trip/${list.name}/3.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/trip/${list.name}/4.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/trip/${list.name}/5.jpg"/>"></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${requestScope.type=='food'}">
                            <c:forEach var="findFood" items="${requestScope.findFood}">
                                <li><img src="<c:out value="${bp}/images/food/${findFood.name}/1.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/food/${findFood.name}/2.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/food/${findFood.name}/3.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/food/${findFood.name}/4.jpg"/>"></li>
                                <li><img src="<c:out value="${bp}/images/food/${findFood.name}/5.jpg"/>"></li>
                            </c:forEach>
                        </c:if>
                        <%--<c:forEach var="list" items="${requestScope.list}">--%>
                            <%--<li><img src="<c:out value="${bp}/images/trip/${list.name}/1.jpg"/>"></li>--%>
                            <%--<li><img src="<c:out value="${bp}/images/trip/${list.name}/2.jpg"/>"></li>--%>
                            <%--<li><img src="<c:out value="${bp}/images/trip/${list.name}/3.jpg"/>"></li>--%>
                            <%--<li><img src="<c:out value="${bp}/images/trip/${list.name}/4.jpg"/>"></li>--%>
                            <%--<li><img src="<c:out value="${bp}/images/trip/${list.name}/5.jpg"/>"></li>--%>
                        <%--</c:forEach>--%>
                    </ul>
                </div>
                <!-- description -->
                <div class="columns large-12 content">
                    <c:if test="${requestScope.type=='spot'}">
                        <c:forEach var="list" items="${requestScope.list}">
                            <p><c:out value="${list.description}"/></p>
                        </c:forEach>
                    </c:if>
                    <c:if test="${requestScope.type=='food'}">
                        <c:forEach var="findFood" items="${requestScope.findFood}">
                            <p><c:out value="${findFood.description}"/></p>
                        </c:forEach>
                    </c:if>
                    <%--<c:forEach var="list" items="${requestScope.list}">--%>
                        <%--<p><c:out value="${list.description}"/></p>--%>
                    <%--</c:forEach>--%>
                </div>
            </div>
            <div class="columns large-4 large-offset-1 content sidebar">
                <h1 class="page-title services">Trip</h1>
                <ul>
                    <c:forEach var="listAll" items="${requestScope.listAll}">
                        <li class="bullet"><a href="detail?spot=${listAll.name}">${listAll.name}</a></li>
                    </c:forEach>
                    <%--<li class="bullet"><a href="#">xiangshawan</a></li>--%>
                    <%--<li class="bullet"><a href="#">daqinggou</a></li>--%>
                    <%--<li class="bullet"><a href="#">dizhigongyuan</a></li>--%>
                    <%--<li class="bullet"><a href="#">reshui</a></li>--%>
                    <%--<li class="bullet"><a href="#">ejinahuyanglin</a></li>--%>
                    <%--<li class="bullet"><a href="#">xilinguoledacaoyuan</a></li>--%>
                </ul>
                <h1 class="page-title services">food</h1>
                <ul>
                    <c:forEach var="listFood" items="${requestScope.listFood}">
                        <li class="bullet"><a href="detailFood?food=${listFood.name}">${listFood.name}</a></li>
                    </c:forEach>
                    <%--<li class="bullet"><a href="#">menmian</a></li>--%>
                    <%--<li class="bullet"><a href="#">beizi</a></li>--%>
                    <%--<li class="bullet"><a href="#">youmian</a></li>--%>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- credit & reference -->
<div class="credit-row">
    <div class="row">
        <div class="columns large-11 credit"> &copy; 2015 All rights reserved by <a>iTrip.</a> Members: <a title="模板之家">Jojen,Angle,Mandy,Owen</a> - Referenced by <a href="http://www.cssmoban.com/">www.cssmoban.com</a> & <a href="http://www.amcharts.com/">www.amcharts.com</a></div>
        <div class="columns large-1"> <img src="${bp}/images/toparrow.png" alt="" class="scrollToTop"> </div>
    </div>
</div>
<!-- up button -->
<script src="${bp}/js/jquery.min.js"></script>
<script src="${bp}/js/hoverIntent.js"></script>
<script src="${bp}/js/superfish.js"></script>
<script src="${bp}/js/slider/jquery.flexslider.js"></script>
<script>
    Modernizr.load({
        test: Modernizr.placeholder,
        nope: '${bp}/js/placeholder.min.js'
    });
    function goToNewPage() {
        if (document.getElementById('target').value) {
            window.location.href = document.getElementById('target').value;
        }
    }
</script>
<script>
    $(document).ready(function () {
        $('ul.sf-menu').superfish({
            animation: {
                height: 'show'
            },
            delay: 400
        });
        $("img.scrollToTop").click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        });
        $('.flexslider').flexslider();
        $('.flexcar').flexslider();
    });
</script>
</body>
</html>
