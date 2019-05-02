<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				'/NEFUSE/resources/images/banner02.jpg','/NEFUSE/resources/images/banner03.jpg' ]; // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
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
				<span>您所在的位置： <a href="/NEFUSE/index">首页</a>&raquo; <a
					href="../index.htm">实验室 </a>&raquo;创新实验室
				</span>
			</div>
			<div class="sbu_leftWrap">


				<aside class="sub_left">

					<div class="sub_title">
						<div class="sub_t01">
							<h2>实验室</h2>
						</div>
					</div>
					<ul>
						<li><a href="#chuangxin">创新实验室</a></li>
						<li><a href="#ai">人工智能实验室</a></li>

						
						<li><a href="#android">安卓开发实验室</a></li>
						<li><a href="javascript:void(0)">关于我们</a></
					</ul>
				</aside>
			</div>
			<section class="sub_right marginBot">
				<div class="pageArticle">
					<div class="article cur02">
						<div class="articleTitle borderBot">
							<h2>实验室介绍</h2>
						</div>
					</div>
					<div class="article article05 art" id="chuangxin">
						<h3>创新实验室</h3>
						<p style="text-indent:2em;">
							本着“技术驱动未来”的理念， 我们致力于推进计算机科学领域的基础性、前瞻性和突破性的研究，探索颠覆性的新兴技术发展；与此同时，促进企业与高校的深度合作，引领重大科技创新的实践应用，共创产学研深度融合的合作生态圈。我们的合作理念是提供开放真实的业务场景，携手学术界共同发现和定义问题，内外协作解决领域难题。
						</p>
						<img alt="" src="/NEFUSE/resources/images/chuangxin.jpg">
             		</div>
             		<div class="article article05 art" id="ai">
             		<h3>人工智能实验室</h3>
						<p style="text-indent:2em;">林大软件AI战略蓄势待发，聚集全球数十位人工智能科学家、70余位世界一流AI博士。
专注机器学习、计算机视觉、语音识别、自然语言处理等人工智能领域的研究，孵化出机器翻译、语音聊天、智能问答、图像理解、棋类博弈、无人驾驶等项目，探索未来技术的商业应用前景。
基于亿万用户海量数据及在互联网各垂直领域的技术优势，立志打造世界顶尖人工智能团队
						</p>
						<div>
						<img src="/NEFUSE/resources/images/ai.jpg" style="alegn:center;"></div>
             		</div>
             		<div class="article article05 art" id="android">
             		<h3>安卓开发实验室</h3>
						<p style="float:left;">
							Android是一个开源的，基于Linux的移动设备操作系统，主要使用于移动设备，如智能手机和平板电脑。Android是由谷歌及其他公司带领的开放手机联盟开发的。
						</p>
						<img alt="" src="/NEFUSE/resources/images/android.jpg">
             		</div>
				</div>
			</section>
		</div>
		</aside>
	</article>
	<%@ include file="../jsp/footer.jsp"%>
</body>
</html>