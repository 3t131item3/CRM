<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>联系人管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;联系人管理</small></h3>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/contactslist" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">联系人:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md" name="name">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">
                        <strong class="h3">联系人列表</strong>
                        <a href="/crm/addContacts" class="btn btn-primary" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>编码</th>
                                <th>联系人</th>
                                <th>性别</th>
                                <th>联系电话</th>
                                <th>住址</th>
                                <th>备注</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                           <c:forEach items="${contactslist}" varStatus="status" var="contacts">
                            <tr>
                                <td>${status.count}</td>
                                <td>${contacts.code}</td>
                                <td><c:out value="${contacts.name}"/></td>
                                <td>${contacts.sex}</td>
                                <td><c:out value="${contacts.phone}"/></td>
                                <td><c:out value="${contacts.address}"/></td>
                                <td><c:out value="${contacts.remark}"/></td>
                                <td>
                                    <a href="/crm/updateContacts/${contacts.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/viewContacts/${contacts.id}" class="btn btn-success btn-xs">查看</a>
                                    <a href="/crm/deleteContacts/${contacts.id}" class="btn btn-danger btn-xs removes">删除</a>
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
        $(".removes").click(function () {
            if(!confirm("確定要刪除嗎？")){
                $(this).attr("href","/crm/contactslist");
            }
        })
    });
</script>
