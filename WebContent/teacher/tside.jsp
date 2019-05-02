<%@ page pageEncoding="UTF-8"%>
<script type="text/javascript">
    var arr1 = [  '../resources/images/banner.jpg','../resources/images/banner02.jpg'];  // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
    var iLen1 = arr1.length;
    var iNum = 0;
    $(function(){
        iNum1 = Math.floor(Math.random()*iLen1);
        $('.sub_banner img').attr('src',arr1[iNum1]);
    })

</script>
<div class="sub_banner" id="subbanner">
    <img src="../resources/images/banner.jpg" alt="" title="" >
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
				href="../index.htm">师资</a>» 在职教师
			</span>
		</div>
		<div class="sbu_leftWrap">


			<aside class="sub_left">

				<div class="sub_title">
					<div class="sub_t01">
						<h2>师资</h2>
					</div>
				</div>
				<ul>

					<li><a href="#">在职教师</a></li>

					<li><a
						href="./jiaoshou/index.jsp">教授</a></li>

					<li><a href="./fujiaoshou/index.jsp">副教授</a></li>

					<li><a href="./jiangshi/index.jsp">讲师</a></li>

					<li><a href="./gongchengshi/index.jsp">工程师</a></li>

				</ul>

			</aside>
		</div>
		<section class="sub_right marginBot">
			<div>
				<p
					style="padding: 0 10px 0 0; width: 180px; background-image: none; font-size: 1.8em; color: #005bac;">在职教师</p>
			</div>
			<br> <br>
			<div class="subBanner01">
				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;">东北林业大学软件工程专业汇集众多名师，为我国软件事业培育了大量人才！</span>
				</p>

				<p style="font-size: 15px;">
					<span style="font-family: 微软雅黑;text-indent:2em;"> 老师们秉持着“学参天地，德合自然”的教学理念，辛勤的奋战在教学一线</span>
				</p>


			</div>

			<aside class="con_list01">
				<div class="title01 noBg">
					<h2>教授</h2>
				</div>
				<ul class="list_con01">
					<li><span><a href="./jiaoshou/su.jsp">苏建民</a></span></li>
					
				</ul>
			</aside>
			<aside class="con_list01">
				<div class="title01 noBg">
					<h2>副教授</h2>
				</div>
				<ul class="list_con01">
					<li><span><a href="./fujiaoshou/liudan.jsp">刘丹</a></span></li>
					<li><span><a href="./fujiaoshou/luosiqing.jsp">罗嗣卿</a></span></li>
				</ul>
			</aside>
			<aside class="con_list01">
				<div class="title01 noBg">
					<h2>讲师</h2>
				</div>
				<ul class="list_con01">
					<li><span><a href="./jiangshi/bo.jsp">王波</a></span></li>
					
				</ul>
			</aside>
			<aside class="con_list01">
				<div class="title01 noBg">
					<h2>工程师</h2>
				</div>
				<ul class="list_con01">
					<li><span><a href="./gongchengshi/he.jsp">何其生</a></span></li>
				</ul>
			</aside>
		</section>
	</div>




</article>