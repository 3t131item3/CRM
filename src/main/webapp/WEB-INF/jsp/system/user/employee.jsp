<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>角色管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>系统管理<small>&gt;&gt;员工管理</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/listAll" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">员工姓名:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName" name="userName">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>
                    <div class="x_content">
                        <strong class="h3">员工信息列表</strong>
                        <a href="/crm/addemp" class="btn btn-success" id="add" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>员工姓名</th>
                                <th>性别</th>
                                <th>所在部门</th>
                                <th>角色</th>
                                <th>状态</th>
                                <th>最后修改时间</th>
                                <th>操作人</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${user}" var="emp" varStatus="status" >

                                <tr>
                                    <td>${status.index+1}</td>
                                    <td>${emp.userName}</td>
                                    <td> <c:if test="${emp.gender==0}">男</c:if> <c:if test="${emp.gender==1}">女</c:if></td>
                                    <td>${emp.dept.name}</td>
                                    <td>${emp.role.roleName}</td>
                                    <td><c:if test="${emp.isStart==0}">不启用</c:if> <c:if test="${emp.isStart==1}">启用</c:if></td>
                                    <td>${emp.lastLoginTime}</td>
                                    <td>${userSession.userName}</td>
                                    <td>
                                        <a href="/crm/update/${emp.id}" class="btn btn-info btn-xs">修改</a>
                                        <a href="/modifyRole" class="btn btn-success btn-xs">启用/禁用</a>
                                        <a href="javascript:;" userid=${emp.id} username=${emp.userName} class="btn btn-success btn-xs deleteUser">删除</a>
                                        <a href="/crm/userview/${emp.id}" class="btn btn-success btn-xs">查看</a>
                                        <a href="#" class="btn btn-primary btn-xs">授权</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/userlist.js"></script>
</body>
</html>
