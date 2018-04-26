<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>答题页面</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/questions.css">

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
        			<a href="#"><img src="../images/sou.png"></a>
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
        <div>
         <h2 align="center">Java测试题</h2>
            <form>
            <div class="one">
                <table>                  
                    <tr>
                        <td><span>1、Java类可作为（）</span></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="radio" value="1">A 类型定义机制
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="radio" value="1">B 数据封装机制
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="radio" value="1">C 类型定义机制和封装机制
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="radio" value="1">D 上诉都不对
                        </td>    
                    </tr>
                </table>
            </div>
            <div class="one">
                <table>                  
                    <tr>
                        <td><span>2、请选择以下选项</span></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="io" value="2">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="io" value="2">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="io" value="2">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="io" value="2">单选一
                        </td>    
                    </tr>
                </table>
            </div>
            <div class="one">
                <table>                  
                    <tr>
                        <td><span>3、请选择以下选项</span></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="o" value="3">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="o" value="3">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="o" value="3">单选一
                        </td>    
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="o" value="3">单选一
                        </td>    
                    </tr>
                </table>
            </div>
                <input type="button" value="提交" id="btn">
            </form>
        </div>
    </div>
<!--footer-->
    <div class="footer">
    	<div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>