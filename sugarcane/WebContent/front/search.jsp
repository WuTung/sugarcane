<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>

<script type="text/javascript" src="${ctx }/static/frontjs/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".bodys form").not(":first").hide();
	$(".searchbox ul li").mouseover(function(){
		var index = $(this).index();
		if(index==0){
			$(this).find("a").addClass("style1");
			$("li").eq(1).find("a").removeClass("style2");
		}
		if(index==1){
			$(this).find("a").addClass("style2");
			$("li").eq(0).find("a").removeClass("style1");
		}
		var index=$(this).index();
		$(".bodys form").eq(index).show().siblings().hide();
	});
});
</script>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}

/* searchbox */
.searchbox{width:520px;height:80px;margin:40px auto 0 auto;}
.searchbox ul{ height:35px; width:500px; list-style:none; margin-left:20px}
.searchbox ul li{ float:left}
.searchbox ul li a{ float:left; line-height:35px; padding:0 20px; text-decoration:none; color:#000; font-size:14px; font-weight:bold;}
.searchbox ul li .style1{ background-color:#000; color:#fff}
.searchbox ul li .style2{ background-color:#f00;color:#fff}
.bodys input{ height:30px;line-height:30px;width:390px;padding:0 10px;float:left;}
.bodys .one{ border:#000 3px solid}
.bodys .two{ border:#f00 3px solid}
.bodys .one1{ background-color:#000; }
.bodys .two2{ background-color:#f00;}
.bodys button{float:left;border:0;height:36px;width:100px; color:#FFF; line-height:36px;text-align:center;overflow:hidden;}
.searchbody{border:1px red solid;width:100%;height:45.5em;background-image:url(../static/frontimages/searchbg.jpg);}
</style>

</head>
<body>
<div class="searchbody">
<div class="searchbox">
	<ul class="border1">
		<li><a href="#" class="style1">课程</a></li>
		<li><a href="#">培训机构</a></li>
	</ul>
	<div class="bodys">
	    <form>
		    <p><input type="text" value="" id="" class="one" placeholder="输入课程关键字" /><button class="one1">搜索</button></p>
		</form>
		<form>
		    <p><input type="text" value="" id="" class="two" placeholder="输入培训机构关键字" /><button class="two2">搜索</button></p>
	    </form>
	</div>
</div>
</div>	
</body>
</html>