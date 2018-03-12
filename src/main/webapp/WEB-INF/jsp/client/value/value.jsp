<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户价值管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;客户价值管理</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchValueByNameAndType" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">客户姓名:</strong>
                                <input type="text" name="customerName"value="${customerName}" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">类型:</strong>
                                <select id="type" name="type">
                                    <option value="">请选择</option>
                                    <option value="普通客户">普通客户</option>
                                    <option value="银卡客户">银卡客户</option>
                                    <option value="金卡客户">金卡客户</option>
                                    <option value="VIP客户">VIP客户</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">客户价值信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>客户姓名</th>
                                <th>性别</th>
                                <th>客户类型</th>
                                <th>已消费次数</th>
                                <th>消费总额(单位:万元)</th>
                                <th>服务代表</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                         <c:forEach var="customerVaule" items="${customerVauleList}" varStatus="status">
                            <tr>
                                <td>${customerVaule.customerName}</td>
                                <td>${customerVaule.sex}</td>
                                <td>${customerVaule.type}</td>
                                <td>${customerVaule.number}</td>
                                <td>${customerVaule.money}</td>
                                <td>${customerVaule.createdBy}</td>
                                <td>
                                    <a href="/crm/viewValue/${customerVaule.id}" class="btn btn-success btn-xs">查看</a>
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
