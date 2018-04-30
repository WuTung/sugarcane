<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询是否通过审核</title>
<link href="${ctx}/static/css/passed.css" rel="stylesheet" type="text/css" />
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
 
</p>  
</div>
<div><hr/></div>

<!--内容-->
<div id="content">
<div id="out">
		<div id="table1">
		<form action="" method="post">
		<table>
			<tr>
			  <td class="td1">邮&nbsp;&nbsp;箱:</td>
			  <td><input type="text" class="input1" value="" /></td></tr>
			<tr>
			  <td class="td1">机构名称:</td>
			  <td><input type="text" class="input1" /></td></tr>
		</table>
		</form>
		</div><!--table1-->
  
	<div id="chaxun">
	<a href="#">
	<input type="button" value="查询" class="chaxun"/>
	</a>
	</div>

	<div id="dialog" class="dialog">
		<header>信息提示</header>
		<div>审核通过,返回登录页面！</div>
		<button><a href="${ctx}/pxlogin.html">确定</a></button>
	</div>

</div><!--out-->
</div><!--content-->

<div id="footer">
     ©CopyRight sugarcane <a href="#">联系我们</a>
</div><!--footer-->

</body>
<!--上传文件-->
<script>
	$(".filea").on("change","input[type='file']",function(){
	    var filePath=$(this).val();
	    if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
	        $(".fileerrorTip1").html("").hide();
	        var arr=filePath.split('\\');
	        var fileName=arr[arr.length-1];
	        $(".showFileName1").html(fileName);
	    }else{
	        $(".showFileName1").html("");
	        $(".fileerrorTip1").html("您未上传文件，或者您上传文件类型有误！").show();
	        return false;
	    }
	})
	<!--提交后弹框-->
	var subnode = document.getElementById('chaxun');
	subnode.onclick = function(){
		var node = document.getElementById('dialog');
		node.style.display = 'block';
	}
</script>
</html>