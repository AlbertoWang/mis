<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
table tr th, td {
	border: 1px solid red;
	text-align: center;
}

table tr th {
	border: 1px solid red;
	text-align: center;
}
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>党员管理系统</title>
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

</head>
<body>
	<script type="text/javascript">
		var msg = "${message}";
		if (msg == "1") {
			alert('升级成功');
		}
		if (msg == "2") {
			alert('升级失败');
		}
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="mainPage" class="navbar-brand d-none d-sm-inline-block">
						<div class="brand-text d-none d-lg-inline-block">党员管理系统</div>
						<div class="brand-text d-none d-sm-inline-block d-lg-none">
							<strong>党员管理系统</strong>
						</div>
					</a> <a id="toggle-btn" href="#" class="menu-btn active"> <span></span><span></span><span></span>
					</a>
				</div>
				<ul
					class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
					<li class="nav-item"><a href="logout" class="nav-link logout">
							<span class="d-none d-sm-inline">退出登录</span><i
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
				<li><a href="authorityPage"> <i class="icon-list-1"></i>权限管理
				</a></li>
				<li class="active"><a href="#memberManager"
					aria-expanded="false" data-toggle="collapse"> <i
						class="icon-user"></i>成员管理
				</a>
					<ul id="memberManager" class="collapse list-unstyled ">
						<li><a href="manageMemberPage">成员信息管理</a></li>
						<li class="active"><a href="updateStatusPage">成员级别管理</a></li>
					</ul></li>
				<li><a href="#branchManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-list"></i>支部管理
				</a>
					<ul id="branchManager" class="collapse list-unstyled ">
						<li><a href="addMemberPage">添加支部成员</a></li>
						<li><a href="manageBranchPage">支部成员管理</a></li>
					</ul></li>
			</ul>
			<span class="heading">组织生活管理</span>
			<ul class="list-unstyled">
				<li><a> <i class="icon-interface-windows"></i>活动的创建与发布
				</a></li>
				<li><a href="manageSignInPage"> <i class="icon-grid"></i>组织生活签到管理
				</a></li>
			</ul>
			<span class="heading">内容管理</span>
			<ul class="list-unstyled">
				<li><a href="editStudyPage"> <i class="icon-presentation"></i>学习中心内容编辑
				</a></li>
				<li><a href="editCompetitionPage"> <i class="icon-padnote"></i>知识竞答编辑
				</a></li>
				<li><a href="competitionResultPage"> <i
						class="icon-line-chart"></i>竞答结果统计
				</a></li>
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
							<form class="form-horizontal" name="inputForm "
								action="distributionPageFinder" onsubmit="return validateForm()"
								method="post">

								<div class="tableWrap">
									<table width="100%" class="table table-hover table-bordered"
										id="Table" data-toggle="table" data-toggle="table"
										data-pagination="true" data-side-pagination="client">
										<tr>
											<th width="12%">学号：</th>
											<td width="21%">
												<div class="" id="data_5">
													<div class="input-daterange input-group" id="datepicker">
														<input type="text" placeholder="模糊查询，学号的一部分即可"
															value="${student_num}" class="form-control"
															style="border-radius: 3px; height: 30px" id="student_num"
															name="student_num"></input>
													</div>
												</div>
											</td>
											<th width="12%">成员等级：</th>
											<td width="21%"><select name="student_status"
												id="student_status">
													<option>所有级别</option>
													<option>非党员</option>
													<option>入党积极分子</option>
													<option>预备党员</option>
													<option>正式党员</option>
											</select></td>
										</tr>
										<tr>
											<th>姓名：</th>
											<td><input type="text" placeholder="模糊查询，姓名中的一部分即可"
												value="${student_name}" class="form-control"
												style="border-radius: 3px; height: 30px" id="student_name"
												name="student_name"></td>
											<th>所在支部：</th>
											<td><input type="text" placeholder="模糊查询，所在支部名称中的一部分即可"
												value="${branch_name}" class="form-control"
												style="border-radius: 3px; height: 30px" id="branch_name"
												name="branch_name"></td>
										</tr>
									</table>
									<div class="cxbottom">
										<center>
											<button type="submit">查 询</button>
										</center>
									</div>
							</Form>
						</div>
					</blockquote>
					<div id="content" style="width: 100%; height: 533px;">
						<table class="table table-hover table-bordered" id="Table"
							data-toggle="table" data-toggle="table" data-pagination="true"
							data-side-pagination="client">
							<thead>
								<tr>
									<th>学号</th>
									<th>姓名</th>
									<th>性别</th>
									<th>所属级别</th>
									<th>所在支部</th>
									<th>手机号码</th>
									<th>电子邮箱</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pageInfo.list}" var="member_list">
									<tr style="height: auto;">
										<td>${member_list.student_num }</td>
										<td>${member_list.student_name}</td>
										<td>${member_list.student_gender}</td>
										<td><c:choose>
												<c:when test="${member_list.student_status==0}">非党员</c:when>
												<c:when test="${member_list.student_status==1}">入党积极分子</c:when>
												<c:when test="${member_list.student_status==2}">预备党员</c:when>
												<c:when test="${member_list.student_status==3}">正式党员</c:when>
											</c:choose></td>
										<td>${member_list.branch_name}</td>
										<td>${member_list.student_tel}</td>
										<td>${member_list.student_email}</td>
										<td><c:choose>
												<c:when test="${member_list.student_status==0}">
													<button id="updateBranchButton" type="button"
														onclick="updateLevelModal(this)"
														class="btn btn-success btn-sm" data-toggle="modal">升为入党积极分子</button>
												</c:when>
												<c:when test="${member_list.student_status==1}">
													<button id="deleteBranchButton" type="button"
														onclick="updateLevelModal(this)"
														class="btn btn-success btn-sm" data-toggle="modal">升为预备党员</button>
												</c:when>
												<c:when test="${member_list.student_status==2}">
													<button id="deleteBranchButton" type="button"
														onclick="updateLevelModal(this)"
														class="btn btn-success btn-sm" data-toggle="modal">升为正式党员</button>
												</c:when>
											</c:choose></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<center>
						<li>共<i class="blue">${pageInfo.total}</i>条记录，当前显示第<i
							class="blue">${pageInfo.pageNum}</i>页， 总<i class="blue">${pageInfo.pages }</i>页
							<a
							href="${pageContext.request.contextPath}/updateStatusPage?currentPage=1"><button
									class="layui-btn layui-btn-normal  layui-btn-sm">首页</button></a> <c:if
								test="${pageInfo.hasPreviousPage }">
								<a
									href="${pageContext.request.contextPath}/updateStatusPage?currentPage=${pageInfo.pageNum-1}"><button
										class="layui-btn layui-btn-normal  layui-btn-sm">上一页</button></a>
							</c:if> <c:if test="${pageInfo.hasNextPage }">
								<a
									href="${pageContext.request.contextPath}/updateStatusPage?currentPage=${pageInfo.pageNum+1}"><button
										class="layui-btn layui-btn-normal  layui-btn-sm">下一页</button></a>
							</c:if> <a
							href="${pageContext.request.contextPath}/updateStatusPage?currentPage=${pageInfo.pages}"><button>
									末页</button></a>
						</li>
					</center>
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

	<div class="modal fade" id="updateLevelModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">提升级别</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form name="updateLevelForm" id="updateLevelForm"
					action="updateLevel" method="post" class="form-validate">
					<div class="modal-body">
						学号：&ensp;&ensp;<input id="student_num_check" style="border: none;"
							type="text" name="student_num_check" readonly>
					</div>
					<div class="modal-body">
						姓名： &ensp;&ensp;<input id="student_name_check"
							style="border: none;" type="text" name="student_name_check"
							readonly>
					</div>
					<div class="modal-body">
						性别：&ensp;&ensp; <input id="student_gender_check"
							style="border: none;" type="text" name="student_gender_check"
							readonly>
					</div>
					<div class="modal-body">
						所属级别： <input id="student_status_check" style="border: none;"
							type="text" name="student_status_check" readonly>
					</div>
					<div class="modal-body">
						所在支部： <input id="branch_name_check" style="border: none;"
							type="text" name="branch_name_check" readonly>
					</div>
					<div class="modal-body">
						手机号码： <input id="student_tel_check" style="border: none;"
							type="text" name="student_tel_check" readonly>
					</div>
					<div class="modal-body">
						电子邮箱： <input id="student_email_check" style="border: none;"
							type="text" name="student_email_check" readonly>
					</div>
					<div class="modal-footer"></div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-success">确定升级</button>
					</div>
				</form>
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

	<script>
		function updateLevelModal(obj) {
			$("#updateLevelModal").modal('show');
			var $td = $(obj).parents('tr').children('td');
			var stuID_check = $td.eq(0).text();
			var name_check = $td.eq(1).text();
			var gender_check = $td.eq(2).text();
			var status_check = $td.eq(3).text();
			var branch_check = $td.eq(4).text();
			var tel_check = $td.eq(5).text();
			var eMail_check = $td.eq(6).text();
			$("#student_num_check").val(stuID_check);
			$("#student_name_check").val(name_check);
			$("#student_gender_check").val(ID_check);
			$("#branch_name_check").val(branch_check);
			$("#student_status_check").val(status_check);
			$("#student_tel_check").val(tel_check);
			$("#student_email_check").val(eMail_check);
		}
	</script>
	<script>
		function validateForm() {
			function validateForm() {
				var name = document.forms["inputForm"]["student_name"].value;
				var stuID = document.forms["inputForm"]["student_num"].value;
				var branch = document.forms["inputForm"]["branch_name"].value;
				if (stuID == null || stuID == "") {
					if (name == null || name == "") {
						if (branch == null || branch == "") {
						
								return false;
							
						}
					}
				}
			}
	</script>
</body>
</html>