<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <style>
        ul,li{
            list-style: none;
        }
        .left{
            float:left;
            width:600px;
        }
        .myinfo{
            font-size:20px;
        }
        .myinfo li{
            line-height: 36px;
        }
    </style>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>系统管理<small>&gt;&gt;个人信息</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="myinfo">
           <ul class="left">
               <li>员工姓名: <span>${user.userName}</span></li>
               <li>所在部门:<span>${user.dept.name}</span></li>
               <li>系统角色:<span>${user.role.roleName}</span></li>
               <li>登录ID:<span>${user.id}</span></li>
           </ul>
            <ul class="right">
                <li>员工编号:<span>${user.userCode}</span></li>
                <li>当前状态:<span>${user.isStart}</span></li>
                <li>创建时间:<span>${user.creationTime}</span></li>
                <li>
                    <form action="/crm/modifyMyInfoPhone" method="post">
                        <input type="hidden" name="id" value="${user.id}"/>
                        联系电话: <input class="telephone" name="phone" value="${user.phone}" type="text">
                        <button type="submit" class="modify" onclick="alert('修改成功！')">修改</button>
                    </form>
                </li>

            </ul>
            <a href="/crm/modifyMyInfoPwd" class="btn btn-default">修改密码</a>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
<script>
    $(function(){
        $(".modify").on("click",function(){
            $(this).prev().attr("readonly",false);
        })
    })
</script>
</body>
</html>
