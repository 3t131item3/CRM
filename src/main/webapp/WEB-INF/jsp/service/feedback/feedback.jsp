<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>服务反馈</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;服务反馈</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchServiceBackByCondition" method="post" class="navbar-form navbar" >
                            <div class="form-group">
                                <strong class="h4">服务名称:</strong>
                                <input type="text" name="serviceName" value="${serviceName}" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">类型</strong>
                                <select name="serviceType" id="serviceType" class="form-control">
                                    <option value="">不限</option>
                                    <option value="投诉服务"<c:if test="${serviceType=='投诉服务'}">selected="selected"</c:if>>投诉服务</option>
                                    <option value="售前服务"<c:if test="${serviceType=='售前服务'}">selected="selected"</c:if>>售前服务</option>
                                    <option value="售后服务"<c:if test="${serviceType=='售后服务'}">selected="selected"</c:if>>售后服务</option>
                                    <option value="咨询服务"<c:if test="${serviceType=='咨询服务'}">selected="selected"</c:if>>咨询服务</option>
                                </select>
                                <strong class="h4">状态</strong>
                                <select name="serviceStatus" id="serviceStatus"class="form-control">
                                    <option value="">不限</option>
                                    <option value="新创建"<c:if test="${serviceStatus=='新创建'}">selected="selected"</c:if>>新创建</option>
                                    <option value="已提交"<c:if test="${serviceStatus=='已提交'}">selected="selected"</c:if>>已提交</option>
                                    <option value="已分配"<c:if test="${serviceStatus=='已分配'}">selected="selected"</c:if>>已分配</option>
                                    <option value="已处理"<c:if test="${serviceStatus=='已处理'}">selected="selected"</c:if>>已处理</option>
                                    <option value="已反馈"<c:if test="${serviceStatus=='已反馈'}">selected="selected"</c:if>>已反馈</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>

                    <div class="x_content">

                        <strong class="h3">服务信息列表</strong>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>服务名称</th>
                                <th>类型</th>
                                <th>状态</th>
                                <th>最后操作时间</th>
                                <th>操作人</th>
                                <th>待处理人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                    <c:forEach var="serviceBack" items="${serviceBackList}" varStatus="status">
                        <%--只处理已处理的--%>
                        <c:if test="${serviceBack.serviceStatus=='已处理'}">
                             <tr>
                                 <td>${serviceBack.serviceName}</td>
                                 <td>${serviceBack.serviceType}</td>
                                 <td>${serviceBack.serviceStatus}</td>
                                 <td>${serviceBack.createTime}</td>
                                 <td>${serviceBack.createdBy}</td>
                                 <td>${serviceBack.nextHanlder}</td>
                                <td>
                                    <a href="/crm/updateServiceBack/${serviceBack.id}" class="btn btn-info btn-xs">反馈</a>
                                    <a href="/crm/viewServiceBack/${serviceBack.id}" class="btn btn-success btn-xs">查看</a>
                                </td>
                            </tr>
                        </c:if>
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
</body>
</html>
