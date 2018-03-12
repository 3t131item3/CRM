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
                        <form action="/contactslist" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">联系人:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName" name="name">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">角色信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>

                            <tr>
                                <th></th>
                                <th>联系人</th>
                                <th>性别</th>
                                <th>联系电话</th>
                                <th>住址</th>
                                <th>备注</th>
                            </tr>
                            </thead>

                            <tbody>
                           <c:forEach items="${contacts}" var="contacts">
                            <tr>

                                <td>${contacts.name}</td>
                                <td>${contacts.sex}</td>
                                <td>${contacts.phone}</td>
                                <td>${contacts.address}</td>
                                <td>${contacts.remark}</td>
                                <td>
                                    <a href="#" class="btn btn-primary">添加</a>
                                    <a href="#" class="btn btn-warning">修改</a>
                                    <a href="#" class="btn btn-success">查看</a>
                                    <a href="#" class="btn btn-danger">删除</a>
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
</body>
</html>
