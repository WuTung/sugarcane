<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>培训机构管理分类</title>

<link href="${ctx}/static/css/manageClassify.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/css/orgStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.9.0.min.js"></script>

</head>
<body>
<!--导航栏-->
<div id="header">
<p>
  <img src="${ctx}/static/images/b.png" id="welcomeImg"> 
  <a id="exit">退出登录</a>
  <a href="${ctx}/organization/orgLogin.jsp"><img src="${ctx}/static/images/exit.png" id="exitimg"></a>
  <a href="" id="jgName">培训机构名称</a>
</p>  
</div>
<div><hr/></div>
<!--内容-->
<div id="content">
<div id="out">
    <div id="list">
     <div class="a1 lefta"><a href="${ctx}/organization/manageIntro.jsp" class="leftb">○&nbsp;管理简介</a></div>
     <div class="a1 lefta selecteda"><a href="${ctx}/organization/manageClassify.jsp" class="leftb selecteda">○&nbsp;管理分类</a></div>
     <div class="a1 lefta "><a href="../course/listCourse?coursePageIndex=1&sellerID=1"class="leftb"" class="leftb">○&nbsp;管理课程</a></div>
     <div class="a1 lefta"><a href="#" class="leftb">○&nbsp;预&nbsp;&nbsp;览</a></div>   

     </div><!--list-->

     <div id="setClass">
     <div id="table">
     <form>
     <table cellspacing="0">
     	<tr>
     	<td>课程名称</td>
        <td>课程所属分类</td>
     	<td>修改所属分类</td>
     	<td>修改</td>
     	<td>删除</td></tr>
     	<tr>
     	<td>钢琴</td>
        <td>音乐</td>
     	<td>
     		<select>
        	<option >所属类型</option>
        	<option value="音乐">音乐</option>
        	<option value="舞蹈">舞蹈</option>
        </select>
     	</td>
     	<td><a href="#"> 修改</a></td>
     	<td><a href="#"> 删除</a></td></tr>
        <tr>
        <td>芭蕾</td>
        <td>舞蹈</td>
        <td>
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        <td><a href="#"> 修改</a></td>
        <td><a href="#"> 删除</a></td></tr>
     	<tr>
     	<td>吉他</td>
        <td>乐器</td>
     	<td>
     		 <select>
        	<option >所属类型</option>
        	<option value="音乐">音乐</option>
        	<option value="舞蹈">舞蹈</option>
        </select>
     	</td>
     	<td><a href="#"> 修改</a></td>
     	<td><a href="#"> 删除</a></td></tr>
        <tr>
        <td>吉他</td>
        <td>乐器</td>
        <td>
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        <td><a href="#"> 修改</a></td>
        <td><a href="#"> 删除</a></td></tr>
        <tr>
        <td>吉他</td>
        <td>乐器</td>
        <td>
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        <td><a href="#"> 修改</a></td>
        <td><a href="#"> 删除</a></td></tr>
        <tr>
        <td><input type="text"/></td>
        <td></td>
        <td>
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        <td><a href="#">添加</a></td>
        <td></td></tr>
     </table>
     </form>

      <div id="pageDivide">
        <ul>
            <li><a href="">首页</a></li>
            <li><a href="">上一页</a></li>
            <li><a href="">1</a></li>
            <li><a href="">2</a></li>
            <li><a href="">3</a></li>
            <li><a href="">...</a></li>
            <li><a href="">20</a></li>
            <li><a href="">下一页</a></li>
            <li><a href="">尾页</a></li>
        </ul>
     </div>
	 </div><!--table-->
</div><!--out-->
</div><!--content-->

<div id="footer">
     ©CopyRight sugarcane <a href="#">联系我们</a>
</div><!--footer-->
</body>
</script>
</html>