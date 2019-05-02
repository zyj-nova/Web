<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1" />
    <link rel="stylesheet" type="text/css" href="resources/css/login.css" />
    <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="resources/js/ext-base.js"></script>
    <script type="text/javascript" src="resources//js/ext-all-debug.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/login.css" />
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/OAuthLogin.js"></script>
    <title>林业大学软件工程系管理服务系统-身份认证</title>
   <link rel="icon" href="/NEFUSE/resources/images/icon.png" />
</head>
<body onload="focusName()">
<div class="main">
    <div class="top"><a href="http://www.nefu.edu.cn"><img src="resources/images/school.png"/></a></div>
    <div class="mid" style="background-image: url('resources/images/chuangxin.jpg');">
        <form method="post" action="${pageContext.request.contextPath }/login">
            <div class="single_col_panel">
                <div class="row">
                    <input class="input-txt-row" type="text" tabIndex = "1" id="user_name" name="userName" placeholder="管理员账号" onFocus="focusUserName()" onblur="leaveUserName()" onKeyDown="enterPassword(event)" onMouseOver="changeBorderColor(this)" onMouseOut="backBorderColor(this)" onChange="showOrHideSmsCode()"/>
                    <a href="javascript:void(0)" class="i-clear" onclick="resetInput(event)"><i class="fa fa-times-circle"></i></a>
                </div>
                <div id="passwd_area" class="row">
                    <!-- 原来采用text和password切换的方式，但无法实现自动填写密码 -->
                    <input class="input-txt-row input-txt-pad"  type="password" tabIndex = "2"  id="password" name="password"  placeholder="密码" onFocus="focusPassword()" onblur='leavePassword()' onKeyDown="enterSMSCode(event)" onMouseOver="changeBorderColor(this)" onMouseOut="backBorderColor(this)"/>
                    <a href="javascript:void(0)" class="i-clear i-clear-pad" onclick="resetInput(event)"><i class="fa fa-times-circle"></i></a>
                    <a href="#" target='_blank' class="pad-tip">忘记密码</a>
                </div>
             
                <div class="row-thin">
                    <input type="checkbox" id="remember_check"/><div id="remember_text" onclick="clickCheck()"><i class="fa fa-square-o i-check"></i> 记住账号</div>             
				</div> 
				<div class="row-thin" >
				
				</div>
				
                <div class="row">
        			<span>${msg }</span>
        			
                    <!-- 登录按钮 -->
                    <input type="submit" class="input-btn-row" id="logon_button"  value="登录"/>


                </div>
            </div>
        </form>
    </div>
    <div class="bottom">
        <!--<img src="./resources/images/bdxxfw.jpg" width="86"/>
         --><div class="lx_info">
        <span>服务热线：0451-62751023</span>
        <span>Email：<a href="mailto:its@pku.edu.cn">its@nefu.edu.cn</a></span>
        <span>© <a href="http://acm.nefu.edu.cn/">信息与计算机学院</a></span>
    </div>
    </div>
</div>
</body>
</html>