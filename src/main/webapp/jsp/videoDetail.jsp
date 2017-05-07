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
		<div id="menubottom"></div>


		<div id="content">

			<div class="video">
				<video id="video" src="${video.videoUrl }" controls
					style="width:100%;height: 100%;" poster="${video.videoImg }"></video>
			</div>
			<div class="contentLeft">
				<div class="title1"
					style="font-size: 25px; font-style: oblique; font-weight: bold;">${video.title }</div>
				<div class="share_info clearfix">
					<div style="margin: 10px 20px 30px 40px">
								<span></span>
					</div>
					<div class="fl">
						<span>发布时间:</span> 
						<span style="color: blue;"><fmt:formatDate value="${video.publishTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span> 
						<span>播放：</span>
						<span style="margin-left: 15pxl;color: blue;">${video.playNum }</span>
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