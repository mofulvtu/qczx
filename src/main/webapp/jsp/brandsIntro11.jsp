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

        * {
            margin: 0px;
            padding: 0px;
            list-style: none;
        }

        #img li {
            display: none;
        }

        #img .on {
            display: block;
        }

        #order {
            position: absolute;
            right: 10px;
            bottom: 25px;

        }

        #order li {
            float: left;
            width: 20px;
            height: 20px;
            background: black;
            margin-left: 15px;
        }

        #order .on {
            background: red;
        }

        #main {
            height: 300px;
            width: 100%;
        }

        #left {
            float: left;
            height: 200px;
            width: 19%;
            /*border: medium solid #0000CC;*/
        }

        #right {
            float: left;
            height: 50px;
            width: 79%;
        }
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


    </style>
</head>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
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
    <form method="post" action="">
        <div id="search">
            <input type="text" class="text" maxlength="64" name="keywords"/>
            <input type="submit" class="submit" value="Search"/>
        </div>
    </form>
    <div id="menu">
        <ul>
            <li><a href="<%=basePath%>news/list/1" class="active">首页</a></li>
            <li><a href="<%=basePath%>news/list/2">新车</a></li>
            <li><a href="<%=basePath%>news/list/3">导购</a></li>
            <li><a href="<%=basePath%>video/list">视频</a></li>
            <li><a href="<%=basePath%>cars/list/1">选车</a></li>
            <li><a href="http://localhost:8080">论坛</a></li>
        </ul>
    </div>

    <div id="menubottom"></div>
    <div id="content">
            <div>
                <div class="divider2"></div>
                <div class="post">
                    <div class="contentarea">
                        <h3>${subBrand.brandName}</h3>
                        <div class="details" style="color: #3cb0fa"><h1>${brandsIntro.masterName}</h1></div>
                        <br>
                        <p style="font-size: 15px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${brandsIntro.logoMeaning}</p>
                        <p style="font-size: 15px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${brandsIntro.introduction}</p>
                    </div>
                </div>
                <div class="divider2"></div>
            </div>
            <div>
                <c:forEach var="subBrand" items="${subBrandList}">
                      ${subBrand.brandName}===${subBrand.foreign}===<br>
                    <c:forEach var="serial" items="${subBrand.serialList}">
                        ${serial.serialName}////${serial.serialId}////${serial.saleStatus}///${serial.dealerPrice}
                        ///${serial.picture}<br>
                    </c:forEach>
                </c:forEach>

            </div>


    </div>
    <div id="footer">
        <div class="left">&copy; 2017 Qi Che Zi Xun. All rights reserved.</div>
        <div class="right">Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a></div>
    </div>

</div>
</body>
</html>