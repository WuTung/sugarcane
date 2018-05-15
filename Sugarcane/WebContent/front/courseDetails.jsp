<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>课程详情页</title>
<link rel="stylesheet" type="text/css"
	href="${ctx }/static/frontcss/style.css">
<link rel="stylesheet" type="text/css"
	href="${ctx }/static/frontcss/courseDetails.css">
<script src='${ctx }/static/frontjs/jquery-1.9.0.min.js'></script>
<script src="${ctx }/static/frontjs/html5shiv.min.js"></script>
<script src="${ctx }/static/frontjs/home.js"></script>
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
			<div class="course_details">
				<div class="videos">
					<video src="${ctx }/static/video/movie.ogg" controls="controls">
					Your browser does not support the video tag. </video>
				</div>
				<div class="course_info">
					<div class="courseinfos">
						课程名称:<span>${courseDetails.courseName }</span>
					</div>
					<div class="courseinfos">
						所属机构:<span>力德</span>
					</div>
					<div class="courseinfos">
						价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:<span>￥${courseDetails.price }</span>
					</div>
					<div class="courseinfos">
						授课教师:<span>${courseDetails.teacher }</span>
					</div>
					<div class="courseinfos">
						联系方式:<span>${courseDetails.phoneNumber }</span>
					</div>
					<div class="courseinfos">
						授课地点:<span>华所发胡搜批发店铺</span>
					</div>
				</div>
			</div>
			<h3>简介</h3>
			<div class="intro">
				<div class="intro_top">
					<div class="intro_img1">
						<a href="#"><img src="${ctx }/static/frontimages/lidejianshen1.jpg"
							alt=""></a>
					</div>
					<div class="intro_text1">
						<span> 不会管理自己身体的人，就无资格管理他人；<br> 经营不好自己健康的人，又如何经营好他的事业。
						</span>
					</div>
					<div class="intro_text2">
						<span> 你是否羡慕别人完美的身材，来这里其实你也可以。<br> 健康与优美的邂逅，精彩时尚新生活！<br>
							唯有身材才是你永远的陪伴。<br>
						</span>
					</div>
					<div class="intro_img2">
						<a href="#"><img src="${ctx }/static/frontimages/lidejianshen2.jpg"
							alt=""></a>
					</div>
					<div class="intro_text3">
						<span>健于行,始于乐;爱于心,益于民。将运动进行到底!</span>
					</div>
				</div>
			</div>
			<div class="evaluate">
				<form>
					<div class="evaluate_top">
						<span>评价</span> <a href="#"><input type="button" value="好评"></input></a>
						<a href="#"><input type="button" value="中评"></input></a> <a
							href="#"><input type="button" value="差评"></input></a> <a href="#"><input
							type="button" value="其他"></input></a>
					</div>
					<div class="evaluate_content">
						<div class="evaluate_content_person">
							<img src="${ctx }/static/frontimages/peiqi.jpg" alt="" /><br>
							<span>大脑腐</span>
						</div>
						<div class="evaluate_content_text">
							<span>好评好评，喜欢喜欢</span>
						</div>
						<div class="evaluate_content_img">
							<img src="${ctx }/static/frontimages/peiqi1.jpg" alt="" />
						</div>
					</div>
					<div class="evaluate_content">
						<div class="evaluate_content_person">
							<img src="${ctx }/static/frontimages/peiqi.jpg" alt="" /><br>
							<span>大脑腐</span>
						</div>
						<div class="evaluate_content_text">
							<span>老师教的很好，疯狂打call</span>
						</div>
						<div class="evaluate_content_img">
							<img src="${ctx }/static/frontimages/peiqi1.jpg" alt="" width="200"
								height="100" />
						</div>
					</div>
					<div class="evaluate_content">
						<div class="evaluate_content_person">
							<img src="${ctx }/static/frontimages/peiqi.jpg" alt="" /><br>
							<span>大脑腐</span>
						</div>
						<div class="evaluate_content_text">
							<span>厉害了这个课，受益匪浅！！！</span>
						</div>
						<div class="evaluate_content_img">
							<img src="${ctx }/static/frontimages/peiqi1.jpg" alt="" width="200"
								height="100" />
						</div>
					</div>
					<div class="evaluate_page">
						<ul class="evaluate_page_list">
							<li><a href="#">首页</a></li>
							<li><a href="#">上一页</a></li>
							<li><a href="#">下一页</a></li>
							<li><a href="#">尾页</a></li>
						</ul>
					</div>
					<div class="evaluate_write">
						<div class="evaluate_write_textarea">
							<textarea cols="100" rows="10"></textarea>
						</div>
						<div class="evaluate_write_submit">
							<input type="submit" value="发表" />
						</div>
					</div>
				</form>
			</div>
			<h3>相关推荐</h3>
			<div class="recommend">
				<div class="recommend_content">
					<div class="recommend_content_img">
						<img src="${ctx }/static/frontimages/redshoes.jpg" alt="" width="270"
							height="150" />
					</div>
					<div class="recommend_content_text">
						<span>推荐一 北京红舞鞋</span>
					</div>
				</div>
				<div class="recommend_content">
					<div class="recommend_content_img">
						<img src="${ctx }/static/frontimages/taiquandao.jpg" alt="" width="270"
							height="150" />
					</div>
					<div class="recommend_content_text">
						<span>推荐二 跆拳道培训</span>
					</div>
				</div>
				<div class="recommend_content">
					<div class="recommend_content_img">
						<img src="${ctx }/static/frontimages/zhuolinsheji.jpg" alt=""
							width="270" height="150" />
					</div>
					<div class="recommend_content_text">
						<span>推荐三 房屋卓林设计</span>
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