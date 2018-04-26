<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>培训机构管理课程</title>
<link href="${ctx}/static/css/manageCourse.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/css/orgStyle.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${ctx}/static/js/jquery-1.9.0.min.js"></script>
</head>
<body>
<!--导航栏-->
<div id="header">
<p>
  <img src="${ctx}/static/images/b.png" id="welcomeImg"> 
  <a id="exit">退出登录</a>
  <a href="#"><img src="${ctx}/static/images/exit.png" id="exitimg"></a>
  <a href="#" id="jgName">培训机构名称</a>
 
</p>  
</div>
<div><hr/></div>
<!--内容-->
<div id="content">
<div id="out">
    <div id="list">
     <div class="a1 lefta"><a href="#" class="leftb">○&nbsp;管理简介</a></div>
     <div class="a1 lefta"><a href="jgglStyle.html" class="leftb">○&nbsp;管理分类</a></div>
     <div class="a1 lefta selecteda"><a href="course/listCourse?coursePageIndex"class="selecteda leftb">○&nbsp;管理课程</a></div>
     <div class="a1 lefta"><a href="#" class="leftb">○&nbsp;预&nbsp;&nbsp;览</a></div>   

     </div><!--list-->

     <div id="setClass">
     <div id="addClass">
        <div id="seta1">
        <a href="addClass.html" ><span id="a1">添加课程</span></a></div>
        <div id="select">
        <select >
        	<option >请选择类型</option>
        	<option value="音乐">音乐</option>
        	<option value="舞蹈">舞蹈</option>
        </select>
        </div><!--select-->
     </div><!--addClass-->

     <div id="table">
     <form>
     <table cellspacing="0">
     	<tr>
     	<td class="td">课程名称</td>
        <td class="td">课程价格/h</td>
        <td class="td">授课教师</td>
        <td class="td">联系方式</td>
     	<td class="td">课程所属分类</td>
     	<td class="td">是否删除</td>
     	<td class="td">是否修改</td></tr>
     	<tr>
     	<td class="td">钢琴</td>
        <td class="td"><input type="text" value="100" /></td>
        <td class="td"><input type="text" value="张珊" /></td>
        <td class="td"><input type="text" value="1938472819" /></td>
     	<td class="td">
     		 <select>
        	<option >所属类型</option>
        	<option value="音乐">音乐</option>
        	<option value="舞蹈">舞蹈</option>
        </select>
     	</td>
     	<td class="td"><a href="#"> 修改</a></td>
     	<td class="td"><a href="#"> 删除</a></td></tr>
        <tr>
        <td class="td">芭蕾</td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td">
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        <td class="td"><a href="#"> 修改</a></td>
        <td class="td"><a href="#"> 删除</a></td></tr>
     	<tr>
     	<td class="td">吉他</td>
                <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
     	<td class="td">
     		 <select>
        	<option >所属类型</option>
        	<option value="音乐">音乐</option>
        	<option value="舞蹈">舞蹈</option>
        </select>
     	</td>

     	<td class="td"><a href="#"> 修改</a></td>
     	<td class="td"><a href="#"> 删除</a></td></tr>
        <tr>
        <td class="td">吉他</td>
                <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td">
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        
        <td class="td"><a href="#"> 修改</a></td>
        <td class="td"><a href="#"> 删除</a></td></tr>
        <tr>
        <td class="td">吉他</td>
                <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td">
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        
        <td class="td"><a href="#"> 修改</a></td>
        <td class="td"><a href="#"> 删除</a></td></tr>
        <tr>
        <td class="td">吉他</td>
                <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td"><input type="text"/></td>
        <td class="td">
             <select>
            <option >所属类型</option>
            <option value="音乐">音乐</option>
            <option value="舞蹈">舞蹈</option>
        </select>
        </td>
        
        <td class="td"><a href="#"> 修改</a></td>
        <td class="td"><a href="#"> 删除</a></td></tr>
     </table>
     </form>

      <div id="pageDivide">
        <ul>
            <li><a href="" class="pagea">首页</a></li>
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

	
     </div><!--右：setClass-->
</div><!--out-->
</div><!--content-->

<div id="footer">
     CopyRight sugarcane <a href="#">联系我们</a>
</div><!--footer-->
</body>
</html>