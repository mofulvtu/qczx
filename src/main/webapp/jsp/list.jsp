<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/default.css" />
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
</style>
</head>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function myfun(){
	alert("ddd");
    //要执行的js代码段
    var divs = document.getElementById("centent");
    alert("ddddddddddddddd");
    //var p_html = $("p").html(); //获取p元素的HTML代码
    //$("p").html("欢迎您访问简明现代魔法图书馆～～");
    $("#centent").html("您访问简明现代魔");
}; 
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
			<input type="text" class="text" maxlength="64" name="keywords" />
			<input type="submit" class="submit" value="Search" />
		</div>
	</form>
	<div id="headerpic"></div>
	<div id="menu">
		<ul>
			<li><a href="<%=basePath%>" class="active">首页</a></li>
			<li><a href="http://www.865171.cn">新车</a></li>
			<li><a href="http://www.865171.cn">导购</a></li>
			<li><a href="<%=basePath %>video/list">视频</a></li>
			<li><a href="http://www.865171.cn">选车</a></li>
			<li><a href="http://localhost:8080">论坛</a></li>
		</ul>
	</div>
	<div id="menubottom"></div>
	<div id="content">
		<div id="primarycontainer">
			<div id="primarycontent">
			 <c:forEach var="news" items="${newsList}" >
				<div class="post">
					<a href="${pageContext.request.contextPath}/news/detail/${news.id}"> <h2>${news.title}</h2></a>
					<div class="contentarea">
						<div class="details" ><fmt:formatDate value="${news.publishTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>	
						<img src="${news.imageUrl}" class="left" alt="A chinese dragon" style="width: 30%;height: 30%"/>
						<div id="centent" onclick="javascript:myfun();">news.centent</div>
						<ul class="controls">
							<li><a href="http://www.autohome.com.cn" class="printerfriendly">${news.source}</a></li>
							<li><a href="#" class="comments">${news.authorName}作者</a></li>
							<li><a href="#" class="more">阅读量</a></li>				
						</ul>
					</div>
				</div>
				<div class="divider2"></div>
            </c:forEach>
			</div>
		</div>
		
		<div id="secondarycontent">
			<div class="box">
				<h4>Blandit Veroeros</h4>
				<div class="contentarea">
					<img src="<%=basePath %>images/pic2.jpg" class="left" alt="Random foliage" />
					<p>Sed etiam et lorem ipsum nulla vero et lobortis felis sed etiam. Lorem ipsum sit amet dolore. Nulla facilisi. Sed tortor. Aenean felis. Quisque eros etiam <a href="http://www.865171.cn">sed commodo</a>.</p>
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

			<!-- Secondary content area end -->
		</div>
	</div>
	<div id="footer">
			<div class="left">&copy; 2017 Qi Che Zi Xun. All rights reserved.</div>
			<div class="right">Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a></div>
	</div>
	
</div>

</body>
</html>