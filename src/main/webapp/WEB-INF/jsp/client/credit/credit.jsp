<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户信誉管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;客户信誉管理</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchcustomerReputationByName" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">客户姓名:</strong>
                                <input type="text" name="customerName" value="${customerName}" placeholder="Search" class="form-control input-md roleName">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">客户信誉信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>客户姓名</th>
                                <th>性别</th>
                                <th>客户类型</th>
                                <th>已消费次数</th>
                                <th>信誉等级</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <tbody>
                        <c:forEach var="customerReputation" items="${customerReputationList}" varStatus="status">
                            <tr>
                                <td>${customerReputation.customerName}</td>
                                <td>${customerReputation.sex}</td>
                                <td>${customerReputation.type}</td>
                                <td>${customerReputation.number}</td>
                                <td>${customerReputation.grade}</td>
                                <td><a href="/crm/viewCustomerReputation/${customerReputation.id}"  class="btn btn-success btn-xs">查看</a></td>
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
