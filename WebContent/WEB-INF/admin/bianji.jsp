<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻管理中心</title>
<%@ include file="./define.jsp"%>
<%@ include file="./script.jsp"%>
</head>
<body>
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img
					src="resources/assets/img/logo-dark.png" alt="Klorofil Logo"
					class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>
				<form class="navbar-form navbar-left" method="post" action="innersearch">
					<div class="input-group">
						<input type="text" value="" class="form-control"
							placeholder="搜索新闻" name="search"> <span
							class="input-group-btn"><button class="btn btn-primary" type="submit">搜索</button></span>
					</div>
				</form>

				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#"
							class="dropdown-toggle icon-menu" data-toggle="dropdown"> <i
								class="lnr lnr-alarm"></i> <span class="badge bg-danger">5</span>
						</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span
										class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="lnr lnr-question-circle"></i>
								<span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img
								src="resources/assets/img/user.png" class="img-circle"
								alt="Avatar"> <span>${admin.adminname }</span> <i
								class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>我的信息</span></a></li>
								<li><a href="${pageContext.request.contextPath}/cp"><i
										class="lnr lnr-envelope"></i> <span>修改密码</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>发布新闻</span></a></li>
								<li><a href="${pageContext.request.contextPath}/LogOut"><i
										class="lnr lnr-exit"></i> <span>注销</span></a></li>
							</ul></li>
						<!-- <li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->

		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="adminIndex" class=""><i class="lnr lnr-home"></i>
								<span>首页</span></a></li>
						<li><a href="#" class="active"><i class="lnr lnr-dice"></i>
								<span>管理</span></a></li>
						<li><a href="chart" class=""><i class="lnr lnr-code"></i>
								<span>发布新闻</span></a></li>
						<li><a href="tongji" class=""><i
								class="lnr lnr-chart-bars"></i> <span>统计</span></a></li>
						<li><a href="cp" class=""><i class="lnr lnr-cog"></i> <span>修改密码</span></a></li>

					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<div class="box-body">
						<div class="col-md-8">
						<label><a class="btn btn-info" href="javascript:history.go(-1);">返回</a></label>
						<form action="updatenews" method="post" role="form">
							<div class="form-group">
								<input type="hidden" value="${n.id }" name="id">
								<label for="name">标题:</label> <input name="title" type="text"
									value="${n.title }" class="form-control">
							</div>
							<div class="form-group">
								<label for="name">作者:</label> <input name="author" type="text"
									value="${n.author }" class="form-control">
							</div>
							<div class="form-group">
								<label for="name">类别:</label> 
								<select name="catagory" class="form-control">
									<c:forEach items="${lists }" var="i">
										<c:set var= "s" value=""/>
										<c:if test="${n.catagory == i.id}">
											<c:set var="s" value="selected"/>
										</c:if>
										<option value="${i.id }" ${s }>${i.name }</option>
									</c:forEach>

								</select>
							</div>
							<div class="form-group">
								<label for="name">日期:</label>
								<input type="date" value="${n.insertDate }" class="form-control" name="insertDate"> 
							</div>
							<div class="form-group">
								<label>正文:</label>
								
								
							</div>
							<div>
							<textarea class="form-control" rows="3" name="content">${n.content }</textarea>
							</div><br>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">提交</button>
							</div>
							
						</form>
						</div>
						
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>