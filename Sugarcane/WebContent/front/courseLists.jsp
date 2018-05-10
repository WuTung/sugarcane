<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>课程列表页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/courseLists.css">
    <script src="${ctx }/static/frontjs/html5shiv.min.js"></script>
    <script src="${ctx }/static/frontjs/home.js"></script>
    <script src='${ctx }/static/frontjs/jquery-1.9.0.min.js'></script>
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
                    <input type="text" placeholder="搜索">
                    <div class="s_img">
                        <a href="#"><img src="${ctx }/static/frontimages/sousuo.png"></a> 
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
        <div class="body_left">
                <div class="body_left_classify">
                    <ul>
                        <li><a href="#">健身</a>
                           <ul>
                                <li><a href="#">英语</a></li>
                                <li><a href="#">法语</a></li>
                                <li><a href="#">汉语</a></li>
                           </ul>
                       </li>
                    </ul>
                </div>
                <div class="body_left_classify">
                    <ul>
                        <li><a href="#">健身</a>
                           <ul>
                                <li><a href="#">英语</a></li>
                                <li><a href="#">法语</a></li>
                                <li><a href="#">汉语</a></li>
                           </ul>
                       </li>
                    </ul>
                </div>
                <div class="body_left_classify">
                    <ul>
                        <li><a href="#">健身</a>
                           <ul>
                                <li><a href="#">英语</a></li>
                                <li><a href="#">法语</a></li>
                                <li><a href="#">汉语</a></li>
                           </ul>
                       </li>
                    </ul>
                </div>
                <div class="body_left_classify">
                    <ul>
                        <li><a href="#">健身</a>
                           <ul>
                                <li><a href="#">英语</a></li>
                                <li><a href="#">法语</a></li>
                                <li><a href="#">汉语</a></li>
                           </ul>
                       </li>
                    </ul>
                </div>
                <div class="body_left_classify">
                    <ul>
                        <li><a href="#">健身</a>
                           <ul>
                                <li><a href="#">英语</a></li>
                                <li><a href="#">法语</a></li>
                                <li><a href="#">汉语</a></li>
                           </ul>
                       </li>
                    </ul>
                </div>
        </div>
        <div class="body_center"></div>
        <div class="body_right">
            <div class="body_right_top">
                <select>
                    <option value="#">全城</option>
                    <option value="#"></option>
                    <option value="#"></option>
                </select>
                <select>
                    <option value="排序方式">排序方式</option>
                </select>
                <select>
                    <option value="日期">星期一</option>
                    <option value="日期">星期二</option>
                    <option value="日期">星期三</option>
                    <option value="日期">星期四</option>
                    <option value="日期">星期五</option>
                    <option value="日期">星期六</option>
                    <option value="日期">星期日</option>
                </select>
                <select>
                    <option value="时间段">时间段</option>
                    <option value="#">8:00-10:00</option>
                    <option value="#">10:15-12:15</option>
                    <option value="#">14:00-16:00</option>
                    <option value="#">16:15-18:15</option>
                </select>
            </div>
            <div class="righttwo">
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/zhuolinsheji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/xintianji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/redshoes.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/zhuolinsheji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/xintianji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/redshoes.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/zhuolinsheji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/xintianji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/redshoes.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/zhuolinsheji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/xintianji.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx }/static/frontimages/redshoes.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
            </div>
            <div class="rightthree">
                <ul class="pager">
                  <li><a href="#">首页</a></li>
                  <li><a href="#">上一页</a></li>
                  <li><a href="#">2</a>
                    <a href="#">...</a>
                    <a href="#">10</a>
                  </li>
                  <li><a href="#">下一页</a></li>
                  <li><a href="#">尾页</a></li>
                </ul>
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