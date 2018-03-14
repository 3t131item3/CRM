<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>合同管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>合同管理</h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchContractManageByCondition" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">合同名称:</strong>
                                <input type="text" name="contractName" value="${contractName}" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">类型</strong>
                                <select name="contractType" id="contractType">
                                    <option value="">不限</option>
                                    <option value="销售合同"<c:if test="${contractType=='销售合同'}">selected="selected"</c:if>>销售合同</option>
                                    <option value="委托合同"<c:if test="${contractType=='委托合同'}">selected="selected"</c:if>>委托合同</option>
                                    <option value="技术合同"<c:if test="${contractType=='技术合同'}">selected="selected"</c:if>>技术合同</option>
                                    <option value="运输合同"<c:if test="${contractType=='运输合同'}">selected="selected"</c:if>>运输合同</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>

                    </div>

                    <div class="x_content">
                        <strong class="h3">合同信息列表</strong>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>姓名</th>
                                <th>合同名称</th>
                                <th>合同类型</th>
                                <th>状态</th>
                                <th>最后操作时间</th>
                                <th>待处理人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="contractManage" items="${contractManageList}" varStatus="status">
                                <tr>
                                    <td>${contractManage.userName}</td>
                                    <td>${contractManage.contractName}</td>
                                    <td>${contractManage.contractType}</td>
                                    <td>${contractManage.contractStatus}</td>
                                    <td>${contractManage.creationTime}</td>
                                    <td>${contractManage.nextHanlder}</td>
                                    <td>
                                        <a href="/crm/viewContractManage/${contractManage.id}" class="btn btn-success btn-xs">查看</a>
                                        <a href="/crm/updateExecuteContractManage/${contractManage.id}" class="btn btn-primary btn-xs">执行</a>
                                        <a href="/crm/updateChangeCreateManage/${contractManage.id}" class="btn btn-warning btn-xs">变更</a>
                                        <a href="/crm/updateTransfereCreateManage/${contractManage.id}" class="btn btn-danger btn-xs">转让</a>
                                        <a href="/crm/updateRelieveCreateManage/${contractManage.id}" class="btn btn-dark btn-xs">解除</a>
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
