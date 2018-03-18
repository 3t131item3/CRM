<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户满意度管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;客户满意度管理</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchCustomerSatisfactionByName" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">客户姓名:</strong>
                                <input type="text" name="customerName"value="${customerName}" placeholder="Search" class="form-control input-md roleName"maxlength="30">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>
                    <div class="x_content">
                        <strong class="h3">客户满意度信息列表</strong>
                        <a href="/crm/addCustomerSatisfaction" class="btn btn-primary"style="float:right" >添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>客户姓名</th>
                                <th>客户类型</th>
                                <th>调查时间</th>
                                <th>质量满意度</th>
                                <th>服务满意度</th>
                                <th>总体满意度</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                        <c:forEach var="customerSatisfaction" items="${customerSatisfactionList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td><c:out value="${customerSatisfaction.customerName}"/></td>
                                <td>${customerSatisfaction.type}</td>
                                <td>${customerSatisfaction.creationTime}</td>
                                <td><c:out value="${customerSatisfaction.quality}"/></td>
                                <td><c:out value="${customerSatisfaction.service}"/></td>
                                <td><c:out value="${customerSatisfaction.all}"/></td>
                                <td>
                                    <a href="/crm/updateCustomerSatisfaction/${customerSatisfaction.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/viewCustomerSatisfaction/${customerSatisfaction.id}" class="btn btn-success btn-xs">查看</a>
                                    <a href="javascript:;"customerSatisfactionId="${customerSatisfaction.id}" customerSatisfactionName="${customerSatisfaction.customerName}" class="btn btn-danger btn-xs deleteSatisfaction">删除</a>
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
<script src="${pageContext.request.contextPath}/js/deletesatisfaction.js"></script>
</body>
</html>
