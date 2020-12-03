<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>20201110</title>
</head>
<script src="/webjars/jquery/3.1.1/jquery.min.js">
    $(function(){
        //跳转到注册界面
        $("#registerBt").click(function(){
            window.location.href="register.jsp";
        })

    })

</script>
<body>
<form method="post" id="frm">
    用户名:	<input type="text" name="userName">
    密   码:	<input type="password" name="userPassword">
    <input type="submit" value="登陆"><br />
    <a href="register.jsp">没有账号?点击注册</a>
</form>
</body>
</html>
