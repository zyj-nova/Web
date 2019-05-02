<%@ page pageEncoding="UTF-8"%>
<section class="footer_wrap">
    <div class="footer">
        <div class="footer_logo"><img src="/NEFUSE/resources/images/footer_logo1.png"/></div>
        <div class="footer_logo2"><img src="/NEFUSE/resources/images/footer_logo2.png" style="width:60px;height:60px;"/></div>
        <div class="copy">
            版权所有&copy;东北林业大学软件工程系 <a href="#">回到顶部</a><br />
            <span>Tel:(0451)82191289 </span><span><a href="mailto:admin@se.nefu.edu.cn">Email：admin@icec.edu.cn</a></span>
        </div>
    </div>

</section><!--footer结束-->
<script type="text/javascript">
    var arr1 = [  '/NEFUSE/resources/images/banner.jpg','/NEFUSE/resources/images/banner02.jpg','/NEFUSE/resources/images/banner03.jpg','/NEFUSE/resources/images/banner04.jpg'];  // '../../../images/content/2018-05/20180503142640855344.jpg',   '../../../images/content/2018-05/20180503142633649233.jpg',   '../../../images/content/2018-05/20180503142622989189.jpg',   '../../../images/content/2018-05/20180503142616094098.JPG',   '../../../images/content/2018-05/20180503142608806998.JPG',   '../../../images/content/2018-05/20180503142602266857.jpg',   '../../../images/content/2018-05/20180503142555406731.jpg',   '../../../images/content/2018-05/20180503142546877621.jpg',   '../../../images/content/2018-05/20180503142539294500.jpg',   '../../../images/content/2018-05/20180503142501393480.jpg',   '../../../images/content/2018-05/20180503142453865356.jpg',   '../../../images/content/2018-05/20180503142446926213.jpg',   '../../../images/content/2018-05/20180503142438648111.jpg',   '../../../images/content/2018-05/20180503142420720065.jpg',   '../../../images/content/2018-05/20180503142407645933.jpg',   '../../../images/content/2018-05/20180503142401833813.jpg',   '../../../images/content/2018-05/20180503142353057743.jpg',   '../../../images/content/2018-05/20180503142343768606.jpg',   '../../../images/content/2018-05/20180503142336967539.jpg',   '../../../images/content/2018-05/20180503142326306422.jpg',   '../../../images/content/2018-05/20180503142315834304.jpg',   '../../../images/content/2018-05/20180503142307866207.jpg',   '../../../images/content/2018-05/20180503142300655170.jpg',   '../../../images/content/2018-05/20180503142250665080.jpg',   '../../../images/content/2018-05/20180503142234757945.JPG',   '../../../images/content/2018-05/20180503132838290683.JPG',   '../../../images/content/2018-05/20180503131845868584.JPG',   '../../../images/content/2018-05/20180503131829660437.JPG' ];
    var iLen1 = arr1.length;
    var iNum = 0;
    $(function(){
        iNum1 = Math.floor(Math.random()*iLen1);
        $('.sub_banner img').attr('src',arr1[iNum1]);
    })

</script>
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