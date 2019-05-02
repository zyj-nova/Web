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
<script type="text/javascript">
    var arr1 = [  '/NEFUSE/resources/images/banner.jpg','/NEFUSE/resources/images/banner02.jpg'];  // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
    var iLen1 = arr1.length;
    var iNum = 0;
    $(function(){
        iNum1 = Math.floor(Math.random()*iLen1);
        $('.sub_banner img').attr('src',arr1[iNum1]);
    })

</script>
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
			<span>您所在的位置： <a href="#">首页</a>» <a
				href="../index.jsp">师资</a>» 工程师
			</span>
		</div>
		<%@ include file="../left-nav.jsp" %>
		<section class="sub_right marginBot">
			<div>
				<p
					style="padding: 0 10px 0 0; width: 180px; background-image: none; font-size: 1.8em; color: #005bac;">工程师</p>
			</div>
			<br> <br>
			<div class="subBanner01">
				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;">工程师</span>
				</p>

				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;text-indent:2em;"> 老师们秉持着“学参天地，德合自然”的教学理念，辛勤的奋战在教学一线</span>
				</p>


			</div>

			<aside class="con_list01">
				<ul class="list_con01">
					<li><span><a href="./he.jsp">何其生</a></span></li>
					
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