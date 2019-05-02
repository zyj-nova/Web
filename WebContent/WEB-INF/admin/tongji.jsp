<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻统计</title>
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
						<li><a href="newsadmin" class=""><i class="lnr lnr-dice"></i>
								<span>管理</span></a></li>
						<li><a href="chart" class=""><i class="lnr lnr-code"></i>
								<span>发布新闻</span></a></li>
						<li><a href="#" class="active"><i
								class="lnr lnr-chart-bars"></i> <span>统计</span></a></li>
						<li><a href="cp" class=""><i class="lnr lnr-cog"></i> <span>修改密码</span></a></li>

					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">统计概览</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-6">
									<div class="metric">
										<span class="icon"><i class="fa fa-industry"></i></span>
										<p>
											<span class="number">${gonggao}</span> <span class="title">通知公告</span>
										</p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="metric">
										<span class="icon"><i class="fa fa-archive"></i></span>
										<p>
											<span class="number">${dongtai }</span> <span class="title">新闻动态</span>
										</p>
									</div>
								</div>
							</div>
								<div class="row">
								<div class="col-md-6">
									<div class="metric">
										<span class="icon"><i class="fa fa-bars"></i></span>
										<p>
											<span class="number">${zhaosheng }</span> <span class="title">招生教学</span>
										</p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="metric">
										<span class="icon"><i class="fa fa-institution"></i></span>
										<p>
											<span class="number">${jiangzuo }</span> <span class="title">学术讲座</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="metric">
										<span class="icon"><i class="fa fa-sticky-note"></i></span>
										<p>
											<span class="number">${shixijiuye }</span> <span class="title">实习就业</span>
										</p>
									</div>
								</div>
							</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>