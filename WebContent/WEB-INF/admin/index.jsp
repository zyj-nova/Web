<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>管理中心</title>


<%@ include file="./define.jsp"%>

</head>
<body onload="getTime()">
	<div id="wrapper" >
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
								<li><a href="cp"><i class="lnr lnr-envelope"></i> <span>修改密码</span></a></li>
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
						<li><a href="adminIndex" class="active"><i
								class="lnr lnr-home"></i> <span>首页</span></a></li>
						<li><a href="newsadmin" class=""><i class="lnr lnr-dice"></i>
								<span>管理</span></a></li>
						<li><a href="chart" class=""><i class="lnr lnr-code"></i>
								<span>发布新闻</span></a></li>
						<li><a href="tongji" class=""><i class="lnr lnr-chart-bars"></i>
								<span>统计</span></a></li>
						<li><a href="cp" class=""><i class="lnr lnr-cog"></i> <span>修改密码</span></a></li>

					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
	
			
				
					<div id="showtime"></div>
				
			

		

	</div>
	 <script src="resources/js/jquery.js"></script>
	
	<script type="text/javascript" src="resources/js/jquery.backstretch.min.js"></script>
	<script>
         $.backstretch("resources/assets/img/loginbg.jpg", {speed: 500});
    </script>
	<script>
		function getTime() {
			var today = new Date();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			// add a zero in front of numbers<10
			m = checkTime(m);
			s = checkTime(s);
			document.getElementById('showtime').innerHTML = h + ":" + m + ":"
					+ s;
			t = setTimeout(function() {
				getTime()
			}, 500);
		}

		function checkTime(i) {
			if (i < 10) {
				i = "0" + i;
			}
			return i;
		}
	</script>
	<%@ include file="./script.jsp" %>
</body>
</html>