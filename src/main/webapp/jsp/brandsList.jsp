<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>汽车资讯 - 最新的汽车信息平台</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/default.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/videoList.css">

    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/videoList2.css">

    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/videoList3.css">

    <style type="text/css">
        <!--
        BODY {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        DIV {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        DL {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        DT {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        DD {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        UL {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        OL {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        LI {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        /*H1 {*/
        /*PADDING-BOTTOM: 0px;*/
        /*MARGIN: 0px;*/
        /*PADDING-LEFT: 0px;*/
        /*PADDING-RIGHT: 0px;*/
        /*PADDING-TOP: 0px*/
        /*}*/

        H2 {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        P {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        LI {
            LIST-STYLE-TYPE: none;
            LIST-STYLE-IMAGE: none
        }

        H2 {
            FONT-SIZE: 100%
        }

        #change-city {
            width: 1000px;
            margin: 20px auto;
        }

        #change-city .choosecities {
            BORDER-BOTTOM: #a3d7df 1px solid;
            BORDER-LEFT: #a3d7df 1px solid;
            PADDING-BOTTOM: 60px;
            BACKGROUND: #fff;
            BORDER-TOP: #a3d7df 1px solid;
            BORDER-RIGHT: #a3d7df 1px solid;
            box-shadow: 0 0 1px #d4edf4
        }

        #change-city .choosecities A:hover {
            TEXT-DECORATION: none
        }

        #change-city .citieslist H2 {
            POSITION: relative;
            PADDING-BOTTOM: 0px;
            LINE-HEIGHT: 30px;
            MARGIN: 20px 20px 12px;
            PADDING-LEFT: 14px;
            PADDING-RIGHT: 14px;
            ZOOM: 1;
            DISPLAY: inline-block;
            BACKGROUND: #00c7c7;
            HEIGHT: 32px;
            COLOR: #fff;
            PADDING-TOP: 0px;
            border-radius: 0
        }

        #change-city .citieslist H2 SPAN {
            BORDER-BOTTOM: #fff 6px solid;
            POSITION: absolute;
            BORDER-LEFT: #fff 6px solid;
            LINE-HEIGHT: 0;
            WIDTH: 0px;
            DISPLAY: block;
            FLOAT: none;
            HEIGHT: 0px;
            FONT-SIZE: 0px;
            BORDER-TOP: #00c7c7 6px solid;
            TOP: 32px;
            BORDER-RIGHT: #fff 6px solid;
            LEFT: 20px
        }

        #change-city .citieslist LI {
            BORDER-BOTTOM: #fff 1px solid;
            BORDER-TOP: #fff 1px solid
        }

        #change-city .citieslist P {
            BORDER-BOTTOM: #fff 1px solid;
            PADDING-BOTTOM: 6px;
            PADDING-LEFT: 30px;
            PADDING-RIGHT: 10px;
            BORDER-TOP: #fff 1px solid;
            PADDING-TOP: 6px
        }

        #change-city .citieslist SPAN.label {
            BORDER-BOTTOM: #ddd 1px solid;
            BORDER-LEFT: #ddd 1px solid;
            LINE-HEIGHT: 24px;
            WIDTH: 30px;
            ZOOM: 1;
            DISPLAY: inline-block;
            HEIGHT: 30px;
            COLOR: #666;
            VERTICAL-ALIGN: top;
            BORDER-TOP: #ddd 1px solid;
            MARGIN-RIGHT: 5px;
            BORDER-RIGHT: #ddd 1px solid;
            border-radius: 0
        }

        #change-city .citieslist SPAN.label STRONG {
            BORDER-BOTTOM: #f7f7f7 1px solid;
            TEXT-ALIGN: center;
            BORDER-LEFT: #f7f7f7 1px solid;
            WIDTH: 28px;
            DISPLAY: block;
            FONT-FAMILY: Tahoma;
            BACKGROUND: #f1f1f1;
            HEIGHT: 28px;
            FONT-SIZE: 16px;
            BORDER-TOP: #f7f7f7 1px solid;
            BORDER-RIGHT: #f7f7f7 1px solid;
            border-radius: 0
        }

        #change-city .citieslist SPAN {
            WIDTH: 880px;
            ZOOM: 1;
            DISPLAY: inline-block;
            VERTICAL-ALIGN: top
        }

        #change-city .citieslist SPAN I {
            FONT-STYLE: normal;
            MARGIN: 0px 3px;
            COLOR: #ccc
        }

        #change-city .citieslist .hover {
            BORDER-BOTTOM-COLOR: #e5e5e5;
            BORDER-TOP-COLOR: #e5e5e5;
            BORDER-RIGHT-COLOR: #e5e5e5;
            BORDER-LEFT-COLOR: #e5e5e5
        }

        #change-city .citieslist .hover P {
            BACKGROUND: #f7f7f7
        }

        #change-city .citieslist .hover SPAN.label {
            BORDER-BOTTOM-COLOR: #1fb7bb;
            BORDER-TOP-COLOR: #1fb7bb;
            BORDER-RIGHT-COLOR: #1fb7bb;
            BORDER-LEFT-COLOR: #1fb7bb
        }

        #change-city .citieslist .hover SPAN.label STRONG {
            BORDER-BOTTOM-COLOR: #00c7c7;
            BORDER-TOP-COLOR: #00c7c7;
            BACKGROUND: #00c7c7;
            COLOR: #fff;
            BORDER-RIGHT-COLOR: #00c7c7;
            BORDER-LEFT-COLOR: #00c7c7
        }

        #change-city .citieslist A {
            PADDING-BOTTOM: 1px;
            LINE-HEIGHT: 20px;
            MARGIN: 5px 10px;
            PADDING: 5px 10px;
            ZOOM: 1;
            DISPLAY: inline-block;
            HEIGHT: 20px;
            border-radius: 0
        }

        #change-city .citieslist A:hover {
            BACKGROUND: #00c7c7;
            COLOR: #fff
        }

        #change-city .citieslist .isonline {
            FONT-WEIGHT: bold
        }

        #change-city .citieslist .isoffline {
            FONT-WEIGHT: bold
        }

        #bdw {
            MIN-HEIGHT: 500px
        }

        .cf {
            ZOOM: 1
        }

        .cf:after {
            DISPLAY: block;
            HEIGHT: 0px;
            VISIBILITY: hidden;
            CLEAR: both;
            OVERFLOW: hidden;
            CONTENT: ''
        }

        H2 {
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-LEFT: 0px;
            PADDING-RIGHT: 0px;
            PADDING-TOP: 0px
        }

        BODY {
            FONT: 14px/1.5 Tahoma, Helvetica, arial, sans-serif;
            /*BACKGROUND: #d6e9ec;*/
            COLOR: #000
        }

        A {
            COLOR: #399;
            TEXT-DECORATION: none
        }

        A:hover {
            TEXT-DECORATION: underline
        }

        SPAN.money {
            FONT-FAMILY: arial
        }

        SPAN.required {
            COLOR: red
        }

        -->
    </style>


    <style type="text/css">
        .footer div {
            padding-top: 30px;
            text-align: center;
        }

        .footer div a {
            color: #666;
            font-size: 14px;
        }

        .footer div small {
            color: #eee;
            width: 20px;
            text-align: center;
            margin: 0 25px;
        }

        .footer .copyright {
            color: #666;
            padding-bottom: 10px;
        }

        p {
            position: relative;
            line-height: 1.4em;
            /* 3 times the line-height to show 3 lines */
            /*height: 4.2em;*/
            overflow: hidden;
        }

        #btn1 {
            width: 141px;
            height: 37px;
            font-size: 14px;
            line-height: 14px;
            background: url("<%=basePath%>images/button.jpg") no-repeat left top;
            color: #959595;
            padding-bottom: 2px;
        }

        #btn2 {
            width: 141px;
            height: 37px;
            font-size: 14px;
            line-height: 14px;
            background: url("<%=basePath%>images/button.jpg") no-repeat left top;
            color: #959595;
            padding-bottom: 2px;
        }

        #main {
            height: 50px;
            width: 100%;
        }

        #left {
            float: left;
            height: 20px;
            width: 20%;
            /*border: medium solid #0000CC;*/
        }

        #right {
            float: left;
            height: 20px;
            width: 80%;
            /*border: medium solid #0000CC;*/
        }
    </style>
</head>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/scrollTop.js"></script>
<script type="text/javascript">
    function selectBy(tag) {
        if (tag == 1) {
            window.location = "<%=basePath%>cars/list/";
        }

    }
</script>
<body>
<div id="upbg"></div>
<div id="outer">
    <div id="header">
        <div id="headercontent">
            <h1>汽车资讯<sup>1.0</sup></h1>
            <h2>A new free car information platform</h2>
        </div>
    </div>
    <form method="get" action="<%=basePath%>search/news">
        <div id="search">
            <input type="text" class="text" maxlength="64" name="keywords"/>
            <input type="submit" class="submit" value="Search"/>
        </div>
    </form>
    <%--
        <div id="headerpic"></div>
    --%>
    <div id="menu">
        <ul>
            <li><a href="<%=basePath%>news/list/1">首页</a></li>
            <li><a href="<%=basePath%>news/list/2">行情</a></li>
            <li><a href="<%=basePath%>news/list/3">促销</a></li>
            <li><a href="<%=basePath%>video/list">视频</a></li>
            <li><a href="<%=basePath%>cars/list/2" class="active">选车</a></li>
            <li><a href="http://localhost:8080">论坛</a></li>
        </ul>
    </div>
    <div class="back" id="back" style="display: block;"></div>
    <div id="menubottom"></div>
    <div id="change-city">
        <div id="bdw" class="bdw">
            <div id="bd" class="cf">
                <div id="main">
                    <div id="left"><input type="button" id="btn1"
                                          onclick="window.location.href='<%=basePath%>cars/list/1'" value="按图标选择"/>
                    </div>
                    <div id="right"><input type="button" id="btn2"
                                           onclick="window.location.href='<%=basePath%>cars/list/2'" value="按名字选择"/>
                    </div>
                </div>
                <div class="choosecities">
                    <div class="citieslist">
                        <%--<h2>按拼音首字母选择<span class="arrow">&raquo;</span></h2>--%>

                        <ol class="hasallcity">
                            <li id="city-A">
                                <p class="cf">
                                    <span class="label"><strong>A</strong></span>
                            <span>
                            <c:forEach var="brands" items="${brandsList}">
                                <c:if test="${brands.initial == 'A'}">
                                    <c:if test="${tag == 1}">
                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                             style="width: 50px;">
                                    </c:if>
                                    <c:if test="${tag == 2}">
                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                ${brands.name}
                                        </a>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            </span>
                                </p>
                            </li>
                            <li id="city-B">
                                <p class="cf">
                                    <span class="label"><strong>B</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'B'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-C">
                                <p class="cf">
                                    <span class="label"><strong>C</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'C'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-D">
                                <p class="cf">
                                    <span class="label"><strong>D</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'D'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <%--<li id="city-E">--%>
                            <%--<p class="cf">--%>
                            <%--<span class="label"><strong>E</strong></span>--%>
                            <%--<span>--%>
                            <%--<c:forEach var="brands" items="${brandsList}">--%>
                            <%--<c:if test="${brands.initial == 'E'}">--%>
                            <%--<a class="isonline" href="http://www.html580.com">--%>
                            <%--${brands.name}--%>
                            <%--</a>--%>
                            <%--</c:if>--%>
                            <%--</c:forEach>--%>
                            <%--</span>--%>
                            <%--</p>--%>
                            <%--</li>--%>
                            <li id="city-F">
                                <p class="cf">
                                    <span class="label"><strong>F</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'F'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-G">
                                <p class="cf">
                                    <span class="label"><strong>G</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'G'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-H">
                                <p class="cf">
                                    <span class="label"><strong>H</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'H'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-J">
                                <p class="cf">
                                    <span class="label"><strong>J</strong></span>
										<span>
										<c:forEach var="brands" items="${brandsList}">
                                            <c:if test="${brands.initial == 'J'}">
                                                <c:if test="${tag == 1}">
                                                    <img src="${brands.logoUrl}" alt="${brands.name}"
                                                         style="width: 50px;">
                                                </c:if>
                                                <c:if test="${tag == 2}">
                                                    <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                            ${brands.name}
                                                    </a>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-K">
                                <p class="cf">
                                    <span class="label"><strong>K</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'K'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-L">
                                <p class="cf"><span class="label"><strong>L</strong></span>
										<span>
										<c:forEach var="brands" items="${brandsList}">
                                            <c:if test="${brands.initial == 'L'}">
                                                <c:if test="${tag == 1}">
                                                    <img src="${brands.logoUrl}" alt="${brands.name}"
                                                         style="width: 50px;">
                                                </c:if>
                                                <c:if test="${tag == 2}">
                                                    <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                            ${brands.name}
                                                    </a>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-M">
                                <p class="cf"><span class="label"><strong>M</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'M'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-N">
                                <p class="cf"><span class="label"><strong>N</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'N'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-P">
                                <p class="cf"><span class="label"><strong>P</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'P'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
								        </span>
                                </p>
                            </li>
                            <li id="city-Q">
                                <p class="cf"><span class="label"><strong>Q</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'Q'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-R">
                                <p class="cf"><span class="label"><strong>R</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'R'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
										</span>
                                </p>
                            </li>
                            <li id="city-S">
                                <p class="cf"><span class="label"><strong>S</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'S'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-T">
                                <p class="cf"><span class="label"><strong>T</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'T'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-W">
                                <p class="cf"><span class="label"><strong>W</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'W'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-X">
                                <p class="cf"><span class="label"><strong>X</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'X'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-Y">
                                <p class="cf"><span class="label"><strong>Y</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'Y'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>
                            <li id="city-Z">
                                <p class="cf"><span class="label"><strong>Z</strong></span>
										<span>
											<c:forEach var="brands" items="${brandsList}">
                                                <c:if test="${brands.initial == 'Z'}">
                                                    <c:if test="${tag == 1}">
                                                        <img src="${brands.logoUrl}" alt="${brands.name}"
                                                             style="width: 50px;">
                                                    </c:if>
                                                    <c:if test="${tag == 2}">
                                                        <a class="isonline" href="<%=basePath%>cars/detail/${brands.masterId}">
                                                                ${brands.name}
                                                        </a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </span>
                                </p>
                            </li>

                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<%=basePath%>js/jquery.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        $(function () {
            $(".hasallcity li").hover(function () {
                $(this).addClass('hover');
            }, function () {
                $(this).removeClass('hover');
            });
        });
    </script>
    <iframe src="http://www.html580.com" width="0" height="0"></iframe>

    <div id="footer">
        <div class="left">&copy; 2017 Qi Che Zi Xun. All rights reserved.</div>
        <div class="right">Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a></div>
    </div>

</div>

</body>
</html>