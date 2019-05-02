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
    <link rel="stylesheet" href="../../resources/css/style.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
    <link rel="stylesheet" href="../../resources/css/subcon.css">
    <link rel="icon" href="/NEFUSE/resources/images/icon.png" />
     <script type="text/javascript" src="/NEFUSE/resources/js/jquery.js"></script>
    <script type="text/javascript" src="/NEFUSE/resources/js/script.js"></script>
    <script type="text/javascript" src="/NEFUSE/resources/js/responsiveslides.min.js"></script>
</head>
<body>
<%@ include file="../../jsp/head.jsp" %>
	<div class="sub_banner" id="subbanner">
		<img src="resources/images/banner.jpg" alt="" title="">
	</div>
	<article class="subPage">
		<div class="sub_mbtn"></div>
		<div class="subPage_con">
			<div class="bread">
				<span>您所在的位置： <a href="/NEFUSE/teacher/index.jsp">首页</a>» <a
					href="./index.jsp">师资</a>» 教授
				</span>
			</div>
			<%@ include file="../left-nav.jsp" %>
			 <section class="sub_right marginBot">
        <div class="pageArticle">
            <div class="articleTitle borderBot">
                <h2>教授
                </h2>
            </div>
            <div class="teacher-detail">
                <div class="teacher-img">
                    <span class="t-img"><a><img src="/NEFUSE/resources/images/su.jpg" alt=""></a></span>
                    <div class="t-txt01">
                        <h4>苏建民</h4>
                        <span>教授，硕士，硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员</span>
                        <p><a href="#">社会报道</a><a class="color6" href="#"> </a></p>
                        <p><a href="#">其他链接</a><a class="color6" href="#"></a></p>
                    </div>
                </div>
               
                <div class="teacher-d01">
                    <h3 class="teacher-title">工作经历</h3>
                    <div class="teacher-info">
                        <br>
                    </div>
                </div>
                <div class="teacher-d01">
                    <h3 class="teacher-title">研究领域</h3>
                    <div class="teacher-info">
                    自动控制、信号与信息处理
                    
                    </div>
                </div>
                <div class="teacher-d01">
                    <h3 class="teacher-title">研究成果</h3>
                    <div class="teacher-info">
                        论著及编著：  主持或参加科研、教学项目11项，科研与教学获奖11项，出版教材2部，发表论文32篇。 
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