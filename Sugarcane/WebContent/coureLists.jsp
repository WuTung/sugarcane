<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>课程列表页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/courseLists.css">
</head>
<body>
    <div>
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
        	        <input type="text" name="sousuo" value="单行输入" />
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
    <div class="bodyo">
        <div class="left">
                <div class="leftone">
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
                <div class="leftone">
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
                <div class="leftone">
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
                <div class="leftone">
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
                <div class="leftone">
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
        <div class="zhong">

        </div>
        <div class="right">
            <div class="rightone">
                <select >
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
                        <a href="#"><img src="${ctx}/static/images/卓林设计.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/新天际教育.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/卓林设计.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/新天际教育.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/卓林设计.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/新天际教育.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/卓林设计.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">卓林设计</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/新天际教育.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">新天际教育</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>
                <div class="righttwotable">
                    <div class="one">
                        <a href="#"><img src="${ctx}/static/images/红舞鞋.jpg" alt="" width="130px" height="80px"></a>
                    </div>
                    <div class="two"><span><span><a href="#">红舞鞋</a></span><br>意思是说所所所所所所所所所所所多过付所付或付
                    </div>
                </div>

            <div class="rightthree">
                <ul class="pager">
                  <li><a href="#"><button>首页</button></a></li>
                  <li><a href="#"><button>上一页</button></a></li>
                  <li><a href="#"><button>2</button></a>
                    <a href="#"><button>...</button></a>
                    <a href="#"><button>10</button></a>
                  </li>
                  <li><a href="#"><button>下一页</button></a></li>
                  <li><a href="#"><button>尾页</button></a></li>
                </ul>
            </div>
        </div>
    </div>
<!--footer-->
    <div class="footer">
    	<div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
    </div>
</body>
</html>