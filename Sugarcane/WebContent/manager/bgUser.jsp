<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>甘蔗后台用户管理</title>
<meta charset="utf-8"/>
<link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/bgstyle.css">
<link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/bgUser.css">
</head>
<body>
	<div class="header">
		<a href="#">退出</a>
		<P>管理员名</p>
	</div>
<!--body-->
	<div class="body">
		<div class="left">
			<ul class="option">
				<li><a href="${ctx }/manager/bgUser.jsp" id="user">用户管理</a></li>
				<li><a href="${ctx }/manager/bgCompany.jsp">培训机构管理</a></li>
			</ul>
		</div>
		<div class="right">
			<div class="first"><a href="${ctx }/manager/background.html">后台</a>&nbsp;&nbsp;>&nbsp;&nbsp;用户管理</div>
			<form action="" method="post" class="form">
				<input type="text" value="单行输入" name="search" class="text"/>
				<input type="submit" value="搜索" class="search" />
			</form>
			<table class="table">
				<form action="" method="post">
					<tr>
						<th>用户编号</th>
						<th>用户名</th>
						<th class="lastcol">禁用</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Lucy</td>
						<td class="lastcol"><input type="checkbox" id="myCheck1"/><label for="myCheck1"></label></td>
					</tr>
					<tr>
						<td>2</td>
						<td>Lucy</td>
						<td class="lastcol"><input type="checkbox" id="myCheck2"/><label for="myCheck2"></label></td>
					</tr>
					<tr class="lastrow">
						<td>3</td>
						<td>Lucy</td>
						<td class="lastcol"><input type="checkbox" id="myCheck3"/><label for="myCheck3"></label></td>
					</tr>
				</form>
			</table>
			<div class="fenye">
				<form method="POST" action="" style="clear:left">
			        <table border="0" align="center" >
			            <tr>
			                <td>共5页<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</a></td>
			                <td><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<</a></td>
							<td><a href="#" style="font-weight:bolder;">&nbsp;&nbsp;&nbsp;&nbsp;1</a></td>
							<td><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;2</a></td>
							<td><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;3</a></td>
			                <td><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;></a></td>
			                <td><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;最后一页</a></td>
			                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转到第:<input type="text" name="page" size="2">页&nbsp;&nbsp;
								<input type="submit" value="跳转" name="cndok" class="go"></td>
			            </tr>
			        </table> 
	 			</form>
 			</div>
		</div>
	</div>
<!--footer-->
    <div class="footer">
    	<div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>