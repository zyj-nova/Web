<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<%@ include file="./define.jsp"%>
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
								<li><a href="cp"><i class="lnr lnr-envelope"></i> <span>修改密码</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>新闻编辑</span></a></li>
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
						<li><a href="chart" class="active"><i
								class="lnr lnr-code"></i> <span>发布新闻</span></a></li>
						<li><a href="tongji" class=""><i class="lnr lnr-chart-bars"></i>
								<span>统计</span></a></li>
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
					<h3 class="page-title">新闻添加</h3>
					<form method="post" action="add" enctype="multipart/form-data"  onsubmit="return check();">
						<div class="row">
							<div class="col-md-6">
								<h4>请输入新闻标题：</h4><input type="text" class="form-control" name="title">
								<h4>请输入新闻作者：</h4><input type="text" class="form-control" name="author">
							</div>
							<div class="col-md-6">
								<h4>请选择新闻类别：</h4>
								<select class="form-control" name="catagory">
									<option value="1">通知公告</option>
									<option value="2">新闻动态</option>
									<option value="3">学术讲座</option>
									<option value="4">实习就业</option>
									<option value="5">招生教学</option>
								</select>
								<h4>请选择发布时间:</h4><input type="date" class="form-control" name="insertDate">
							</div>
						</div>
						<div class="row">
							<div class="container">
								<h3>请在下方输入正文</h3>
							</div>
							<div class="container">
								<script id="editor" type="text/plain" style="width: 960px; height: 350px;"></script>
								<a class="btn btn-primary" onclick="getContent()">保存正文</a>
								<h5>请在下方上传图片(可以选择多个文件)</h5>
								<input type="file" class="file" multiple="multiple" name="files">
								<input type="hidden" name="content">	
								
							</div>
							
							
						</div></br>
						<div class="container">
							<button class="btn btn-success" type="submit" >提交</button>
						</div>
					</form>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2017 <a href="#" target="_blank">Theme I Need</a>. All
					Rights Reserved.
				</p>
			</div>
		</footer>
	</div>


	<%@ include file="./script.jsp"%>
	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		var ue = UE.getEditor('editor');

		
		function createEditor() {
			enableBtn();
			UE.getEditor('editor');
		}
	
		function getContent() {
			var arr = [];
			arr.push(UE.getEditor('editor').getContent());
			$('input[type=hidden]').val(arr.join("\n"));
			console.log($('input[type=hidden]').val())
			
		}
		
		function success(){
			alert("提交成功!");
		}
		
		function check(){
			if(!UE.getEditor('editor').hasContents() || $('input[name=title]').val()==""||$('input[type=date]').val()==""){
				console.log(UE.getEditor('editor').hasContents());
				console.log($('input[type=date]').val())
				alert('请输入完整的新闻标题、内容以及日期');
				return false;
			}else{
				alert('发布成功');
				return true;
			}
		}
	
	</script>
	

</body>
</html>