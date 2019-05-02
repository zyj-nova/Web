<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>软件工程系</title>
<link rel="stylesheet" href="/NEFUSE/resources/css/style.css">
<link rel="stylesheet" href="/NEFUSE/resources/css/index.css">
<link rel="icon" href="/NEFUSE/resources/images/icon.png" />
<script type="text/javascript" src="/NEFUSE/resources/js/jquery.js"></script>
<script type="text/javascript" src="/NEFUSE/resources/js/script.js"></script>
<script type="text/javascript"
	src="/NEFUSE/resources/js/responsiveslides.min.js"></script>
</head>
<body>
	<%@include file="head.jsp"%>
	<article class="banner">
		<div class="slide_container">
			<ul class="rslides" id="slider">
				<li><a href="#"><img src="resources/images/20181208.jpg"
						alt=""></a></li>
				<li><a href="#"><img src="resources/images/20181209.jpg"
						alt=""></a></li>
				<li><a href="#"><img
						src="resources/images/mainbuilding.jpg" alt=""></a></li>
				<!--  <li><a href="http://www.law.pku.edu.cn/xwzx/zs/68400.htm"><img src="resources/images/content/2018-04/20180430112959827244.jpg" alt=""></a></li> -->
			</ul>

		</div>

	</article>
	<article class="content">
		<div class="row mode01">
			<section class="news">
				<div class="title">
					<h2>新闻动态</h2>
					<a href="${pageContext.request.contextPath }/dongtai">更多</a>
				</div>
				<div class="news_con">
					<dl>
						<c:forEach items="${ dongtai1}" var="d1">
							<dd>
								<a
									href="${pageContext.request.contextPath }/news_detail?id=${d1.id}">${d1.title}</a>
								<p>${d1.insertDate}</p>
							</dd>
						</c:forEach>

					</dl>
					<dl class="right">
						<c:forEach items="${ dongtai2}" var="d2">
							<dd>
								<a
									href="${pageContext.request.contextPath }/news_detail?id=${d2.id}">${d2.title}</a>
								<p>${d2.insertDate}</p>
							</dd>
						</c:forEach>
					</dl>

				</div>

			</section>
			<section class="tongzhi tab01" id="tab01">
				<!-- <div class="title">
              <h2>通知公告</h2><a href="#">更多</a>
            </div> -->
				<ul class="tabMenu01">
					<li class="active"><a href="javascript:void(0)">通知公告</a></li>
					<li><a href="javascript:void(0)">学术讲座</a></li>
				</ul>
				<div class="tabMore01">
					<span style="display: block;"><a
						href="${pageContext.request.contextPath }/gonggao">更多</a></span> <span><a
						href="${pageContext.request.contextPath }/xueshujiangzuo">更多</a></span>
					<!--  <span><a href="xwzx/ggtz/zsjx/index.htm">更多</a></span> -->
				</div>
				<dl class="tabList01">
					<dd style="display: block;">
						<ul class="noticeList">
							<c:forEach items="${gonggao}" var="g">

								<li><span class="date"> <span class="day"><f:formatDate value="${g.insertDate}" pattern="dd"/></span>
										<span class="month"><f:formatDate value="${g.insertDate}" pattern="MM"/> </span>
								</span> <a href="${pageContext.request.contextPath }/news_detail?id=${g.id}">${g.title }</a></li>
							</c:forEach>
						</ul>
					</dd>
					<dd>
						<ul class="noticeList">
								<c:forEach items="${jiangzuo}" var="j">
								<li>
									
									<span class="date"> <span class="day"><f:formatDate value="${j.insertDate}" pattern="dd"/></span>
										<span class="month"> <f:formatDate value="${j.insertDate}" pattern="MM"/> </span>
								</span> 
									<a href="${pageContext.request.contextPath }/news_detail?id=${j.id}">${j.title }</a>
								</li>
							</c:forEach>
								 
							
						</ul>
					</dd>

				</dl>

			</section>
		</div>
		<div class="row mode02">
			<div class="sm">
				<div class="sm-img">
					<a><img src="resources/images/info2.jpg" alt=""></a>
				</div>
				<div class="sm_con">
					<h3>
						<a href="#">信息学院发展建设成果展</a>
					</h3>
					<div class="info">
						林业大学信息学院自成立以来，不断奋进，所有教师努力拼搏，为社会培育了上万名优秀人才，值此信息学院30周年之际，我院特别邀请校友回院作报告
						，展示我院实例</div>

					<p>
						<a class="more01" href="#">详细…</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row mode03">
			<section class="xueshu tab01" id="tab02">

				<ul class="tabMenu01">
					<li class="active"><a href="javascript:void(0)">实习就业</a></li>

				</ul>
				<div class="tabMore01">
					<span style="display: block;"><a
						href="${pageContext.request.contextPath }/shixijiuye">更多</a></span>

				</div>
				<dl class="tabList01">
					<dd style="display: block;">
						<ul class="list02">
							<c:forEach items="${shixijiuye}" var="shixi">
								<li><span>${shixi.insertDate }</span><a
									href="${pageContext.request.contextPath }/news_detail?id=${shixi.id}">${shixi.title}</a></li>
							</c:forEach>

						</ul>
					</dd>
					<dd></dd>
				</dl>
			</section>
			<section class="zhidu tab01" id="tab03">

				<ul class="tabMenu01">
					<li class="active"><a href="javascript:void(0)">招生教学</a></li>
				</ul>
				<div class="tabMore01">
					<span style="display: block;"><a
						href="${pageContext.request.contextPath }/zhaosheng">更多</a></span>

				</div>
				<dl class="tabList01">
					<dd style="display: block;">
						<ul class="list03">
							<c:forEach items="${zhaosheng }" var="it">
								<li><span>${it.insertDate }</span><a
									href="${pageContext.request.contextPath }/news_detail?id=${it.id}">${it.title }</a></li>
							</c:forEach>

						</ul>
					</dd>

				</dl>
			</section>
		</div>
		<div class="row mode04">
			<div class="title02">
				<h2>专题</h2>
				<!--a href="zt/index.htm">更多</a-->
			</div>
			<ul class="topicList01">
				<li><a href="#"><span><img
							src="resources/images/20180427153951470220.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/leader.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180427154006916357.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180430143357936459.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180427154122917891.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180427154025665448.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180427154044673615.png" alt=""></span></a></li>
				<li><a href="#"><span><img
							src="resources/images/20180427154101742721.png" alt=""></span></a></li>
			</ul>
		</div>
		<div class="row mode05">
			<dl class="friendLink">
				<dt>
					<a href="#">友情链接：</a>
				</dt>
				<dd>
					<a href="http://www.hit.edu.cn">哈尔滨工业大学</a><span>|</span> <a
						href="http://news.nefu.edu.cn">林大新闻网</a><span>|</span> <a
						href="http://www.moe.gov.cn//">中华人民共和国教育部</a><span>|</span> <a
						href="http://sc.neu.edu.cn/">东北大学软件学院</a><span>|</span> <a
						href="http://www.people.com.cn/">人民网</a><span>|</span> <a
						href="http://xinhuanet.com/">新华网</a><span>|</span>


				</dd>
			</dl>
		</div>
	</article>
	<%@ include file="footer.jsp"%>


</body>
</html>