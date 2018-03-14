<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>常见问题管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;常见问题管理</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">问题名称:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">类型</strong>
                                <select name="" class="form-control">
                                    <option value=""></option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">服务信息列表</strong>
                        <a href="/crm/addProblems" class="btn btn-primary" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>问题名称</th>
                                <th>类型</th>
                                <th>创建人</th>
                                <th>最后操作时间</th>
                                <th>最后更新时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <tbody>
                        <c:forEach var="problems" items="${problemsList}" varStatus="status">
                            <tr>
                                <td>${problems.problemsTitle}</td>
                                <td>${problems.serviceType}</td>
                                <td>${problems.createdBy}</td>
                                <td>${problems.createTime}</td>
                                <td>${problems.lastUpdateTime}</td>
                                <td>
                                    <a href="/crm/updateProblems/${problems.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/deleteProblems/${problems.id}" class="btn btn-danger btn-xs remove">删除</a>
                                    <a href="/crm/viewProblems/${problems.id}" class="btn btn-success btn-xs">查看</a>
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
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/pages.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".remove").click(function () {
            if(!confirm("確定要刪除嗎？")){
                $(this).attr("href","/crm/problemsList");
            }
        })
    });
</script>
