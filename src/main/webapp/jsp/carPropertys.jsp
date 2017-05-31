<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>css/car.css">
    <%--<link rel="stylesheet" type="text/css"--%>
    <%--href="<%=basePath%>css/bootstrap.css">--%>

    <style type="text/css">
        .item .pic {
            float: left;
            margin-right: 10px;
            width: 100px;
            height: 100px;
        }

        .item .content {
            float: left;
            width: 500px;
        }

        .list-table th:first-child {
            padding-left: 10px;
        }

        .list-table .first-item {
            color: #333;
            font-weight: bold;
        }

        .list-table th {
            border-bottom: 1px solid #E9E9E9;
            color: #999;
            height: 40px;
            line-height: 40px;
            background: #f7f7f7;
            font-weight: normal;
            text-align: left;
        }

        td, th {
            padding: 0;
            font-weight: normal;
            height: 40px;
        }

        .table {
            vertical-align: bottom;
            border: 2px solid #ddd;
        }

        td {
            font-weight: 500;
            color: #66afe9;
            height: 40px;
        }

        h4 {
            font-weight: 800;
            color: #66afe9;
        }

        .color-ul li a {
            display: block;
            width: 16px;
            height: 16px;
            border: 1px solid #d60000;
        }

        td > div >.right1 {
            width: 20px;
            height: 20px;
            /*float: center;*/
            margin-right: 30px;
            border: 1px solid #d60000;
        }

        .right1 {
            background-color: #000000;
        }

        .main {
            height: 40px;
            width: 100%;
        }

        .left {
            float: left;
            /*height: 20px;*/
            /*width: 50%;*/
            /*border: medium solid #0000CC;*/
        }

        .right1 {
            float: left;
            /*height: 20px;*/
            /*width: 50%;*/
            /*border: medium solid #0000CC;*/
        }
    </style>
</head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <div id="menu">
        <ul>
            <li><a href="<%=basePath%>news/list/1">首页</a></li>
            <li><a href="<%=basePath%>news/list/2">行情</a></li>
            <li><a href="<%=basePath%>news/list/3">促销</a></li>
            <li><a href="<%=basePath%>video/list">视频</a></li>
            <li><a href="<%=basePath%>cars/list/1" class="active">选车</a></li>
            <li><a href="http://localhost:8080">论坛</a></li>
        </ul>
    </div>

    <div id="menubottom"></div>
    <div id="content">

        <div>
            <div class="divider2"></div>
            <div class="post">
                <div class="contentarea">
                    <h3 style="color: #2e6da4;">参数配置</h3> <br><br>
                    <c:forEach var="carPropertys" items="${carPropertysList}">
                        <h4> 基本信息</h4><br>
                        <table class="table table-bordered">
                            <thead>
                            <tr class="colorList">
                                <th width="10%">指导价</th>
                                <td width="10%">${carPropertys.carReferPrice}</td>
                                <th width="15%">平均价</th>
                                <td width="15%">${carPropertys.averagePrice}</td>
                                <th width="25%">保修政策</th>
                                <td width="25%">三年或10万公里</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>排量</th>
                                <td>${carPropertys.engine_Exhaust}<c:if test="${empty carPropertys.engine_Exhaust}">
                                    ---
                                    </c:if></td>
                                <th>变速箱</th>
                                <td> ${carPropertys.inStat_BSeatPillow}
                                    <c:if test="${empty carPropertys.inStat_BSeatPillow}">
                                        ---
                                    </c:if>
                                </td>
                                <th>综合工况油耗(L/100km)</th>
                                <td>6.50</td>
                            </tr>
                            <tr>
                                <th>最高车速(km/h)</th>
                                <td>${carPropertys.perf_MaxSpeed} <c:if test="${empty carPropertys.perf_MaxSpeed}">
                                    ---
                                </c:if></td>
                            </tr>
                            </tbody>
                        </table>

                        <h4>车体</h4><br>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>车长(mm)</th>
                                <td>${carPropertys.outSet_Length}<c:if test="${empty carPropertys.outSet_Length}">
                                    ---
                                    </c:if></td>
                                <th>车宽(mm)</th>
                                <td>${carPropertys.outSet_Width}<c:if test="${empty carPropertys.outSet_Width}">
                                    ---
                                    </c:if></td>
                                <th>车高(mm)</th>
                                <td>${carPropertys.outSet_Height}<c:if test="${empty carPropertys.outSet_Height}">
                                    ---
                                    </c:if></td>
                                <th>轴距(mm)</th>
                                <td>${carPropertys.outSet_WheelBase}<c:if test="${empty carPropertys.outSet_WheelBase}">
                                    ---
                                    </c:if></td>
                                <th>车门数(个)</th>
                                <td>${carPropertys.body_Doors}<c:if test="${empty carPropertys.body_Doors}">
                                    ---
                                    </c:if></td>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>座椅材料</th>
                                <td>${carPropertys.inStat_SeatMaterial}<c:if
                                        test="${empty carPropertys.inStat_SeatMaterial}">
                                    ---
                                    </c:if></td>
                                <th>天窗开合方式</th>
                                <td>${carPropertys.body_LouverOCType}<c:if
                                        test="${empty carPropertys.body_LouverOCType}">
                                    ---
                                    </c:if></td>
                                <th>电动窗防夹功能</th>
                                <td>${carPropertys.outStat_AvoidNipHead}<c:if
                                        test="${empty carPropertys.outStat_AvoidNipHead}">
                                    ---
                                    </c:if></td>
                                <th>整备质量(kg)</th>
                                <td>${carPropertys.perf_Weight}<c:if test="${empty carPropertys.perf_Weight}">
                                    ---
                                    </c:if></td>
                                <th>车顶型式</th>
                                <td>${carPropertys.body_TipType}<c:if test="${empty carPropertys.body_TipType}">
                                    ---
                                    </c:if></td>
                            </tr>
                            </tbody>
                        </table>

                        <h4>车体颜色</h4>
                        <table class="table table-bordered">
                            <tr>
                                <td height="40px">
                                    <div class="main">
                                        <c:forEach var="carColor" items="${carPropertys.carColorList}">

                                            <div class="left"> ${carColor.name}</div>
                                            <div class="right1" style="background-color: ${carColor.RGB}"
                                                 align="center"></div>
                                        </c:forEach>
                                        <c:if test="${empty carPropertys.carColorList}">
                                            ---
                                        </c:if>
                                    </div>

                                </td>

                                    <%--<div class="class2"></div>--%>
                            </tr>
                        </table>

                        <h4> 发动机</h4><br>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>发动机位置</th>
                                <td>${carPropertys.engine_Location} <c:if test="${empty carPropertys.engine_Location}">
                                    ---
                                </c:if></td>
                                <th>发动机型号</th>
                                <td>${carPropertys.engine_Type} <c:if test="${empty carPropertys.engine_Type}">
                                    ---
                                </c:if></td>
                                <th>进气形式</th>
                                <td>${carPropertys.inStat_AirCType} <c:if test="${empty carPropertys.inStat_AirCType}">
                                    ---
                                </c:if></td>
                                <th>排量</th>
                                <td>${carPropertys.engine_Exhaust}<c:if test="${empty carPropertys.engine_Exhaust}">
                                    ---
                                    </c:if></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>气缸排列型式</th>
                                <td>L型</td>
                                <th>气缸数(个)</th>
                                <td>${carPropertys.engine_CylinderNum}<c:if
                                        test="${empty carPropertys.engine_CylinderNum}">
                                    ---
                                    </c:if></td>
                                <th>每缸气门数(个)</th>
                                <td>${carPropertys.engine_ValvePerCylinder}<c:if
                                        test="${empty carPropertys.engine_ValvePerCylinder}">
                                    ---
                                    </c:if></td>
                                <th>压缩比</th>
                                <td>${carPropertys.engine_CompressRat}<c:if
                                        test="${empty carPropertys.engine_CompressRat}">
                                    ---
                                    </c:if></td>
                            </tr>
                            <tr>
                                <th>最大功率(kW)</th>
                                <td>${carPropertys.engine_MaxPower}<c:if test="${empty carPropertys.engine_MaxPower}">
                                    ---
                                    </c:if></td>
                                <th>最大功率转速(rpm)</th>
                                <td>${carPropertys.engine_PowerSpeed}<c:if
                                        test="${empty carPropertys.engine_PowerSpeed}">
                                    ---
                                    </c:if></td>
                                <th>最大扭矩(Nm)</th>
                                <td>${carPropertys.engine_MaxNJ}<c:if test="${empty carPropertys.engine_MaxNJ}">
                                    ---
                                    </c:if></td>
                                <th>燃料类型</th>
                                <td>${carPropertys.oil_FuelType}<c:if test="${empty carPropertys.oil_FuelType}">
                                    ---
                                    </c:if></td>
                            </tr>
                            <tr>
                                <th>燃油标号</th>
                                <td>${carPropertys.oil_FuelTab}<c:if test="${empty carPropertys.oil_FuelTab}">
                                    ---
                                    </c:if></td>
                                <th> 燃油箱容积(L)</th>
                                <td>${carPropertys.oil_FuelCapacity} <c:if
                                        test="${empty carPropertys.oil_FuelCapacity}">
                                    ---
                                </c:if></td>
                            </tr>
                            </tbody>
                        </table>
                    </c:forEach>
                    <div class="container">
                    </div>

                    <div class="brandIntroduce" style="display: none">
                        <%--<p style="font-size: 15px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${brandsIntro.logoMeaning}</p>--%>
                        <%--<p style="font-size: 15px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${brandsIntro.introduction}</p>--%>
                    </div>
                </div>
            </div>

            <div class="divider2"></div>
        </div>
        <div>
        </div>


    </div>
    <div id="footer">
        <div class="left">&copy; 2017 Qi Che Zi Xun. All rights reserved.</div>
        <div class="right">Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a></div>
    </div>

</div>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<%--<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>--%>
<script type="text/javascript">
    $(".brandDtail").click(function () {
        var disp = $(".brandIntroduce").css("display");
        if (disp == "none") {
            $(".brandIntroduce").css("display", "block");
        } else {
            $(".brandIntroduce").css("display", "none");
        }

//         var temp = $(".imgages").val();
//         var tempValue = temp.replace("{0}","1");
//         alert(tempValue);
//         $(".image").attr("src",tempValue);

    })

</script>
</body>
</html>