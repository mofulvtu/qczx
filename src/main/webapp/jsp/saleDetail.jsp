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
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>汽车资讯 - 最新的汽车信息平台</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/default.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/detail.css"/>
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

        /*H2 {*/
        /*PADDING-BOTTOM: 0px;*/
        /*MARGIN: 0px;*/
        /*PADDING-LEFT: 0px;*/
        /*PADDING-RIGHT: 0px;*/
        /*PADDING-TOP: 0px*/
        /*}*/

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

        /*H2 {*/
        /*FONT-SIZE: 100%*/
        /*}*/

        #change-city {
            width: 1000px;
            margin: 50px auto;
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

        /*H2 {*/
        /*PADDING-BOTTOM: 0px;*/
        /*MARGIN: 0px;*/
        /*PADDING-LEFT: 0px;*/
        /*PADDING-RIGHT: 0px;*/
        /*PADDING-TOP: 0px*/
        /*}*/

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
            height: 4.2em;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div id="upbg"></div>

<div id="outer">

    <div id="header">
        <div id="headercontent">
            <h1>
                汽车资讯<sup>1.0</sup>
            </h1>
            <h2>A new free car information platform</h2>
        </div>
    </div>

    <form method="get" action="<%=basePath%>search/news">
        <div id="search">
            <input type="text" class="text" maxlength="64" name="keywords"/> <input
                type="submit" class="submit" value="Search"/>
        </div>
    </form>

    <%--<div id="headerpic"></div>--%>

    <div id="menu">
        <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
        <ul>
            <li><a href="<%=basePath%>news/list/1">首页</a></li>
            <li><a href="<%=basePath%>news/list/2">新车</a></li>
            <li><a href="<%=basePath%>news/list/3" class="active">导购</a></li>
            <li><a href="<%=basePath %>video/list">视频</a></li>
            <li><a href="http://www.865171.cn">选车</a></li>
            <li><a href="http://localhost:8080">论坛</a></li>
        </ul>
    </div>
    <div id="menubottom"></div>

    <div id="content">

        <div class="back" id="back" style="display: block;"></div>

        <div id="primarycontainer">
            <div id="primarycontent">
                <!-- Primary content area start -->
                <div class="content_detail_left">
                    <div class="title">${news.title}</div>
                    <div class="part2">
                        <a href="#" target="_blank">${news.authorName}</a>
                        <span class="p_mid">汽车资讯</span> <span><fmt:formatDate
                            value="${news.publishTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span> <span
                            style="float: right; margin-right: 20px">阅读数 <span
                            style="color: #17abc1">${news.readNum}</span></span>
                    </div>
                    <div>${news.centent}</div>
                    <div class="more">
                        <div class="more_btn" style="display: none">点击加载更多</div>
                    </div>
                </div>
                <div class="divider2"></div>
            </div>
        </div>

        <div id="secondarycontent">
            <div class="box">
                <h4>买车前需要了解哪些知识？</h4>
                <div class="contentarea">
                    <img src="<%=basePath %>images/timg1.jpg" class="left" style="width: 30px;height: 30px"/>
                    <p><a href="https://www.zhihu.com/question/28587624">对汽车行业不是很了解，买车前需要注意或者知道哪些知识呢？</a></p>
                </div>
            </div>

            <div>
                <h4>友情链接</h4>
                <div class="contentarea">
                    <ul class="linklist">
                        <li><a href="http://www.autohome.com.cn">汽车之家</a></li>
                        <li><a href="http://www.bitauto.com">易车</a></li>
                        <li><a href="http://www.pcauto.com.cn">太平洋汽车</a></li>
                        <li><a href="http://auto.ifeng.com">凤凰汽车</a></li>
                        <li><a href="http://auto.qq.com">腾讯汽车</a></li>
                        <li><a
                                href="http://auto.163.com/special/000816HR/08shijiajiaoche.html">网易汽车</a></li>
                        <li><a href="http://newcar.xcar.com.cn">爱卡汽车</a></li>
                        <li><a href="http://handan.cheshi.com">网上车市</a></li>
                    </ul>
                </div>
            </div>

            <!-- Secondary content area end -->
        </div>

    </div>

    <div id="footer">
        <div class="left">&copy; 2017 Qi Che Zi Xun. All rights
            reserved.
        </div>
        <div class="right">
            Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a>
        </div>
    </div>

</div>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/scrollTop.js"></script>
</body>
</html>