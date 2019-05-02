<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/index.css">
    <link rel="stylesheet" href="resources/css/subcon.css">
     <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/script.js"></script>
    <script type="text/javascript" src="resources/js/responsiveslides.min.js"></script>
    
</head>
<body>
<%@ include file="head.jsp" %>
<%@ include file="side.jsp" %>
<script type="text/javascript">
    $(function(){
    	 Nav('#nav');;//头部导航
    	    navMin();  //手机端下拉菜单
    	    Menu('.in_mbtn','.navm');//手机版导航
    	    Menu('.sub_mbtn','.sub_navm');//手机版导航
    	    SubImgHeight();
    	    FontSize2('.size','.art');
    	    SerMax();  //搜索框弹出效果
    	    side_subMenu();//左侧边栏二级菜
    })
   
</script>
<script type="text/javascript">
    var arr1 = [  'resources/images/banner.jpg','resources/images/banner02.jpg'];  // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
    var iLen1 = arr1.length;
    var iNum = 0;
    $(function(){
        iNum1 = Math.floor(Math.random()*iLen1);
        $('.sub_banner img').attr('src',arr1[iNum1]);
    })

</script>

<%@ include file="footer.jsp" %>

</body>
</html>