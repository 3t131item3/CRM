<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h3>系统管理<small>&gt;&gt;组织结构</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/listDeptAll" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">名称:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName" name="name">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">结构组织信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th>名称</th>
                                <th>最后修改时间</th>
                                <th>操作人</th>
                                <th>备注说明</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${dept}" var="dept">

                            <tr>
                                <td>${dept.name}</td>
                                <td>${dept.lastUpdateTime}</td>
                                <td>${dept.operator}</td>
                                <td>${dept.remark}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs">添加</a>
                                    <a href="#" class="btn btn-info btn-xs">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs">删除</a>
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
</body>
</html>
