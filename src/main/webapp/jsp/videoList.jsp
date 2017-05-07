<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.min.js"></script>
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
		<form method="post" action="">
			<div id="search">
				<input type="text" class="text" maxlength="64" name="keywords" /> <input
					type="submit" class="submit" value="Search" />
			</div>
		</form>
		<div id="headerpic"></div>
		<div id="menu">
			<!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
			<ul>
				<li><a href="<%=basePath%>">首页</a></li>
				<li><a href="http://www.865171.cn">新车</a></li>
				<li><a href="http://www.865171.cn">导购</a></li>
				<li><a href="<%=basePath%>video/list" class="active">视频</a></li>
				<li><a href="http://www.865171.cn">选车</a></li>
				<li><a href="http://www.865171.cn">论坛</a></li>
			</ul>
		</div>

		<div id="primarycontainer" style="background: white;">
			<div id="primarycontent">
				<p style="font-size: x-large; color: blue; padding-left: 20px;">推荐视频</p>
				<c:forEach var="video" items="${videoList}">
					<!-- <div class="post"> -->
					<div class="article clearfix">
						<div class="img" style="left: 60px;">
							<a href="${video.videoUrl}"> <img src="${video.videoImg}"
								style="width: 200px; height: 112px;" alt="">
							</a>
							<p class="time">
								<span class="oCenter">${video.duration}</span>
							</p>
						</div>
						<div class="words">
							<div class="part1 clearfix">
								<div class="words_title" style="font-size: x-large;">
									<a
										href="${pageContext.request.contextPath}/video/detail/${video.id}">${video.title}
									</a>
								</div>
							</div>
							<div style="margin: 10px 20px 30px 40px">
								<span></span>
							</div>
							<div class="words_1">
								<span style="margin: 0px 40px 0px 0px">${video.source}</span><span><fmt:formatDate
										value="${video.publishTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
							</div>
						</div>

					</div>

					<!-- <div class="divider2"></div> -->
				</c:forEach>
			</div>
		</div>
		<div id="secondarycontent" style="color: red;">
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

		</div>
	</div>





	<div id="footer">
		<div class="left">&copy; 2017 Qi Che Zi Xun. All rights
			reserved.</div>
		<div class="right">
			Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a>
		</div>
	</div>

	</div>

</body>
</html>