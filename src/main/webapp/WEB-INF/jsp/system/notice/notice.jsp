<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>公告管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>系统管理<small>&gt;&gt;公告管理</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">

                    </div>

                    <div class="x_content">

                        <strong class="h3">公告信息列表</strong>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>标题</th>
                                <th>发布时间</th>
                                <th>发布人</th>
                                <th>内容</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${notice}" var="notice">
                                <tr>
                                    <td>${notice.title}</td>
                                    <td>${notice.issueTime}</td>
                                    <td>${notice.issueBy}</td>
                                    <td>${notice.content}</td>
                                    <td>
                                        <a href="/crm/addNotice" class="btn btn-primary btn-xs">添加</a>
                                        <a href="/crm/modifyNotice/${notice.id}" class="btn btn-info btn-xs">修改</a>
                                        <a href="javascript:;" id=${notice.id} username=${notice.title} class="btn btn-success btn-xs deleteUser">删除</a>
                                        <a href="/crm/noticeview/${notice.id}" class="btn btn-primary btn-xs">查看</a>
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
<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/noticelist.js"></script>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/pages.js"></script>

