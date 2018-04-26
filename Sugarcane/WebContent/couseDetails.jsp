<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>课程详情页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/courseDetails.css">
</head>
<body>
<!--header-->
    <div class="header">
    <!--logo-->
    	<div class="logo"></div>
    <!--首页选项卡-->
        <div class="home">
        	<a href="home.html">首页</a>
        </div>
    <!--全部课程选项卡-->
        <div class="allclass">
        	<a href="allclass.html">全部课程</a>
        </div>
    <!--搜索框-->
        <div class="sousuo">
        	<form>
        	<!--文本框-->
        		<div class="sou_text">
        	        <input type="text" name="sousuo" value="请输入要查询的关键字" />
        		</div>
        	<!--搜索按钮-->
        		<div class="sou_img">
        			<a href="#"><img src="${ctx}/static/images/sou.png"></a>
        		</div>
        	</form>
        </div>
    <!--用户注册登录-->
        <div class="login_regist">
        	<a href="userLogin.html">登录/注册</a>
        </div>
    <!--培训机构登录-->
        <div class="org_login">
        	<a href="orgLogin.html">培训机构登录</a>
        </div>
    </div>
<!--body-->
    <div class="body">
        <div class="kecheng">
                    <div class="shipin">
                        <video src="${ctx}/static/movies/movie.ogg" controls="controls">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                    <div class="jieshao">
                            <span>课程名称:</span><p>游泳健身</p><br>
                            <span>所属机构:</span><p>力德</p><br>
                            <span>价格:</span><p>￥600</p><br>
                            <span>联系方式:</span><p>12345678910</p><br>
                    </div>
        </div>
        <h3>简介</h3>
        <div class="xiangqing">
            <div class="shang">
                <div class="one">
                    <a href="#"><img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="400px" height="200px"></a>
                </div>
                <div class="two">
                    在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                    在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                    在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                </div>
                </div>

                <div class="shang">
                    <div class="tt">在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                    在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                    在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                    </div>
                <div class="oo">
                    <a href="#"><img src="${ctx}/static/images/卓林设计.jpg" alt="" width="400px" height="200px"></a>
                </div>
                </div>
                <div class="pp">在说到这个问题的时候,也许有人会问CSS中不是有vertical-align属性来设置垂直居中的吗?即使是某些浏览器不支持我只需做少许的CSS Hack技术就可以啊!所以
                </div>    
        </div>
        <div class="ping">
            <form>
            <table>
                <tr>
                    <td>
                        <div class="pingjia">
                            <ul>
                                <li><span>评价</span></li>
                                <li><a href="#"><input type="button" value="好评"></a></li>
                                <li><a href="#"><input type="button" value="中评"></a></li>
                                <li><a href="#"><input type="button" value="差评"></a></li>
                                <li><a href="#"><input type="button" value="其他"></a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="pinglun">
                                <div class="zuo">
                                    <img src="${ctx}/static/images/peiqi.jpg" alt="" width="50" height="50" /><br><span>大脑腐</span>
                                </div>
                                <div class="zhong">
                                     吾问无为谓无无无无无无无无无无无无无无无无无无吾问无为谓无无无无无无无无无无无无无无无无无无
                                     吾问无为谓无无无无无无无无无无无无无无无无无无
                                    吾问无为谓无无无无无无无无无无无无无无无无无无
                                </div>
                                <div class="you"> 
                                    <img src="${ctx}/static/images/peiqi1.jpg" alt="" width="200" height="100" />
                                </div>
                        </div>
                        <div class="pinglun">
                                <div class="zuo">
                                    <img src="${ctx}/static/images/peiqi.jpg" alt="" width="50" height="50" /><br><span>大脑腐</span>
                                </div>
                                <div class="zhong">
                                     吾问无为谓无无无无无无无无无无无无无无无无无无吾问无为谓无无无无无无无无无无无无无无无无无无
                                     吾问无为谓无无无无无无无无无无无无无无无无无无
                                    吾问无为谓无无无无无无无无无无无无无无无无无无
                                </div>
                                <div class="you"> 
                                    <img src="${ctx}/static/images/peiqi1.jpg" alt="" width="200" height="100" />
                                </div>
                        </div>
                        <div class="pinglun">
                                <div class="zuo">
                                    <img src="${ctx}/static/images/peiqi.jpg" alt="" width="50" height="50" /><br><span>大脑腐</span>
                                </div>
                                <div class="zhong">
                                     吾问无为谓无无无无无无无无无无无无无无无无无无吾问无为谓无无无无无无无无无无无无无无无无无无
                                     吾问无为谓无无无无无无无无无无无无无无无无无无
                                    吾问无为谓无无无无无无无无无无无无无无无无无无
                                </div>
                                <div class="you"> 
                                    <img src="${ctx}/static/images/peiqi1.jpg" alt="" width="200" height="100" />
                                </div> 
                        </div>
                    </td>
                </tr>
                <tr>    
                    <td>
                        <div >
                            <ul class="pager">
                              <li><a href="#"><button>首页</button></a></li>
                              <li><a href="#"><button>上一条</button></a></li>
                              <li><a href="#"><button>下一条</button></a></li>
                              <li><a href="#"><button>尾页</button></a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                    <tr>
                        <td>
                         <div class="fabiao">
                           <textarea cols="100" rows="10"></textarea><br>
                           <button type="button">发表</button> 
                        </div>
                        </td>
                    </tr>
            </table>
            </form>
        </div>
         <h3>相关推荐</h3>
        <div class="tuijian">
             <div class="tuione">
                <div class="tuitu">
                    <img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="270" height="150" />
                 </div>
                 <div class="tuizi">
                   <span>推荐一 北京红舞鞋</span>
                 </div>
             </div>
             <div class="tuione">
                <div class="tuitu">
                    <img src="${ctx}/static/images/跆拳道.jpg" alt="" width="270" height="150" />
                 </div >
                 <div class="tuizi">
                   <span>推荐二 跆拳道培训</span>
                 </div>
             </div>
             <div class="tuione">
                <div class="tuitu">
                    <img src="${ctx}/static/images/卓林设计.jpg" alt="" width="270" height="150" />
                 </div>
                 <div class="tuizi">
                   <span>推荐三 房屋卓林设计</span>
                 </div>
             </div>
        </div>
    </div>
<!--footer-->
    <div class="footer">
    	<div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>