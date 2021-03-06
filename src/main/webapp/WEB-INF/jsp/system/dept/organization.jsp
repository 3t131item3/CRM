<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>组织管理</title>

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
                        <form action="/crm/listDeptAll"  method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">组织名称:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName" name="deptName" maxlength="30" >
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">结构组织信息列表</strong>
                        <a href="/crm/addorganization" class="btn btn-primary" style="float: right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>组织编码</th>
                                <th>组织名称</th>
                                <th>最后修改时间</th>
                                <th>操作人</th>
                                <th>备注说明</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach varStatus="status" items="${deptList}" var="dept">
                            <tr>
                                <td>${status.count}</td>
                                <td>${dept.deptCode}</td>
                                <td><c:out value="${dept.name}" escapeXml="true"/></td>
                                <td>${dept.lastUpdateTime}</td>
                                <td>${dept.operator}</td>
                                <td>${dept.remark}</td>
                                <td>
                                    <a href="/crm/modifyDept/${dept.id}" class="btn btn-info btn-xs">修改</a>
                                    <a href= "javascript:;" deptId="${dept.id}" deptName="${dept.name}"  class="btn btn-danger btn-xs deleteDept">删除</a>
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
<script src="${pageContext.request.contextPath}/js/deletedept.js"></script>

