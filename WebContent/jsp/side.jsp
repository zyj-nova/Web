<%@ page pageEncoding="UTF-8"%>
<script type="text/javascript">
    var arr1 = [  '/NEFUSE/resources/images/banner.jpg','/NEFUSE/resources/images/banner02.jpg','/NEFUSE/resources/images/banner03.jpg'];  // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
    var iLen1 = arr1.length;
    var iNum = 0;
    $(function(){
        iNum1 = Math.floor(Math.random()*iLen1);
        $('.sub_banner img').attr('src',arr1[iNum1]);
    })

</script>
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
                 <a href="../../index.htm">新闻中心</a>&raquo;
                 <a href="../index.htm">公告通知</a>&raquo;
        通知公告
 </span></div>
    <div class="sbu_leftWrap">


        <aside class="sub_left">

            <div class="sub_title">
                <div class="sub_t01"><h2>新闻中心</h2></div>
            </div>
            <ul>
                <li><a href="../../xwdt/index.htm">新闻动态</a></li>
                <li><a href="#">公告通知</a><strong class="arrow">+</strong>

                    <dl class="twoJ_menu">
                        <dd><a href="#">通知公告</a></dd>
                        <dd><a href="../xzjz/index.htm">学术讲座</a></dd>
                        <dd><a href="../zsjx/index.htm">招生教学</a></dd>

                    </dl>
                </li>

                <li><a href="../../zs/index.htm">综述</a></li>
                <li><a href="../../gz/index.htm">关注</a></li>
                <li><a href="../../jj/index.htm">聚焦</a></li>
                <li><a href="../../pl/index.htm">评论</a></li>
                <li><a href="../../rw/index.htm">人物</a></li>
                <li><a href="../../xz/index.htm">学术</a></li>
                <li><a href="../../jl/index.htm">交流</a></li>
                <li><a href="../../skxw/index.htm">社会新闻</a></li>
                <li><a href="../../dmtxw/index.htm">多媒体新闻</a></li>
                <li><a href="../../xwsy/index.htm">新闻索引</a></li>


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