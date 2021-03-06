<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>用户信息详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>系统管理&gt;&gt;员工管理&gt;&gt;查看员工信息</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content" style="font-size: 20px;">

                        <p><strong>用户编码:</strong><span>${user.userCode}</span></p>
                        <p><strong>用户姓名:</strong><span>${user.userName}</span></p>
                        <p><strong>手机号:</strong><span>${user.phone}</span></p>
                        <p><strong>性别:</strong><span><c:if test="${user.gender==0}">男</c:if><c:if test="${user.gender==1}">女</c:if> </span></p>
                        <p><strong>所属部门:</strong><span>${user.dept.name}</span></p>
                        <p><strong>角色:</strong><span>${user.role.roleName}</span></p>

                    </div>
                    <div>
                        <a href="javascript:history.back(-1)" class="btn btn-primary btn-lg">返回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>
