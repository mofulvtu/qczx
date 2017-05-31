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
    <%--<link rel="stylesheet" type="text/css"--%>
          <%--href="<%=basePath%>css/lunbo.css">--%>

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


        * {
            margin: 0px;
            padding: 0px;
            list-style: none;
        }

        #ppt {
            /*border: 0px solid red;*/
            width: 580px;
            height: 320px;
            position: relative;
            -moz-box-shadow: 3px 3px 4px #000;
            -webkit-box-shadow: 3px 3px 4px #000;
            box-shadow: 3px 3px 4px #000;
            -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000)";
            filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000');
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
            /*border: medium solid #0000CC;*/
        }
        A {
            COLOR: #399;
            TEXT-DECORATION: none
        }
        BODY {
            FONT: 14px/1.5 Tahoma, Helvetica, arial, sans-serif;
            /*BACKGROUND: #d6e9ec;*/
            COLOR: #000
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
            <li><a href="<%=basePath%>news/list/1" class="active">首页</a></li>
            <li><a href="<%=basePath%>news/list/2">行情</a></li>
            <li><a href="<%=basePath%>news/list/3">促销</a></li>
            <li><a href="<%=basePath%>video/list">视频</a></li>
            <li><a href="<%=basePath%>cars/list/1">选车</a></li>
            <li><a href="http://localhost:8080">论坛</a></li>
        </ul>
    </div>

    <div id="menubottom"></div>
    <div id="content">

        <div class="back" id="back" style="display: block;"></div>

        <div id="main">
            <div id="left">
                <div id="ppt">
                    <ul id="img">
                        <%--<li class="on"><img src="<%=basePath%>images/sikeda.jpg" style="width: 580px;height: 320px;"></li>--%>
                        <%--<li><img src="<%=basePath%>images/dazhong.jpg" style="width: 580px;height: 320px;"></li>--%>
                        <%--<li><img src="<%=basePath%>images/benchi.jpg" style="width: 580px;height: 320px;"></li>--%>
                        <%--<li><img src="<%=basePath%>images/biaozhi.jpg" style="width: 580px;height: 320px;"></li>--%>
                            <c:forEach var="news2" items="${carouselList}">


                            <li><a href="<%=basePath%>news/detail/${news2.id}"> <img src="${news2.imageUrl}" style="width: 580px;height: 320px;"></a>
                                <h3 class="oP">
                                    <a href="/news/172980" target="_blank" style="color:#FFF;text-decoration:none;">又是&ldquo;专属90后&rdquo;的设计！风神AX4靠啥出头？</a>
                                </h3>
                            </li>
                            </c:forEach>
                            <%--<li><img src="<%=basePath%>images/dazhong.jpg" style="width: 580px;height: 320px;"></li>--%>
                            <%--<li><img src="<%=basePath%>images/benchi.jpg" style="width: 580px;height: 320px;"></li>--%>
                            <%--<li><img src="<%=basePath%>images/biaozhi.jpg" style="width: 580px;height: 320px;"></li>--%>
                    </ul>
                    <ul id="order">
                        <li class="on"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>

            </div>

            <div id="right">
                <div id="secondarycontent">
                    <div class="box">
                        <h4>对汽车一窍不通，怎样选购汽车？</h4>
                        <div class="contentarea">
                            <img src="<%=basePath %>images/timg.jpg	" class="left" style="width: 40px;height: 40px"/>
                            <p><a href="https://www.zhihu.com/question/19991150">可以在短期内通过些什么指标来判断汽车的好坏？</a></p>
                        </div>
                    </div>

                    <div>
                        <h4>友情链接</h4>
                        <div class="contentarea" style="color: red;">
                            <ul class="linklist">
                                <li style="color: red;"><a href="http://www.autohome.com.cn">汽车之家</a></li>
                                <li style="color: blue;"><a href="http://www.bitauto.com">易车</a></li>
                                <li><a href="http://www.pcauto.com.cn">太平洋汽车</a></li>
                                <li><a href="http://auto.ifeng.com">凤凰汽车</a></li>
                                <li><a href="http://auto.qq.com">腾讯汽车</a></li>
                                <li><a href="http://auto.163.com/special/000816HR/08shijiajiaoche.html">网易汽车</a></li>
                                <li><a href="http://newcar.xcar.com.cn">爱卡汽车</a></li>
                                <li><a href="http://handan.cheshi.com">网上车市</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%--<div id="primarycontainer">--%>
            <div id="primarycontent">
                <p style="font-size: large;font-weight: 600; color: #c70904 ;font-style: normal;height: 1.2em;margin: 2.0em 0em 0em 0em;">热点推荐</p>
                <div class="divider2"></div>
                <c:forEach var="news" items="${newsList}">
                    <div class="post">
                        <a href="${pageContext.request.contextPath}/news/detail/${news.id}"><h2>${news.title}</h2></a>
                        <div class="contentarea">
                            <div class="details"><fmt:formatDate value="${news.publishTime}"
                                                                 pattern="yyyy-MM-dd HH:mm:ss"/></div>
                            <img src="${news.imageUrl}" class="left" alt="A chinese dragon"
                                 style="width: 50%;height: 50%"/>
                            <%--<div id="centent" onclick="javascript:myfun();">--%>
                            <%--</div>--%>
                            <ul class="controls">
                                <li><a href="http://www.autohome.com.cn" class="printerfriendly">来源:${news.source}</a>
                                </li>
                                <li><a href="#" class="comments" alt="作者">作者:${news.authorName}</a></li>
                                <li><a href="#" class="more">阅读量:
                                    <%=(int) (Math.random() * 10000)%>
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="divider2"></div>
                </c:forEach>
                     <div class="post" id="insert">

                    </div>
                    <%--<div id="insert"></div>--%>
            </div>
        <%--</div>--%>
        <div class="more">
            <div class="more_btn" at=1>点击加载更多</div>
        </div>


    </div>
    <div id="footer">
        <div class="left">&copy; 2017 Qi Che Zi Xun. All rights reserved.</div>
        <div class="right">Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a></div>
    </div>

</div>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/scrollTop.js"></script>
<script type="text/javascript" src="<%=basePath%>js/layer.js" charset="utf-8"></script>
<script type="text/javascript">
    $(".more_btn").click(function(){
        at=$(this).attr('at');
        obj=this;
        if(at!=0){
            at = parseInt(at,10)+1;
            $(obj).attr('at',at);
           // $(".more .more_btn").addClass('moreClass').html('正在加载');
            $.ajax({
                cache: true,
                type: "GET",
                url:"<%=basePath%>search/more/" + at,
                async: true,
                error:function(){
                    layer.msg('加载失败', {icon:2});
                },
                success: function(data){
                    if(data.result!=''){
                        layer.msg("加载成功！",{icon:1});
                        var json = data.result;
                       // $(".more .more_btn").removeClass('moreClass').html('点击加载更多');
                        alert(json.length);

                       for (var p=0;p<json.length;p++){
//                        alert(p);

//                       }
//                        for(var p in json){//遍历json数组时，这么写p为索引，0,1

                           // alert(json[p].source + " " + json[p].title);
//                           var temp = "insert" + p;
                           var insert = document.getElementById("insert");
                            var aText = '<div class="divider2"></div><a href="${pageContext.request.contextPath}/news/detail/'+
                            json[p].id + '"><h2>'+
                            json[p].title+'</h2></a><div class="contentarea">'+'<div class="details">'+
                            '<'+'fmt:formatDate'+' value="'+
                            json[p].publishTime +'" '+ ' pattern="yyyy-MM-dd HH:mm:ss"/>'+'</div><img src="'+
                            json[p].imageUrl + '" class="left" alt="A chinese dragon" style="width: 50%;height: 50%"/><ul class="controls"><li><a href="#" class="printerfriendly">来源:'+
                            json[p].source+'</a></li><li><a href="#" class="comments" alt="作者">作者:'+
                            json[p].authorName +'</a></li><li><a href="#" class="more">阅读量: <%=(int) (Math.random() * 10000)%></a></li></ul></div>';
                            //insert.append(aText);
                            insert.innerHTML = insert.innerHTML + aText;
                        }

                    }

                }
            });
        }
    })
</script>
<script>
    //获取元素
    var imgLis = document.getElementById('img').getElementsByTagName('li');
    var orderLis = document.getElementById('order').getElementsByTagName('li');
    //time变成全局变量
    var timer = null;


    //设定播放函数
    //num为播放的张数
    function play(num, stoprun) {

        if (stoprun == false) {
            clearInterval(timer);
            timer = null;
        }
        //将指定的li显示，剩下的都隐藏
        for (i = 0; i < imgLis.length; i++) {
            //判断是否要显示内容
            if (i == num) {
                imgLis[i].className = 'on';
                orderLis[i].className = 'on';
            } else {
                imgLis[i].className = '';
                orderLis[i].className = '';
            }
        }
    }
    function autoPlay(nu) {
        //定义计数变量

        timer = setInterval(function () {
            //调用play函数
            play(nu);
            nu++;
            if (nu >= imgLis.length) {
                nu = 0;
            }
        }, 3000);
    }
    autoPlay(0);

    //实现人为控制播放功能
    //给order添加一个序号
    for (i = 0; i < orderLis.length; i++) {
        //思考，这里有一个自定义属性,index
        orderLis[i].index = i;
        //添加鼠标点击事件，播放指定的幻灯片
        orderLis[i].onmouseover = function () {
            play(this.index, false);
        }
        orderLis[i].onmouseout = function () {
            autoPlay(this.index);
        }
    }

</script>
</body>
</html>