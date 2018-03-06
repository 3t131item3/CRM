<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>角色管理</title>
    <style>

    </style>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>系统管理<small>&gt;&gt;基础信息</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="" method="post" class="navbar-form navbar text-center" >
                            <div class="form-group">
                                <strong class="h4">关键字:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>
                    <div class="x_content">
                        <strong class="h3">基础信息列表</strong>
                        <div class="navbar-right operation">
                            <a href="#" class="btn btn-success">添加</a>
                            <a href="/modifyRole" class="btn btn-success">修改</a>
                            <a href="#" class="btn btn-success">删除</a>
                        </div>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th>参数描述</th>
                                <th>参数关键字</th>
                                <th>参数值</th>
                                <th>添加人</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Donna Snider</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs">添加</a>
                                    <a href="#" class="btn btn-info btn-xs">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs">删除</a>
                                </td>
                            </tr>
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
