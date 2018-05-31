<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>收藏</title>
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/collection.css">
    <script src="${ctx }/static/frontjs/jquery-1.9.0.min.js"></script>
    <script src="${ctx }/static/frontjs//html5shiv.min.js"></script>
    <script src="${ctx }/static/frontjs//home.js"></script>
</head>
<body>
<div class="overall">
<!--header-->
    <div class="header">
		<div class="banner">
		<!--logo-->
			<div class="logo">
				<img src="${ctx }/static/frontimages/b3.png">
			</div>
		<!--首页选项卡-->
			<div class="home">
				<a href="home.jsp">首页</a>
			</div>
		<!--全部课程选项卡-->
			<div class="allclass">
				<a href="allclass.html">全部课程</a>
			</div>
		<!--搜索框-->
			<div class="sousuo">
				<form> 
                    <div class="s_img">
                        <a href="${ctx }/front/search.jsp">搜索 <img src="${ctx }/static/frontimages/sousuo.png"></a> 
                    </div>
                </form>
			</div>
		<!--用户注册登录-->
			<div class="login_regist">
				<a href="javascript:void(0)" onClick="showBox()">登录</a>
				<a href="javascript:void(0)" onClick="registBox()">注册</a>
			</div>
			<div class="event" id="login_box" style="display: none;">
				<div class="login">
					<div class="title">
					    <span class="t_txt">登录</span>
					    <span class="del" onClick="deleteLogin()">X</span>
				    </div>
				    <form action="" method="post">
					    <input type="text" name="email" id="email" value="" placeholder="请输入邮箱" class="email-a" onblur="check_box1()" />
					    <div class="bcde" align="center"></div>
					    <input type="password" name="" id="pwd_login" value="" placeholder="请输入密码" onblur="check_box2()"/>
					    <div class="error_pwd" align="center"></div>
					    <input type="submit" name="" id="" value="登录" class="btn" />
					    <input type="button" name="" id="forgetPwd" value="忘记密码?" class="">
					    <input type="button" name="" id="noAccount" value="没有账号?去注册" class="" onClick="regist()">
				    </form>
				</div>
			</div>
			<div class="event" id="regist_box" style="display: none;">
				<div class="regist">
					<div class="title">
						<span class="t_txt">注册</span>
						<span class="del" onClick="deleteRegist()">X</span>
					</div>
					<form action="" method="post">
						<input type="text" name="" id="email_regist" value="" placeholder="请输入邮箱" class="email-b" onblur="check_box()" />
						<div class="bcd" align="center"></div>
						<input type="password" name="" id="pwd_regist" value="" placeholder="密码为6-16位包含数字、字母、下划线" onblur="check()" />
						<div id="spinfo2" align="center"></div>
						<input type="password" name="" id="pwd_pwd" value="" placeholder="再次输入密码" onblur="check_again()">
						<div id="spinfo3" align="center"></div>
						<input type="text" name="" id="petname" value="" placeholder="昵称"/>
						<input type="text" name="" id="phone" value="" placeholder="手机" onblur="Mous()" />
						<div id="spinfo1" align="center"></div>
						<input type="submit" name="" id="regist_1" value="注册" class="btn">
					</form>	
				</div>
			</div>
			<div class="bg_color" onClick="deleteLogin()" id="bg_filter" style="display: none;"></div>
		<!--培训机构登录-->
			<div class="org_login">
				<a href="orgLogin.html">培训机构登录</a>
			</div>
		</div>
	</div>
<!--body-->
    <div class="body">
        <div class="left">
            <div class="personimg"><img src="${ctx }/static/frontimages/timg0.jpg"></div>
            <div class="nickname"><p>我的昵称</p></div>
            <div class="reinfor"><a href="#">修改个人信息</a></div>
            <div class="collect"><a href="#">我的收藏</a></div>
        </div>
        <div class="line"></div>
        <div class="right">
            <div class="down">
                <select name="allcollect">
                    <option value="1">全部收藏</option>
                    <option value="1"><a href="#">1</a></option>
                    <option value="2"><a href="#">2</a></option>
                    <option value="3"><a href="#">3</a></option>
                    <option value="4"><a href="#">4</a></option>
                </select>

            </div>
           <!-- 收藏内容--> 
            <div class="coll">
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>    
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>    
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>    
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>    
                <div class="colls_items">
                    <div class="colls_items_img">
                        <img src="${ctx }/static/frontimages/timg0.jpg">
                    </div>
                    <div class="colls_items_text">
                        <div class="colls_items_text_content">
                            <span class="colls_items_text_content_span1">外语</span><br>
                            <span class="colls_items_text_content_span2">如果时光无法简洁表达你的想法，那只说明你还不够了解它</span>
                        </div>
                        <div class="colls_items_text_del">
                            <a href="#"><img src="${ctx }/static/frontimages/dele.jpg"></a>
                        </div>
                    </div>
                </div>                           
            </div>
            <!--分页-->
            <div class="last">
                <div class="list">
                    <a href="#"><</a>  
                    <a href="#">1</a>  
                    <a href="#">2</a>  
                    <a href="#">3</a>  
                    <a href="#">4</a>  
                    <a href="#">...</a>  
                    <a href="#">20</a>  
                    <a href="#">></a>       
                </div>
            </div>
        </div>
    </div>
</div>
    <div id="backgroundImg"></div>
<!--footer-->
    <div class="footer">
        <div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>