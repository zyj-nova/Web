<%@ page pageEncoding="UTF-8"%>
<header class="wraq_header">
	<div class="header  pr">
		<div class="logo">
			<a class="logo2" href="${pageContext.request.contextPath  }/index"><img
				src="/NEFUSE/resources/images/logo3.png"></a>
		</div>
		<div class="links">
			<ul class="links01 f12px">
				<li><a class="btn_ser"> <img
						src="/NEFUSE/resources/images/sea_btn.png" id="btn_ser">
						<div class="ser pa" id="ser">
							<form name="dataForm" class="search"
								action="${pageContext.request.contextPath  }/search"
								target="_blank" method="post" accept-charset="utf-8"
								onsubmit="document.charset='utf-8';">
								<input name="siteID" value="1004" type="hidden"> <input
									class="notxt" value="请输入关键字" name="name" type="text"
									id="keywords" onFocus="if(value==defaultValue){value='';}"
									onBlur="if(!value){value=defaultValue;}" style="outline: none;"
									onclick="if(this.value==''){this.value='';this.form.keywords.style.color='#444'}">
								<input class="notxt1" name="Submit" type="submit" value="" />
							</form>
						</div>
				</a></li>
			</ul>
		</div>
		<span class="topLinks_bg"></span>
		<div class="topLinks">
			<a href="#"> English</a><span>|</span> <a
				href="http://mail.nefu.edu.cn/">校园邮箱</a><span>|</span> <a href="#">
				本站地图</a><span>|</span> <a
				href="${pageContext.request.contextPath }/admin"> 内部管理</a><span>|</span>
			<a href="http://jwc.nefu.edu.cn"> 教务处</a>
		</div>

		<!-- 移动端主导航 -->
		<section class="snav pa">
			<section id="mbtn" class="mbtn pa">
				<img src="/NEFUSE/resources/images/btn01.png" />
			</section>
			<div class="navm pa">
				<ul>

					<li><a href="#">专业概况</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="${pageContext.request.contextPath }/xueyuan/index.jsp">专业简介</a>
								</dd>
								<dd>
									<a href="#">专业方向</a>
								</dd>
								<dd>
									<a href="#">组织机构</a>
								</dd>
								<dd>
									<a href="#">学科建设</a>
								</dd>
								<dd>
									<a href=#>学院设施</a>
								</dd>

							</dl>
						</div></li>



					<li><a href="allnews">新闻中心</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="${pageContext.request.contextPath }/allnews">新闻动态</a>
								</dd>
								<dd>
									<a href="javascript:void(0)">关注</a>
								</dd>
								<dd>
									<a href="javascript:void(0)">综述</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath }/gonggao">通知公告</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath }/xueshujiangzuo">学术讲座</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath }/zhaosheng">招生教学</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath }/shixijiuye">实习就业</a>
								</dd>

							</dl>
						</div></li>



					<li><a href="/NEFUSE/teacher/index.jsp">师资</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="/NEFUSE/teacher/index.jsp">在职教师</a>
								</dd>
								<dd>
									<a href="/NEFUSE/teacher/jiaoshou/index.jsp">教授</a>
								</dd>
								<dd>
									<a href="/NEFUSE/teacher/fujiaoshou/index.jsp">副教授</a>
								</dd>
								<dd>
									<a href="/NEFUSE/teacher/jiangshi/index.jsp">讲师</a>
								</dd>

								<dd>
									<a href="/NEFUSE/teacher/gongchengshi/index.jsp">工程师</a>
								</dd>
							</dl>
						</div></li>



					<li><a href="#">招生</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">本科生</a>
								</dd>
								<dd>
									<a href="#">软件工程硕士</a>
								</dd>
							</dl>
						</div></li>


					<li><a href="#">教学</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">教学培养</a>
								</dd>
								<dd>
									<a href="#">交流与奖助</a>
								</dd>
								<dd>
									<a href="#">毕业与学位</a>
								</dd>
								<dd>
									<a href="#">办公机构</a>
								</dd>
								<dd>
									<a href="#">教学动态</a>
								</dd>
								<dd>
									<a href="#">教学专题</a>
								</dd>
							</dl>
						</div></li>



					<li><a href="#">科研</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">科研机构</a>
								</dd>
								<dd>
									<a href="#">获奖成果</a>
								</dd>
								<dd>
									<a href="#">科研项目</a>
								</dd>
								<dd>
									<a href="#">科研成果</a>
								</dd>
								<dd>
									<a href="#">学术刊物</a>
								</dd>
								<dd>
									<a href="#">相关文件</a>
								</dd>
								<dd>
									<a href="#">观点评论</a>
								</dd>
								<dd>
									<a href="#">学者风范</a>
								</dd>
								<dd>
									<a href="#">新书推荐</a>
								</dd>
								<dd>
									<a href="#">办公机构</a>
								</dd>
								<dd>
									<a href="#">科研动态</a>
								</dd>
							</dl>
						</div></li>

					<li><a href="http://cas.nefu.edu.cn/cas/">数字东林</a></li>


					<li><a href="#">合作交流</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">国内合作</a>
								</dd>
								<dd>
									<a href="#">国际合作</a>
								</dd>
								<dd>
									<a href="#">联系我们</a>
								</dd>
								<dd>
									<a href="#">新闻动态</a>
								</dd>
								<dd>
									<a href="#">项目申请</a>
								</dd>
								<dd>
									<a href="#">专题展示</a>
								</dd>
							</dl>
						</div></li>


					<li><a href="#">实验室</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="/NEFUSE/xueyuan/room.jsp#chuangxin">创新实验室</a>
								</dd>
								<dd>
									<a href="/NEFUSE/xueyuan/room.jsp#ai">人工智能实验室</a>
								</dd>
								<dd>
									<a href="/NEFUSE/xueyuan/room.jsp#android">安卓开发实验室</a>
								</dd>
								<dd>
									<a href="javascript:void(0)">关于我们</a>
								</dd>
								<dd>
									<a href="#">报名入口</a>
								</dd>
							</dl>
						</div></li>

					<li><a href="http://lib.nefu.edu.cn">图书馆</a></li>


					<li><a href="#">校友中心</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">致校友</a>
								</dd>
								<dd>
									<a href="#">校友风采</a>
								</dd>
								<dd>
									<a href="#">软件光影</a>
								</dd>
								<dd>
									<a href="#">杰出人才</a>
								</dd>
								<dd>
									<a href="#">各地校友会</a>
								</dd>
								<dd>
									<a href="#">校友录</a>
								</dd>

								<dd>
									<a href="#">校友动态</a>
								</dd>
							</dl>
						</div></li>



					<li><a href="#">发展建设</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">发展规划</a>
								</dd>
								<dd>
									<a href="#">项目展示</a>
								</dd>
								<dd>
									<a href="#">捐赠鸣谢</a>
								</dd>
								<dd>
									<a href="#">联系我们</a>
								</dd>
								<dd>
									<a href="#">新闻公告</a>
								</dd>
								<dd>
									<a href="#">近期关注</a>
								</dd>
							</dl>
						</div></li>


					<li><a href="#">组织机构</a>
						<div class="subNav">
							<dl>
								<dd>
									<a href="#">行政</a>
								</dd>
								<dd>
									<a href="#">党委</a>
								</dd>
								<dd>
									<a href="#">院务委员会</a>
								</dd>
								<dd>
									<a href="#">学术委员会</a>
								</dd>
								<dd>
									<a href="#">学位委员会</a>
								</dd>
								<dd>
									<a href="#">文件</a>
								</dd>
								<dd>
									<a href="#">重要活动</a>
								</dd>
								<dd>
									<a href="#">人物风采</a>
								</dd>
								<dd>
									<a href="#">联系我们</a>
								</dd>
							</dl>
						</div></li>
				</ul>
				<div class="phoneLinks">
					<a href="#"> English</a><span>|</span> <a
						href="http://mail.nefu.edu.cn/">校园邮箱</a><span>|</span> <a href="#">
						本站地图</a><span>|</span> <a
						href="${pageContext.request.contextPath }/admin"> 内部管理</a><span>|</span>
					<a href="http://jwc.nefu.edu.cn"> 教务处</a>
				</div>
			</div>
		</section>
	</div>
	<div class="nav">
		<ul id="nav">


			<li><a href="#">专业概况</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="${pageContext.request.contextPath }/xueyuan/index.jsp">专业简介</a>
						</dd>
						<dd>
							<a href="#">专业方向</a>
						</dd>
						<dd>
							<a href="#">组织机构</a>
						</dd>
						<dd>
							<a href="#">学科建设</a>
						</dd>
						<dd>
							<a href=#>学院设施</a>
						</dd>

					</dl>
				</div></li>



			<li><a href="allnews">新闻中心</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="${pageContext.request.contextPath }/allnews">新闻动态</a>
						</dd>
						<dd>
							<a href="javascript:void(0)">关注</a>
						</dd>
						<dd>
							<a href="javascript:void(0)">综述</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath }/gonggao">通知公告</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath }/xueshujiangzuo">学术讲座</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath }/zhaosheng">招生教学</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath }/shixijiuye">实习就业</a>
						</dd>

					</dl>
				</div></li>



			<li><a href="/NEFUSE/teacher/index.jsp">师资</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="/NEFUSE/teacher/index.jsp">在职教师</a>
						</dd>
						<dd>
							<a href="/NEFUSE/teacher/jiaoshou/index.jsp">教授</a>
						</dd>
						<dd>
							<a href="/NEFUSE/teacher/fujiaoshou/index.jsp">副教授</a>
						</dd>
						<dd>
							<a href="/NEFUSE/teacher/jiangshi/index.jsp">讲师</a>
						</dd>

						<dd>
							<a href="/NEFUSE/teacher/gongchengshi/index.jsp">工程师</a>
						</dd>
					</dl>
				</div></li>



			<li><a href="#">招生</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">本科生</a>
						</dd>
						<dd>
							<a href="#">软件工程硕士</a>
						</dd>
					</dl>
				</div></li>


			<li><a href="#">教学</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">教学培养</a>
						</dd>
						<dd>
							<a href="#">交流与奖助</a>
						</dd>
						<dd>
							<a href="#">毕业与学位</a>
						</dd>
						<dd>
							<a href="#">办公机构</a>
						</dd>
						<dd>
							<a href="#">教学动态</a>
						</dd>
						<dd>
							<a href="#">教学专题</a>
						</dd>
					</dl>
				</div></li>



			<li><a href="#">科研</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">科研机构</a>
						</dd>
						<dd>
							<a href="#">获奖成果</a>
						</dd>
						<dd>
							<a href="#">科研项目</a>
						</dd>
						<dd>
							<a href="#">科研成果</a>
						</dd>
						<dd>
							<a href="#">学术刊物</a>
						</dd>
						<dd>
							<a href="#">相关文件</a>
						</dd>
						<dd>
							<a href="#">观点评论</a>
						</dd>
						<dd>
							<a href="#">学者风范</a>
						</dd>
						<dd>
							<a href="#">新书推荐</a>
						</dd>
						<dd>
							<a href="#">办公机构</a>
						</dd>
						<dd>
							<a href="#">科研动态</a>
						</dd>
					</dl>
				</div></li>

			<li><a href="http://cas.nefu.edu.cn/cas/">数字东林</a></li>


			<li><a href="#">合作交流</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">国内合作</a>
						</dd>
						<dd>
							<a href="#">国际合作</a>
						</dd>
						<dd>
							<a href="#">联系我们</a>
						</dd>
						<dd>
							<a href="#">新闻动态</a>
						</dd>
						<dd>
							<a href="#">项目申请</a>
						</dd>
						<dd>
							<a href="#">专题展示</a>
						</dd>
					</dl>
				</div></li>


			<li><a href="#">实验室</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="/NEFUSE/xueyuan/room.jsp#chuangxin">创新实验室</a>
						</dd>
						<dd>
							<a href="/NEFUSE/xueyuan/room.jsp#ai">人工智能实验室</a>
						</dd>
						<dd>
							<a href="/NEFUSE/xueyuan/room.jsp#android">安卓开发实验室</a>
						</dd>
						<dd>
							<a href="javascript:void(0)">关于我们</a>
						</dd>
						<dd>
							<a href="#">报名入口</a>
						</dd>
					</dl>
				</div></li>

			<li><a href="http://lib.nefu.edu.cn">图书馆</a></li>


			<li><a href="#">校友中心</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">致校友</a>
						</dd>
						<dd>
							<a href="#">校友风采</a>
						</dd>
						<dd>
							<a href="#">软件光影</a>
						</dd>
						<dd>
							<a href="#">杰出人才</a>
						</dd>
						<dd>
							<a href="#">各地校友会</a>
						</dd>
						<dd>
							<a href="#">校友录</a>
						</dd>

						<dd>
							<a href="#">校友动态</a>
						</dd>
					</dl>
				</div></li>



			<li><a href="#">发展建设</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">发展规划</a>
						</dd>
						<dd>
							<a href="#">项目展示</a>
						</dd>
						<dd>
							<a href="#">捐赠鸣谢</a>
						</dd>
						<dd>
							<a href="#">联系我们</a>
						</dd>
						<dd>
							<a href="#">新闻公告</a>
						</dd>
						<dd>
							<a href="#">近期关注</a>
						</dd>
					</dl>
				</div></li>


			<li><a href="#">组织机构</a>
				<div class="subNav">
					<dl>
						<dd>
							<a href="#">行政</a>
						</dd>
						<dd>
							<a href="#">党委</a>
						</dd>
						<dd>
							<a href="#">院务委员会</a>
						</dd>
						<dd>
							<a href="#">学术委员会</a>
						</dd>
						<dd>
							<a href="#">学位委员会</a>
						</dd>
						<dd>
							<a href="#">文件</a>
						</dd>
						<dd>
							<a href="#">重要活动</a>
						</dd>
						<dd>
							<a href="#">人物风采</a>
						</dd>
						<dd>
							<a href="#">联系我们</a>
						</dd>
					</dl>
				</div></li>


		</ul>
	</div>
</header>