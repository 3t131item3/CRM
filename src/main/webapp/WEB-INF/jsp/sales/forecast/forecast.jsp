<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>销售预测</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;销售预测</small></h3>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchforecastByMonth" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">月份:</strong>
                                <input type="text" name="month" value="${month}" placeholder="Search" class="form-control input-md month">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>

                    <div class="x_content">
                        <strong class="h3">销售预测信息列表</strong>
                        <a href="/crm/addForecast" class="btn btn-primary" style="float:right">预测</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>预测结果</th>
                                <th>预测月份</th>
                                <th>类型</th>
                                <th>生成时间</th>
                                <th>操作人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="forecast" items="${forecastList}" varStatus="status">
                                <tr>
                                <td>${status.count}</td>
                                <td><c:out value="${forecast.title}" escapeXml="true"/></td>
                                <td><c:out value="${forecast.month}" escapeXml="true"/></td>
                                <td>${forecast.type}</td>
                                <td>${forecast.date}</td>
                                <td>${forecast.createdBy}</td>
                                <td>
                                    <a href="/crm/viewForecast/${forecast.id}" class="btn btn-success btn-xs">查看</a>
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

