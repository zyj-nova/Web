<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>软件工程系</title>
    <link rel="icon" href="/NEFUSE/resources/images/icon.png" />
    <link rel="stylesheet" href="../../resources/css/style.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
    <link rel="stylesheet" href="../../resources/css/subcon.css">
     <script type="text/javascript" src="../../resources/js/jquery.js"></script>
    <script type="text/javascript" src="../../resources/js/script.js"></script>
    <script type="text/javascript" src="../../resources/js/responsiveslides.min.js"></script>
</head>
<body>
<%@ include file="../../jsp/head.jsp" %>
<div class="sub_banner" id="subbanner">
    <img src="/NEFUSE/resources/images/banner.jpg" alt="" title="" >
</div>
<article class="subPage">
	<div class="sub_mbtn"></div>


	<!-- <aside class="sub_navm">
		<ul>

			<li><a href="index.htm">在职教师</a></li>

			<li><a href="http://www.law.pku.edu.cn/hzjl/gjhz/fwjs/index.htm">教授</a></li>

			<li><a href="../jzjs/index.htm">副教授</a></li>

			<li><a href="../jxjs2/index.htm">讲师</a></li>

			<li><a href="../jzds/index.htm">兼职导师</a></li>

			<li><a href="../bsh/index.htm">博士后</a></li>
			
			<li><a href="../bsh/index.htm">工程师</a></li>

		</ul>
	</aside> -->
	<div class="subPage_con">
		<div class="bread">
			<span>您所在的位置： <a href="${pageContext.request.contextPath }/index">首页</a>» <a
				href="../index.jsp">师资</a>» 副教授
			</span>
		</div>
		<%@ include file="../left-nav.jsp" %>
		<section class="sub_right marginBot">
			<div>
				<p
					style="padding: 0 10px 0 0; width: 180px; background-image: none; font-size: 1.8em; color: #005bac;">副教授</p>
			</div>
			<br> <br>
			<div class="subBanner01">
				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;">软件工程副教授</span>
				</p>

				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;text-indent:2em;"> 老师们秉持着“学参天地，德合自然”的教学理念，辛勤的奋战在教学一线</span>
				</p>


			</div>
			<aside class="con_list01">
				<ul class="list_con01">
					
					<li><span><a href="./liudan.jsp">刘丹</a></span></li>
					<li><span><a href="./luosiqing.jsp">罗嗣卿</a></span></li>
				</ul>
					
				</ul>
			</aside>
			
			
		</section>
	</div>




</article>
<%@ include file="../../jsp/footer.jsp" %>
<script type="text/javascript">

    $(function () {
        Nav('#nav');;//导航
        navMin();  //手机端下拉菜单
        Menu('.in_mbtn','.navm');//手机版导航
        ImgHeight();
        tab('#tab01')//tab切换
        tab('#tab02')//tab切换
        tab('#tab03')//tab切换
        $("#slider").responsiveSlides({
            auto: true,
            pager: true,
            timeout: 6000,
            nav: true,
            speed: 500,
            // 对应外层div的class : slide_container
            namespace: "slide"
        });
        SerMax();  //搜索框弹出效果
        side_subMenu();//左侧边栏二级菜
    });

</script>
</body>
</html>