<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>完善个人信息</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/complete.css">
    <script type="text/javascript" src="${ctx }/static/frontjs/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="${ctx }/static/frontjs/xiala.js"></script> 
    <script type="text/javascript" src="${ctx }/static/frontjs/birthday.js"></script>
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
                <a href="home.html">首页</a>
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
                        <input type="text" name="email" id="email" value="" placeholder="请输入邮箱" class="abcd" onblur="check_box1()" />
                        <div class="bcde" align="center"></div>
                        <input type="password" name="" id="pwd_login" value="" placeholder="请输入密码" onblur="check_box2()"/>
                        <div class="error_pwd" align="center"></div>
                        <input type="submit" name="" id="" value="登录" class="btn" />
                        <input type="button" name="" id="forgetPwd" value="忘记密码?" class="">
                        <input type="button" name="" id="noAccount" value="没有账号?去注册" class="">
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
                        <input type="text" name="" id="email" value="" placeholder="请输入邮箱" class="abc" onblur="check_box()" />
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
    <div id="backgroundImg"></div>
<!--body-->
    <div class="body">
        <div class="toptip">完善个人信息</div>
        <form action="">
            <div class="top_form">
                <div class="sex">
                    <span style="color:#F30">*</span><span>性别：</span>
                    <input type="radio" value="male" name="sex" checked="checked"/>男
                    <input type="radio" value="famale" name="sex"/>女
                </div>
                <div class="age">
                    <span style="color:#F30">*</span><span>生日：</span>
                    <select name="YYYY" id="year" onchange="changeday()">
                        <option value="">请选择 年</option>
                    </select>
                    <select name="MM" id="month" onchange="changeday()">
                        <option value="">请选择 月</option>
                    </select>
                    <select name="DD" id="day">
                        <option value="">请选择 日</option>
                    </select>
                </div>
                <div class="edurank">
                    <span style="color:#F30">*</span><span>学历：</span>
                    <select name="edurank">
                        <option value="0" selected="selected">请选择</option>
                        <option value="1">小学</option>
                        <option value="2">初中</option>
                        <option value="3">高中</option>
                        <option value="4">本科</option>
                        <option value="5">专科</option>
                        <option value="6">研究生</option>
                        <option value="7">博士生及以上</option>
                    </select>
                </div>
                <div class="work">
                    <span style="color:#F30">*</span><span>职业：</span>
                    <select name="work">
                        <option value="0" selected="selected">请选择</option>
                        <option value="1">学生</option>
                        <option value="2">会计</option>
                        <option value="3">IT</option>
                        <option value="4">医生</option>
                        <option value="5">老师</option>
                        <option value="6">律师</option>
                        <option value="7">其他</option>
                    </select>
                </div>
                <div class="address">
                    <span style="color:#F30">*</span><span>地址：</span>
                    <select id="cmbProvince" name="cmbProvince"></select>    
                    <select id="cmbCity" name="cmbCity"></select>    
                    <select id="cmbArea" name="cmbArea"></select>    
                    <script type="text/javascript">    
                        addressInit('cmbProvince', 'cmbCity', 'cmbArea');    
                    </script>
                </div>
            </div>
            <div class="top_select">
                <div class="interest">兴趣爱好</div>
                <div class="mixselect">
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>舞蹈
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>音乐
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                    <label class="demo--label">
                        <input class="demo--radio" type="checkbox" name="demo-checkbox1">
                        <span class="demo--checkbox demo--radioInput"></span>文艺
                    </label>
                </div>
                <div class="save">
                    <input type="button" value="保存" id="btn_save"></input>
                </div>
            </div>
        </form>
    </div>
<!--footer-->
    <div class="footer">
        <div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>

<!--生日下拉框-->
<script type="text/javascript" language="javascript">
    var curdate = new Date();
    var year = document.getElementById("year");
    var month = document.getElementById("month");
    var day = document.getElementById("day");
    //绑定年份月分的默认
    function add() {
        var curyear = curdate.getFullYear();
        var minyear = curyear - 99;
        var maxyear = curyear;
        for (maxyear; maxyear >= minyear; maxyear = maxyear - 1) {
        year.options.add(new Option(maxyear, maxyear));
        }
        for (var mindex = 1; mindex <= 12; mindex++) {
            month.options.add(new Option(mindex, mindex));
        }
    }

    //判断是否是闰年
    function leapyear(intyear) {
        var result = false;
        if (((intyear % 400 == 0) && (intyear % 100 != 0)) || (intyear % 4 == 0)) {
            result = true;
        }
        else {
            result = false;
        }
            return result;
    }
    //绑定天数
    function addday(maxday) {
        day.options.length = 1;
        for (var dindex = 1; dindex <= maxday; dindex++) {
            day.options.add(new Option(dindex, dindex));
        }
    }
    function changeday() {
        if (year.value == null || year.value == "") {
            alert("请先选择年份！");
            return false;
        }
        else {
            if (month.value == 1 || month.value == 3 || month.value == 5 || month.value == 7 || month.value == 8 || month.value == 10 || month.value == 12) {
                addday(31);
            }
            else {
                if (month.value == 4 || month.value == 6 || month.value == 9 || month.value == 11) {
                    addday(30);
                }
                else {
                    if (leapyear(year.value)) {
                        addday(29);
                    }
                    else {
                        addday(28);
                    }
                }
            }
        }
    }
    window.onload = add();
</script>
</body>
</html>