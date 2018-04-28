<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>培训中心注册</title>
<link href="${ctx}/static/css/orgRegist.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/css/orgStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/address.js"></script>


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
<hr/> 
</div>

<!--内容-->
<div id="content">

<div id="out">
<h1>培训机构注册</h1>

		<div id="table1">
		<form action="" method="post">
		<table>
			<tr>
			  <td class="td1"><span class="xing">*</span>&nbsp;机构名称:</td>
			  <td><input type="text" class="input1" name="name" /></td>
			  </tr>
			<tr>		
			  <td class="td1"><span class="xing">*</span>&nbsp;邮&nbsp;&nbsp;箱:</td>
			  <td><input type="mail"name="mail" class="input1" placeholder="请输入正确邮箱格式" /></td></tr>
			  <tr>
			  <td class="td1"><span class="xing">*</span>&nbsp;密&nbsp;&nbsp;码:</td>
			  <td><input type="password" class="input1" name="password" /></td>
			  </tr>
			 <tr>		
			  <td class="td1">&nbsp;联系方式:</td>
			  <td><input type="text" class="input1"/></td></tr>
			<tr>
			 <td class="td1" ><span class="xing">*</span>
			 地&nbsp;&nbsp;址:
			 </td >
             <td  id="addresstd">
             <select id="cmbProvince" name="cmbProvince"></select>    
             <select id="cmbCity" name="cmbCity"></select>    
             <select id="cmbArea" name="cmbArea"></select>    
             <script type="text/javascript">    
                 addressInit('cmbProvince', 'cmbCity', 'cmbArea');    
             </script></td>
			  <!-- <td><input type="text" name="address" class="input1" /></td> --></tr>		  
			<tr>
			  <td class="td1">&nbsp;简&nbsp;&nbsp;介:</td>
			  <td><textarea ></textarea></td></tr>
		</table>
		</form>
		</div><!--table1-->
    <div id="table2">
	<table>
		<tr>
			<td class="sctd">
				<div class="sc">上传教育局照片<br>
				<a class="filea" href="#">+<input type="file"/></a>
				<p class="fileerrorTip1"></p>
				<p class="showFileName1"></p>
				</div>
			</td>
			<td class="sctd">
				<div class="sc">上传教育局照片<br>
				<a class="fileb" href="#">+<input type="file"/></a>
				<p class="fileerrorTip2"></p>
				<p class="showFileName2"></p>
				</div>
			</td>
			<td class="sctd">
				<div class="sc">上传教育局照片<br>
				<a class="filec" href="#">+<input type="file"/></a>
				<p class="fileerrorTip3"></p>
				<p class="showFileName3"></p>
				</div>
			</td>
			<td class="sctd">
				<div class="sc">上传教育局照片<br>
				<a class="filed" href="#">+<input type="file"/></a>
				<p class="fileerrorTip4"></p>
				<p class="showFileName4"></p>
				</div>
			</td>
			
		</tr>
	</table>
	</div><!--table2-->
	<br>
	<div id="tijiao">
	<input type="submit" value="提交信息" class="tijiao"/>
	</div>

	<div id="dialog" class="dialog">
		<header>信息提示</header>
		<div>是否确定上传信息？</div>
		<button><a href="pxlogin.html">是</a></button>
		<button id="no"><a href="#">否</a></button>
	</div>

</div><!--out-->
</div><!--content-->


<div id="footer">
     CopyRight sugarcane <a href="#">联系我们</a>
</div><!--footer-->

</body>
<!--上传文件-->
<script type="text/javascript">
// $(document).ready(function(){})
			$("input[name=name]").blur(function(){
				console.log('a');
				$("tr:eq(0) p").remove();//先删除节点
				if($(this).val().length==0){
					//1.生成节点
					var error=$("<p style='color:red;line-height:49px;height:49px;'>用户名不能为空</p>");
					//2.连接节点
					$("tr:eq(0)").append(error);
				}
			})

			$("input[name=mail]").blur(function(){
				console.log('a');
				$("tr:eq(1) p").remove();//先删除节点
				if($(this).val().length==0){
					//1.生成节点
					var error=$("<p style='color:red;line-height:49px;height:49px;'>邮箱不能为空</span>");
					//2.连接节点
					$("tr:eq(1)").append(error);
				}else{
					if($(this).val().indexOf('@') == -1){
						//1.生成节点
						var error=$("<p style='color:red;line-height:49px;height:49px;'>邮箱格式不正确</span>");
						//2.连接节点
						$("tr:eq(1)").append(error);
					}
				}
			})

			$("input[name=password]").blur(function(){
				console.log('a');
				$("tr:eq(2) p").remove();//先删除节点
				if($(this).val().length==0){
					//1.生成节点
					var error=$("<p style='color:red;line-height:49px;height:49px;'>密码不能为空</p>");
					//2.连接节点
					$("tr:eq(2)").append(error);
				}
			})
			// $("input[name=address]").blur(function(){
			// 	console.log('a');
			// 	$("tr:eq(3) p").remove();//先删除节点
			// 	if($(this).val().length==0){
			// 		//1.生成节点
			// 		var error=$("<p style='color:red; line-height:49px;height:49px;'>地址不能为空</p>");
			// 		//2.连接节点
			// 		$("tr:eq(3)").append(error);
			// 	}
			// })
		
		$("#no").click(function(){
			$("#dialog").css("display","none");
		})
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
	$(".fileb").on("change","input[type='file']",function(){
	    var filePath=$(this).val();
	    if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
	        $(".fileerrorTip2").html("").hide();
	        var arr=filePath.split('\\');
	        var fileName=arr[arr.length-1];
	        $(".showFileName2").html(fileName);
	    }else{
	        $(".showFileName2").html("");
	        $(".fileerrorTip2").html("您未上传文件，或者您上传文件类型有误！").show();
	        return false;
	    }
	})
	$(".filec").on("change","input[type='file']",function(){
	    var filePath=$(this).val();
	    if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
	        $(".fileerrorTip3").html("").hide();
	        var arr=filePath.split('\\');
	        var fileName=arr[arr.length-1];
	        $(".showFileName3").html(fileName);
	    }else{
	        $(".showFileName3").html("");
	        $(".fileerrorTip3").html("您未上传文件，或者您上传文件类型有误！").show();
	        return false;
	    }
	})
	$(".filed").on("change","input[type='file']",function(){
	    var filePath=$(this).val();
	    if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
	        $(".fileerrorTip4").html("").hide();
	        var arr=filePath.split('\\');
	        var fileName=arr[arr.length-1];
	        $(".showFileName4").html(fileName);
	    }else{
	        $(".showFileName4").html("");
	        $(".fileerrorTip4").html("您未上传文件，或者您上传文件类型有误！").show();
	        return false;
	    }
	})
	//提交后弹框
	var subnode = document.getElementById('tijiao');
	subnode.onclick = function(){
		var node = document.getElementById('dialog');
		node.style.display = 'block';
	}
	
</script>
</html>