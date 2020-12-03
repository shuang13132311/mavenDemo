<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<!-- 引入jQuery  -->

<script src="/js/jquery.min.js"></script>
<script>
	//JQuery加载
	$(function (){
		//AJAX form表单提交
		//Button绑定click事件
		$("#registerBt").click(function (){
			//form表单序列化
			var formData = $("#formData").serialize();
			alert(formData);
			//AJAX
			$.post(
					"register",			//访问路径
					formData,			//传给后台的参数
					function (result){
						alert("111");
					},"json"	//result的数据类型
			)

		})
	})
</script>

<body>
	<form method="post" id="formData">
		请输入账户:		<input type="text" name="userName"><br />
		请输入密码:		<input type="password" name="userPassword" id="userPassword">
		请选择性别:		<input type="radio" name="userSex" value="男">男
						<input type="radio" name="userSex" value="女">女<br />
		请输入电话号码:	<input type="text" name="userPhone">
						<input type="button" id="registerBt" value="提交"> <!-- //提交按钮，并触发前台验证 -->
	</form>
</body>
</html>