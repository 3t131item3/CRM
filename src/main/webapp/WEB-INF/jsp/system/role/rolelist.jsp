<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
                <h3>系统管理<small>&gt;&gt;角色管理</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/rolelist" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">角色名称:</strong>
                                <input type="text" name="roleName" value="${roleName}" placeholder="Search" class="form-control input-md roleName" maxlength="30" >
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>
                    <div class="x_content">
                        <strong class="h3">角色信息列表</strong>
                        <a href="/crm/addRole" class="btn btn-success" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>角色编号</th>
                                <th>角色名称</th>
                                <th>所属部门</th>
                                <th>最后修改时间</th>
                                <th>操作人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                        <tbody>
                          <c:forEach var="role" items="${roleList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${role.roleCode}</td>
                                <td><c:out value="${role.roleName}" escapeXml="true"/></td>
                                <td>${role.dept.name}</td>
                                <td>${role.lastUpdateTime}</td>
                                <td>${role.createdBy}</td>
                                <td>
                                    <a href="/crm/modify/${role.id}" class="btn btn-info btn-xs">修改</a>
                                    <a href="javascript:;" roleId="${role.id}" roleName="${role.roleName}" class="btn btn-danger btn-xs deleteRole">删除</a>
                                <%--<a href="#" class="btn btn-primary btn-xs">授权</a>--%>
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
<script src="${pageContext.request.contextPath}/js/deleterole.js"></script>


<%--<script type="text/javascript">
    $(document).ready(function () {
        $(".removes").click(function () {
            if(!confirm("確定要刪除嗎？")){
                $(this).attr("href","/crm/rolelist");
            }
        })
    });
</script>--%>
