<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻通知管理</title>
<%@ include file="define.jsp" %>
<script>
function del_msg(id, name) {
	if (confirm('确定删除:' + name + '?')) {
		location.href = "${pageContext.request.contextPath}/delete?id="
				+ id;
	}
};
</script>
</head>
<body>
<div id="wrapper">
<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="resources/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left" method="post" action="innersearch">
					<div class="input-group">
						<input type="text" value="" class="form-control"
							placeholder="搜索新闻" name="search"> <span
							class="input-group-btn">
							<button	class="btn btn-primary" type="submit">搜索</button></span>
					</div>
				</form>
				
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/assets/img/user.png" class="img-circle" alt="Avatar"> <span>${admin.adminname }</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>我的信息</span></a></li>
								<li><a href="${pageContext.request.contextPath}/cp"><i class="lnr lnr-envelope"></i> <span>修改密码</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>发布新闻</span></a></li>
								<li><a href="${pageContext.request.contextPath}/LogOut"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
							</ul>
						</li>
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
						<li><a href="adminIndex" class=""><i class="lnr lnr-home"></i> <span>首页</span></a></li>
						<li><a href="#" class="active"><i class="lnr lnr-dice"></i> <span>管理</span></a></li>
						<li><a href="chart" class=""><i class="lnr lnr-code"></i> <span>发布新闻</span></a></li>
						<li><a href="tongji" class=""><i class="lnr lnr-chart-bars"></i> <span>统计</span></a></li>
						<li><a href="cp" class=""><i class="lnr lnr-cog"></i> <span>修改密码</span></a></li>
						
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">新闻动态</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- TABLE HOVER -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">新闻动态</h3>
								</div>
								<div class="panel-body">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>号码</th>
												<th>新闻标题</th>
												<th>发布日期</th>
												<th>分类</th>
												<th>编辑</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
												<c:forEach items="${pb.list }" var="it">
													<tr>
													
														<td style="width:10%;">${it.id }</td>
														<td style="width:30%;">${it.title }</td>
														<td>${it.insertDate }</td>
														<td>
															<c:choose>
																<c:when test="${it.catagory == 1}">通知公告</c:when>
																<c:when test="${it.catagory == 2 }">新闻动态</c:when>
																<c:when test="${it.catagory == 3 }">学术讲座</c:when>
																<c:when test="${it.catagory == 4 }">实习就业</c:when>
																<c:when test="${it.catagory == 5 }">招生教学</c:when>
															</c:choose>
														</td>
														<td><a href="${pageContext.request.contextPath }/edit?id=${it.id}"><img src="resources/images/edit.png"></a></td>
												<td><a href="#" onclick="del_msg('${it.id}','${it.title }')"><img src="resources/images/delete.png"></a></td>
													</tr>
												</c:forEach>
												<span><a href="${pageContext.request.contextPath  }/newsadmin?currentPage=${pb.currentPage==1?1:pb.currentPage-1}">上一页&nbsp;&nbsp;</a></span>当前&nbsp;${pb.currentPage }页&nbsp;/&nbsp;共${pb.totalPage }页&nbsp;<span>
		<a href="${pageContext.request.contextPath  }/newsadmin?currentPage=${pb.currentPage==pb.totalPage?pb.totalPage:pb.currentPage+1}">下一页</a></span>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END TABLE HOVER -->
						</div>
					</div>
					
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017. All Rights Reserved.</p>
			</div>
		</footer>
</div>
<%@ include file="script.jsp" %>

</body>
</html>