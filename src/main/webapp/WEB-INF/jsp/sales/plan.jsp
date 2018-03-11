<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>销售计划</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>销售管理&gt;&gt;销售计划</h4>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content">
                        <strong class="h3">销售计划信息列表</strong>
                        <div class="x_title">

                        </div>
                        <a href="/crm/addplan" class="btn btn-success" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th>姓名</th>
                                <th>月份</th>
                                <th>状态</th>
                                <th>最后操作时间</th>
                                <th>操作人</th>
                                <th>待处理人</th>
                            </tr>
                            </thead>

                            <tbody>

                            <tr>
                                <td>Donna Snider</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                                <td>$112,000</td>
                                <td>

                                    <a href="/crm/updateplan" class="btn btn-warning btn-xs">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs">删除</a>
                                    <a href="#" class="btn btn-info btn-xs">提交</a>
                                    <a href="/crm/viewplan" class="btn btn-success btn-xs">查看</a>
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
