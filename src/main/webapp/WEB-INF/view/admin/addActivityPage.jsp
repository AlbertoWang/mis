<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>党员管理系统</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/fontastic.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/style.default.css"
	id="theme-stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/custom.css">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/lib/img/favicon.ico">
<script type="text/javascript" charset="utf-8"
	src="<%=request.getContextPath()%>/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=request.getContextPath()%>/utf8-jsp/ueditor.all.min.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="<%=request.getContextPath()%>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>


<style type="text/css">
div {
	width: 100%;
}
</style>

</head>
<body>
		<script type="text/javascript">
	var isLogin = "<%=session.getAttribute("isLogin")%>";
	if(isLogin!='1'){
		alert("您好，请先登录！");
		window.location.href='<%=request.getContextPath()%>/';
	};


		var msg = "${message}";
		if (msg == "1") {
			alert('活动发布成功');
		}
		if (msg == "2") {
			alert('活动发布失败');
		}
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="/mis/main_page_1"
						class="navbar-brand d-none d-sm-inline-block">
						<div class="brand-text d-none d-lg-inline-block">党员管理系统</div>
						<div class="brand-text d-none d-sm-inline-block d-lg-none">
							<strong>党员管理系统</strong>
						</div>
					</a> <a id="toggle-btn" href="#" class="menu-btn active"> <span></span><span></span><span></span>
					</a>
				</div>
				<ul
					class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
					<li class="nav-item"><a href="/mis/logout"
						class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i
							class="fa fa-sign-out"></i>
					</a></li>
				</ul>
			</div>
		</div>
		</nav> </header>
		<div class="page-content d-flex align-items-stretch">
			<nav class="side-navbar">
			<div class="sidebar-header d-flex align-items-center">
				<div class="title">
					<p>欢迎您：</p>
					<h1 class="h4">${admin_name}</h1>
				</div>
			</div>
			<span class="heading">用户管理</span>
			<ul class="list-unstyled">
				<li><a href="/mis/admin/authorityPage"> <i
						class="icon-list-1"></i>权限管理
				</a></li>
				<li><a href="#memberManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-user"></i>成员管理
				</a>
					<ul id="memberManager" class="collapse list-unstyled ">
						<li><a href="/mis/admin/manageMemberPage">成员信息管理</a></li>
						<li><a href="/mis/admin/updateStatusPage">成员政治面貌管理</a></li>
					</ul></li>
				<li><a href="#branchManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-list"></i>支部管理
				</a>
					<ul id="branchManager" class="collapse list-unstyled ">
						<li><a href="/mis/admin/addMemberPage">添加支部成员</a></li>
						<li><a href="/mis/admin/manageBranchPage">支部成员管理</a></li>
					</ul></li>
			</ul>
			<span class="heading">组织生活管理</span>
			<ul class="list-unstyled">
				<li class="active"><a href="/mis/admin/addActivityPage"> <i
						class="icon-interface-windows"></i>活动的创建与发布
				</a></li>
				<li><a href="/mis/admin/manageSignInPage"> <i
						class="icon-grid"></i>组织生活签到管理
				</a></li>
			</ul>
			<span class="heading">内容管理</span>
			<ul class="list-unstyled">
				<li><a href="#editStudy" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-presentation"></i>学习中心内容编辑
				</a>
					<ul id="editStudy" class="collapse list-unstyled ">
						<li><a href="/mis/admin/insertStudyPage">发布学习内容</a></li>
						<li><a href="/mis/admin/manageStudyPage">管理学习内容</a></li>
					</ul></li>
				<li><a href="/mis/admin/editCompetitionPage"> <i
						class="icon-padnote"></i>竞答编辑
				</a></li>
				<li><a href="#competitionResult" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-line-chart"></i>竞答结果统计
				</a>
					<ul id="competitionResult" class="collapse list-unstyled ">
						<li><a href="/mis/admin/resultByTestPage">按竞答查询</a></li>
						<li><a href="/mis/admin/resultByStudentPage">按学生查询</a></li>
					</ul></li>
			</ul>
			</nav>
			<div class="content-inner">

				<div style="margin: 0px; background-color: white; margin: 0 10px;">
					<blockquote class="layui-elem-quote">
						<div class="cxbottom">
							<center>
								<h1>&ensp;</h1>
							</center>
						</div>
						<div class="panel-body" style="padding-bottom: 0px;">
							<form class="form-horizontal" name="inputForm "  id="inputForm"
								action="/mis/admin/insertActivity"
								 method="post">

								<div class="layui-form-item">
									<label class="layui-form-label">&ensp;&ensp;活动名称：&ensp;<input
										type="text" class="layui-input" name="activity_name" style="width:800px"
										id="activity_name" lay-verify="required" placeholder="请输入活动名称"></label>

								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">&ensp;&ensp;参与支部：&ensp;<select
										name="branch_name" id="branch_name">
                                        <c:forEach var="branch" items="${branch}">
										<option>${branch.branch_name }</option>
										</c:forEach>
									</select></label>
								</div>
								<div class="layui-form-item">
									<div class="layui-inline">
										<label class="layui-form-label">&ensp;&ensp;活动日期：&ensp;<input
											type="date"	 class="layui-input" name="activity_date"
											id="activity_date" lay-verify="required"
											placeholder="请输入活动时间"></label>
									</div>
								</div>
								<div class="layui-form-item">
									<div class="layui-inline">
										<label class="layui-form-label">&ensp;&ensp;活动时长：&ensp;<input
											type="text"	 class="layui-input" name="activity_duration"
											id="activity_duration" lay-verify="required" style="width:142px"
											placeholder="请输入活动时长"></label>
									</div>
								</div>
								<div class="layui-form-item">
									<div class="layui-inline">
										<label class="layui-form-label">&ensp;&ensp;活动地点：&ensp;<input
											type="text" class="layui-input" name="activity_location"
											id="activity_location" lay-verify="required" style="width:142px"
											placeholder="请输入活动地点"></label>

									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">&ensp;&ensp;活动内容：</label> <input
										hidden="hidden" id="content" name="content">
									<div>
										<script id="editor" type="text/plain"
											style="width:1024px;height:500px;"></script>

									</div>
								</div>
								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="btn btn-success" lay-submit=""
											lay-filter="rulesSubmit" onclick="return validateForm() ">发布活动</button>
									</div>
								</div>

							</form>
							<div class="cxbottom">
								<center>
									<h1>&ensp;</h1>
									<h1>&ensp;</h1>
								</center>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/popper.js/umd/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery.cookie/jquery.cookie.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/chart.js/Chart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/lib/js/front.js"></script>

	<script type="text/javascript" charset="utf-8"
		src="<%=request.getContextPath()%>/utf8-jsp/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="<%=request.getContextPath()%>/utf8-jsp/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8"
		src="<%=request.getContextPath()%>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>


	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
		//直接调用UE.getEditor('editor')就能拿到相关的实例
		UE.delEditor('editor');
		var ue = UE.getEditor('editor');
	</script>
	<script>
		function validateForm() {
			var activity_name = document.forms["inputForm"]["activity_name"].value;
			var branch_name = document.forms["inputForm"]["branch_name"].value;
			var activity_duration = document.forms["inputForm"]["activity_duration"].value;
			var activity_location = document.forms["inputForm"]["activity_location"].value;
			var activity_date = document.forms["inputForm"]["activity_date"].value;
			if (activity_name == null || activity_name == "" || branch_name == null
					|| branch_name == ""|| activity_location == null
					|| activity_location == ""|| activity_duration == null
					|| activity_duration == ""|| activity_date == null
					|| activity_date == "") {
				alert("所有内容都必须填写!");
				return false;
			}
		}
	</script>
</body>
</html>