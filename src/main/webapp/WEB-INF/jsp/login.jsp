<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"/>
</head>
<body>

<form action="/loginsave" class="form-group" method="post">
    <div class="main">
        <h1 style="text-align: center">客户关系管理系统</h1>
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" id="userCode" placeholder="请输入用户名" required="" name="userCode" value="shanghongyun" maxlength="20"/>
        </div>
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="password" class="form-control" id="passWord" placeholder="请输入密码" required="请输入" name="userPassword"  value="123" maxlength="20"/>
        </div>
        <div class="login">
            <input type="submit" value="登录" class="btn btn-primary btn-lg"/>
            <input type="reset" value="取消" class="btn btn-primary btn-lg"/>
        </div>
        <div class="error">${error}</div>
    </div>
</form>
<script>
    document.getElementById("userName").oninvalid=function(){
        if(this.validity.valueMissing){
            this.setCustomValidity("用户名不能为空");
        }else{
            this.setCustomValidity("");
        }
    }
    document.getElementById("passWord").oninvalid=function(){
        if(this.validity.valueMissing){
            this.setCustomValidity("密码不能为空");
        }else{
            this.setCustomValidity("");
        }
    }
</script>
</body>
</html>