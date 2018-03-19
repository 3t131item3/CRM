<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户构成统计</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>客户构成统计<small>&gt;&gt;客户构成统计</small></h3>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchConstituteByMonth" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">月份:</strong>
                                <input type="text" name="month" value="${month}" placeholder="Search" class="form-control input-md roleName" maxlength="30">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>
                    <div class="x_content">

                        <strong class="h3">客户构成统计信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>客户数量</th>
                                <th>月份</th>
                                <th>同比</th>
                                <th>环比</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                       <c:forEach var="constitute" items="${constituteList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${constitute.customerCount}</td>
                                <td>${constitute.month}</td>
                                <td>${constitute.yearOnyear}</td>
                                <td>${constitute.comparative}</td>
                                <td>
                                    <a href="/crm/viewConstitute/${constitute.id}" class="btn btn-success btn-xs">查看</a>
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
