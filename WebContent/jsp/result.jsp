<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻中心</title>
<%@ include file="./define.jsp" %>
</head>
<body>
<%@ include file="./head.jsp" %>

<div class="sub_banner" id="subbanner">
    <img src="resources/images/banner.jpg" alt="" title="" >
</div>
<article class="subPage">
    <div class="sub_mbtn"></div>
    <aside class="sub_navm">
        <ul>

            <li><a>通知公告</a></li>

            <li><a href="../xzjz/index.htm">学术讲座</a></li>

            <li><a href="../zsjx/index.htm">招生教学</a></li>


        </ul>
    </aside>    <div class="subPage_con">
    <div class="bread"><span>您所在的位置：                 <a href="../../../index.htm">首页</a>&raquo;
                 <a href="../../index.htm">新闻中心</a>
         
 </span></div>
    <div class="sbu_leftWrap">


        <aside class="sub_left">

            <div class="sub_title">
                <div class="sub_t01"><h2>新闻中心</h2></div>
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
            <div class="articleTitle article02">
                <h2>${item.title }</h2>
                <h3></h3>
                <div class="articleAuthor">
                    <p>
                        <span>时间：${item.insertDate} </span>
                         <span>来源：${item.source }</span><span>作者：${item.author} </span>
                    </p>
                </div>
                <div class="wrapSize">

                </div>
            </div>

            <div class="article article05 art">
					${item.content }
             </div>
        </div>
    </section>
</div>
</article>
<%@ include file="./footer.jsp" %>
</body>
</html>