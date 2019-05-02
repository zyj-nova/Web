<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻中心</title>
<%@ include file="../jsp/define.jsp"%>
</head>
<body>
	<%@ include file="../jsp/head.jsp"%>
	<script type="text/javascript">
		var arr1 = [ '/NEFUSE/resources/images/banner.jpg',
				'/NEFUSE/resources/images/banner02.jpg',
				'/NEFUSE/resources/images/banner03.jpg' ]; // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
		var iLen1 = arr1.length;
		var iNum = 0;
		$(function() {
			iNum1 = Math.floor(Math.random() * iLen1);
			$('.sub_banner img').attr('src', arr1[iNum1]);
		})
	</script>
	<div class="sub_banner" id="subbanner">
		<img src="resources/images/banner.jpg" alt="" title="">
	</div>
	<article class="subPage">
		<aside class="sub_navm">
			<ul>

				<li><a href="index.htm">新闻动态</a></li>


				<li><a href="#">公告通知</a> <strong class="phone_arrow">+</strong>
					<dl>
						<dd>
							<a href="../ggtz/tzggx/index.htm">通知公告</a>
						</dd>
						<dd>
							<a href="../ggtz/xzjz/index.htm">学术讲座</a>
						</dd>
						<dd>
							<a href="../ggtz/zsjx/index.htm">招生教学</a>
						</dd>

					</dl></li>
				<li><a href="../zs/index.htm">综述</a></li>

				<li><a href="../gz/index.htm">关注</a></li>

				<li><a href="../jj/index.htm">聚焦</a></li>

				<li><a href="../pl/index.htm">评论</a></li>

				<li><a href="../rw/index.htm">人物</a></li>

				<li><a href="../xz/index.htm">学术</a></li>

				<li><a href="../jl/index.htm">交流</a></li>

				<li><a href="../skxw/index.htm">社会新闻</a></li>

				<li><a href="../dmtxw/index.htm">多媒体新闻</a></li>

				<li><a href="../xwsy/index.htm">新闻索引</a></li>


			</ul>
		</aside>
		<div class="subPage_con">
			<div class="bread">
				<span>您所在的位置： <a
					href="${pageContext.request.contextPath  }/index">首页</a>&raquo; <a
					href="${pageContext.request.contextPath  }/allnews">新闻中心</a>&raquo;
					招生教学
				</span>
			</div>
			<div class="sbu_leftWrap">
				<aside class="sub_left">
					<div class="sub_title">
						<div class="sub_t01">
							<h2>新闻中心</h2>
						</div>
					</div>
					<ul>
						<li><a href="${pageContext.request.contextPath  }/dongtai">新闻动态</a></li>
						<li><a href="${pageContext.request.contextPath  }/gonggao">公告通知</a><strong class="arrow">+</strong>

							<dl class="twoJ_menu">
								<dd>
									<a href="${pageContext.request.contextPath  }/gonggao">通知公告</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath  }/xueshujiangzuo">学术讲座</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath  }/zhaosheng">招生教学</a>
								</dd>

							</dl></li>

						<li><a href="javascript:void(0)">综述</a></li>
						<li><a href="javascript:void(0)">关注</a></li>
						<li><a href="${pageContext.request.contextPath  }/shixijiuye">实习就业</a></
					</ul>
				</aside>
			</div>
			<section class="sub_right marginBot">
				<div class="pageArticle">
					<div class="article cur02">
						<div class="articleTitle borderBot">
							<h2>招生教学</h2>
						</div>

						<ul class="list01">

							<c:forEach items="${zhaosheng }" var="it">
								<li><a href="news_detail?id=${ it.id}">${it.title }</a><span
									class="rightDate">${it.insertDate }</span></li>

							</c:forEach>

						</ul>
						<%-- <span><a href="${pageContext.request.contextPath  }/allnews?currentPage=${pb.currentPage==1?1:pb.currentPage-1}">上一页&nbsp;&nbsp;</a></span>当前&nbsp;${pb.currentPage }页&nbsp;/&nbsp;共${pb.totalPage }页&nbsp;<span>
		<a href="${pageContext.request.contextPath  }/allnews?currentPage=${pb.currentPage==pb.totalPage?pb.totalPage:pb.currentPage+1}">下一页</a></span> --%>

					</div>

				</div>
			</section>
		</div>
		</aside>
	</article>
	<%@ include file="../jsp/footer.jsp"%>
</body>
</html>