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
		var arr1 = [ '../../resources/images/banner.jpg',
				'../../resources/images/banner02.jpg' ]; // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
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
		<div class="sub_mbtn"></div>
		<div class="subPage_con">
			<div class="bread">
				<span>您所在的位置： <a href="/NEFUSE/teacher/index.jsp">首页</a>» <a
					href="./index.jsp">师资</a>» 副教授
				</span>
			</div>
			<%@ include file="../left-nav.jsp" %>
			 <section class="sub_right marginBot">
        <div class="pageArticle">
            <div class="articleTitle borderBot">
                <h2>工程师
                </h2>
            </div>
            <div class="teacher-detail">
                <div class="teacher-img">
                    <span class="t-img"><a><img src="resources/images/bo.jpg" alt=""></a></span>
                    <div class="t-txt01">
                        <h4>何其生</h4>
                        <span>工程师，软件工程教师</span>
                        <p><a href="#">社会报道</a><a class="color6" href="#"> </a></p>
                        <p><a href="#">其他链接</a><a class="color6" href="#"></a></p>
                    </div>
                </div>
               
                <div class="teacher-d01">
                    <h3 class="teacher-title">工作经历</h3>
                    <div class="teacher-info">
                        <br><br>
                    </div>
                </div>
                <div class="teacher-d01">
                    <h3 class="teacher-title">研究领域</h3>
                    <div class="teacher-info">
                      Java
                    </div>
                </div>
                <div class="teacher-d01">
                    <h3 class="teacher-title">研究成果</h3>
                    <div class="teacher-info">
                        论著及编著：<br><br>
                        </div>
                </div>
            </div>
        </div>
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