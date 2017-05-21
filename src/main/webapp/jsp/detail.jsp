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
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>汽车资讯 - 最新的汽车信息平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/default.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/detail.css" />
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

			<!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
			<div id="primarycontainer">
				<div id="primarycontent">
					<!-- Primary content area start -->
					<div class="content_detail_left" style="max-width:">
						<div class="title">${news.title}</div>
						<div class="part2">
							<a href="#" target="_blank">${news.authorName}</a>
							<span class="p_mid">汽车资讯</span> <span><fmt:formatDate
									value="${news.publishTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span> <span
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
					<h4>Blandit Veroeros</h4>
					<div class="contentarea">
						<img src="<%=basePath%>images/pic2.jpg" class="left"
							alt="Random foliage" />
						<p>
							Sed etiam et lorem ipsum nulla vero et lobortis felis sed etiam.
							Lorem ipsum sit amet dolore. Nulla facilisi. Sed tortor. Aenean
							felis. Quisque eros etiam <a href="http://www.865171.cn">sed
								commodo</a>.
						</p>
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
				reserved.</div>
			<div class="right">
				Design by <a href="http://blog.csdn.net/gg12365gg">http://blog.csdn.net/gg12365gg</a>
			</div>
		</div>

	</div>
</body>

</html>