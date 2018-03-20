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
                <h3>销售管理<small>&gt;&gt;销售计划</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                    </div>
                    <div class="x_content">
                        <strong class="h3" style="color: #761c19">销售计划信息列表</strong>
                        <a href="/crm/addPlan" class="btn btn-primary" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>编码</th>
                                <th>姓名</th>
                                <th>月份</th>
                                <th>状态</th>
                                <th>最后操作时间</th>
                                <th>操作人</th>
                                <th>待处理人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                          <c:forEach var="plan" items="${planList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${plan.code}</td>
                                <td><c:out value="${plan.userName}"/></td>
                                <td><c:out value="${plan.month}" escapeXml="true"/></td>
                                <td>${plan.status}</td>
                                <td>${plan.lastUpdateTime}</td>
                                <td>${plan.createdBy}</td>
                                <td>${plan.nextHanlder}</td>
                                <td>
                                    <c:if test="${plan.status=='新创建'}">
                                    <a href="/crm/updatePlan/${plan.id}" class="btn btn-warning btn-xs">修改</a>
                                    </c:if>
                                    <c:if test="${plan.status=='新创建'}">
                                        <a href="/crm/commitPlan/${plan.id}/${plan.userName}" class="btn btn-info btn-xs">提交</a>
                                    </c:if>
                                    <a href="/crm/viewPlan/${plan.id}" class="btn btn-success btn-xs">查看</a>
                                    <c:if test="${plan.status=='新创建'}">
                                    <a href="javascript:;" planId="${plan.id}" planName="${plan.userName}" class="btn btn-danger btn-xs deletePlan">删除</a>
                                    </c:if>
                                    <c:if test="${userSession.id==1 or userSession.id==2 or userSession.id==3 }">
                                    <c:if test="${plan.status=='已提交' and plan.nextHanlder!=null}">
                                        <%--<c:if test="${userSession.id!=3 and plan.nextHanlder!='韩露'}">--%>
                                        <a href="/crm/checkPlan/${plan.id}" class="btn btn-danger btn-xs">审核</a>
                                        <%--</c:if>--%>
                                    </c:if>
                                    </c:if>
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
<script src="${pageContext.request.contextPath}/js/deleteplans.js"></script>

