<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta charset="utf-8">
	<script src='${ctx }/static/frontjs/jquery-1.9.0.min.js'></script>
	<script src="${ctx }/static/frontjs/html5shiv.min.js"></script>
	<script src="${ctx }/static/frontjs/home.js"></script>
	<link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/style.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/home.css">
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
				<a href="../course/listAllCourse?coursePageIndex=1">全部课程</a>
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
				    <form action="${ctx }/userLogin/login.do" method="post">
					    <input type="text" name="email" id="email" value="" placeholder="请输入邮箱" class="email-a" onblur="check_box1()" />
					    <div class="bcde" align="center"></div>
					    <input type="password" name="password" id="pwd_login" value="" placeholder="请输入密码" onblur="check_box2()"/>
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
					<form action="${ctx }/userInfo/save.do" method="post">
						<input type="text" name="email" id="email_regist" value="" placeholder="请输入邮箱" class="email-b" onblur="check_box()" />
						<div class="bcd" align="center"></div>
						<input type="password" name="password" id="pwd_regist" value="" placeholder="密码为6-16位包含数字、字母、下划线" onblur="check()" />
						<div id="spinfo2" align="center"></div>
						<input type="password" name="password2" id="pwd_pwd" value="" placeholder="再次输入密码" onblur="check_again()">
						<div id="spinfo3" align="center"></div>
						<input type="text" name="username" id="petname" value="" placeholder="昵称"/>
						<input type="text" name="phone" id="phone" value="" placeholder="手机" onblur="Mous()" />
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
		<!--幻灯片-->
		<section class="slider-container">
			<ul id="slider" class="slider-wrapper">
				<li class="slide-current">
					<img src="${ctx }/static/frontimages/1.jpg" alt="Slider Imagen 1">
					<div class="caption">
						<h3 class="caption-title">甘蔗推荐网简介：</h3>
						<p>***********************************************************************</p>
					</div>
				</li>

				<li>
					<img src="${ctx }/static/frontimages/2.jpg" alt="Slider Imagen 1">
					<div class="caption">
						<h3 class="caption-title">甘蔗推荐网简介：</h3>
						<p>***********************************************************************</p>
					</div>
				</li>

				<li>
					<img src="${ctx }/static/frontimages/1.jpg" alt="Slider Imagen 1">
					<div class="caption">
						<h3 class="caption-title">甘蔗推荐网简介：</h3>
						<p>***********************************************************************</p>
					</div>
				</li>

				<li>
					<img src="${ctx }/static/frontimages/2.jpg" alt="Slider Imagen 1">
					<div class="caption">
						<h3 class="caption-title">甘蔗推荐网简介：</h3>
						<p>***********************************************************************</p>
					</div>
				</li>
			</ul>

			<ul id="slider-controls" class="slider-controls"></ul>

		</section>
		
		
		<!--猜你喜欢块-->
		<div class="first">
			<img src="${ctx }/static/frontimages/love.jpg" alt="love" height="25px"/><h1>猜你喜欢</h1>
			<div class="first_love">
				<img src="${ctx }/static/frontimages/1.jpg" alt="" height="165px"/>
				<img src="${ctx }/static/frontimages/1.jpg" alt="" height="165px"/>
				<img src="${ctx }/static/frontimages/1.jpg" alt="" height="165px"/>
				<img src="${ctx }/static/frontimages/1.jpg" alt="" height="165px"/>
			</div>
		</div>
		
		
		<!--热门综合推荐块-->
		<div class="second">
			<img src="${ctx }/static/frontimages/hot.jpg" alt="hot" height="25px"/><h1>热门综合推荐</h1>
			<div class="second_hot">
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>舞蹈</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>外语</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>健身</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>插画</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>会计</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>健身</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>茶艺</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>金融</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
				<div class="hot">
					<img src="${ctx }/static/frontimages/2.jpg" alt="hot" height="115px"/>
					<h3>健身</h3>
					<p>如果你无法简单的表达你的思想，那只能说明你还不够了解它。</p>
				</div>
			</div>
		</div>
		
		
		<!--课程分类块-->
		<table class="project" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="6" class="project_1">
					<img src="${ctx }/static/frontimages/cloud.jpg" alt="cloud" height="25px"/><h1>课程分类</h1>
				</td>
			</tr>
			<tr>
				<td colspan="6" class="project_2">
					<h2>计算机</h2>
					<ul>
						<li><a href="#">计算机基础</a></li>
						<li><a href="#">编程基础</a></li>
						<li><a href="#">计算机组成</a></li>
						<li><a href="#">C语言入门</a></li>
						<li><a href="#">Java工程师</a></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td rowspan="2" class="project_3"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
			</tr>
			<tr>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
			</tr>
			
			<tr>
				<td colspan="6" class="project_2">
					<h2>经济管理</h2>
					<ul>
						<li><a href="#">金融分析师</a></li>
						<li><a href="#">工商管理</a></li>
						<li><a href="#">注册会计师</a></li>
						<li><a href="#">电子商务</a></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td rowspan="2" class="project_3"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
			</tr>
			<tr>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
			</tr>
			
			<tr>
				<td colspan="6" class="project_2">
					<h2>健身</h2>
					<ul>
						<li><a href="#">器械</a></li>
						<li><a href="#">一对一</a></li>
						<li><a href="#">健身操</a></li>
						<li><a href="#">瑜伽</a></li>
						<li><a href="#">篮球</a></li>
						<li><a href="#">高尔夫</a></li>
						<li><a href="#">游泳</a></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td rowspan="2" class="project_3"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
			</tr>
			<tr>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
			</tr>
			
			<tr class="changeTr1" style="display: none;">
				<td colspan="6" class="project_2">
					<h2>折叠</h2>
					<ul>
						<li><a href="#">计算机基础</a></li>
						<li><a href="#">编程基础</a></li>
						<li><a href="#">计算机组成</a></li>
						<li><a href="#">C语言入门</a></li>
						<li><a href="#">Java工程师</a></li>
					</ul>
				</td>
			</tr>
			<tr class="changeTr1" style="display: none;">
				<td rowspan="2" class="project_3"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
			</tr>
			<tr class="changeTr1" style="display: none;">
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
			</tr>
				
			<tr class="changeTr1" style="display: none;">
				<td colspan="6" class="project_2">
					<h2>折叠</h2>
					<ul>
						<li><a href="#">计算机基础</a></li>
						<li><a href="#">编程基础</a></li>
						<li><a href="#">计算机组成</a></li>
						<li><a href="#">C语言入门</a></li>
						<li><a href="#">Java工程师</a></li>
					</ul>
				</td>
			</tr>
			<tr class="changeTr1" style="display: none;">
				<td rowspan="2" class="project_3"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
				<td class="project_4"><a href="#"><img src="${ctx }/static/frontimages/c.jpg" alt="project"/></a></td>
			</tr>
			<tr class="changeTr1" style="display: none;">
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
				<td class="project_5"><div class="p"><a href="#"><p>C语言</p><p>XXXXXXXX教育</p></a></div></td>
			</tr>
			
			<tr>
				<td rowspan="6" class="project_6"><p id="zhe1">展开剩余分类</p><img src="${ctx }/static/frontimages/triangle.jpg" alt="triangle" id="triangle1"/></td>
			</tr>
		</table>
		
		
		<!--培训机构块-->
		<div class="last">
			<div class="last_1">
				<img src="${ctx }/static/frontimages/plane.jpg" alt="plane" class="plane"/><h1>培训机构</h1>
				<img src="${ctx }/static/frontimages/triangle.jpg" alt="triangle" id="triangle2"/><h2 id="zhe2">展开查看全部培训机构</h2>
			</div>
			<h2 class="last_2">为您推荐</h2>
			<table cellpadding="25" cellspacing="25" class="last_3">
				<tr>
					<td class="black"><a href="#">第一游泳俱乐部</a></td>
					<td class="white"><a href="#">计算机之家培训</a></td>
					<td class="black"><a href="#">辛巴插画班</a></td>
					<td class="white"><a href="#">LiLi健身</a></td>
				</tr>
				<tr>
					<td class="white"><a href="#">领世培优</a></td>
					<td class="black"><a href="#">阿里舞蹈</a></td>
					<td class="gray"><a href="#">financial培训机构</a></td>
					<td class="black"><a href="#">风浪俱乐部</a></td>
				</tr>
				<tr class="changeTr2" style="display:none;">
					<td class="black"><a href="#">折叠部分</a></td>
					<td class="white"><a href="#">折叠部分</a></td>
					<td class="black"><a href="#">折叠部分</a></td>
					<td class="white"><a href="#">折叠部分</a></td>
				</tr>
				<tr class="changeTr2" style="display:none;">
					<td class="white"><a href="#">折叠部分</a></td>
					<td class="black"><a href="#">折叠部分</a></td>
					<td class="gray"><a href="#">折叠部分</a></td>
					<td class="black"><a href="#">折叠部分</a></td>
				</tr>
			</table>
		</div>
		<br style="clear:both;">
	</div>
</div>
<div id="backgroundImg"></div>
<!--footer-->
    <div class="footer">
    	<div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>