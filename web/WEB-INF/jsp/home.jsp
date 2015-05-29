<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/5/27
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <%--set base path--%>
    <c:set var="bp" value="${pageContext.request.contextPath}"/>

    <title>iTrip-map</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- page css -->
    <link rel="stylesheet" href="${bp}/css/foundation.min.css">
    <link rel="stylesheet" href="${bp}/css/superfish.css">
    <link rel="stylesheet" href="${bp}/css/stylesheet.css">
    <link rel="stylesheet" href="${bp}/js/slider/flexslider.css">
    <link rel="stylesheet" href="${bp}/js/slider/flexcar.css">
    <link href='http://fonts.useso.com/css?family=Quando' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Droid+Sans:400,300' rel='stylesheet' type='text/css'>
    <!-- map css -->
    <link rel="stylesheet" href="${bp}/css/ammap.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="${bp}/css/mystyle.css">
    <!-- page script -->
    <script src="${bp}/js/vendor/custom.modernizr.js"></script>
    <script>
        Modernizr.load({
            // test if browser understands media queries
            test: Modernizr.mq('only all'),
            // if not load ie8-grid
            nope: 'css/ie8-grid-foundation-4.css'
        });
    </script>

    <!-- map script -->
    <script src="${bp}/js/ammap.js" type="text/javascript"></script>
    <!-- map file should be included after ammap.js -->
    <script src="${bp}/js/chinaLow.js" type="text/javascript"></script>
    <script>
        var targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";

        AmCharts.makeChart("mapdiv", {

            type: "map",
            path: "js/",

            imagesSettings: {
                rollOverColor: "#cc0000",
                rollOverScale: 3,
                selectedScale: 3,
                selectedColor: "#cc0000"
            },

            areasSettings: {
                autoZoom: true,
                // selectedColor: "#3CB371"
                outlineThickness:0.1
            },

            dataProvider: {
                map: "chinaLow",
                images: [{
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "响沙湾",
                    latitude: 40.2256,
                    longitude: 109.9556,
                    // set url
                    url: "detail?spot=xiangshawan"
                },
                {
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "克什克腾旗热水塘镇",
                    latitude: 43.4580,
                    longitude: 117.7263,
                    // set url
                    url: "detail?spot=reshui"
                },
                {
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "克什克腾世界地质公园",
                    latitude: 43.9738,
                    longitude: 117.4775,
                    // set url
                    url: "detail?spot=dizhigongyuan"
                },
                {
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "额济纳胡杨林",
                    latitude: 41.9941,
                    longitude: 101.1905,
                    // set url
                    url: "detail?spot=ejinahuyanglin"
                },
                {
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "大青沟",
                    latitude: 42.7605,
                    longitude: 122.1983,
                    // set url
                    url: "detail?spot=daqinggou"
                },
                {
                    svgPath: targetSVG,
                    zoomLevel: 5,
                    scale: 0.5,
                    title: "锡林郭勒大草原",
                    latitude: 43.6469,
                    longitude: 116.1805,
                    // set url
                    url: "detail?spot=xilinguolexilamulun"
                }]
                // getAreasFromMap: true
            },
            smallMap: {}
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
                                <!-- sign in -->
                                <li class="active"><a href="login">sign in</a></li>
                                <!-- sign up -->
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
    <!-- map view -->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a></div>
    <div class="slider">
        <div class="row">
            <div class="columns large-12">
                <div class="row flexslider-row">
                    <div class="columns large-12">
                        <div id="mapdiv" class="mapcolor"></div>
                    </div>
                </div>
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
        nope: 'js/placeholder.min.js'
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
