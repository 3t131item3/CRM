<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>合同创建</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;合同创建</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="/crm/searchContractCreateByCondition" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">合同名称:</strong>
                                <input type="text" name="contractName" value="${contractName}" placeholder="Search" class="form-control input-md roleName"maxlength="30">
                                <strong class="h4">类型</strong>
                                <select name="contractType" id="contractType"class="form-control">
                                    <option value="">不限</option>
                                    <option value="销售合同"<c:if test="${contractType=='销售合同'}">selected="selected"</c:if>>销售合同</option>
                                    <option value="委托合同"<c:if test="${contractType=='委托合同'}">selected="selected"</c:if>>委托合同</option>
                                    <option value="技术合同"<c:if test="${contractType=='技术合同'}">selected="selected"</c:if>>技术合同</option>
                                    <option value="运输合同"<c:if test="${contractType=='运输合同'}">selected="selected"</c:if>>运输合同</option>
                                </select>
                                <strong class="h4">状态</strong>
                                <select name="contractStatus" id="contractStatus"class="form-control">
                                    <option value="">不限</option>
                                    <option value="已创建"<c:if test="${contractStatus=='已创建'}">selected="selected"</c:if>>已创建</option>
                                    <option value="已提交"<c:if test="${contractStatus=='已提交'}">selected="selected"</c:if>>已提交</option>
                                    <option value="待审核"<c:if test="${contractStatus=='待审核'}">selected="selected"</c:if>>待审核</option>
                                    <option value="已审核"<c:if test="${contractStatus=='已审核'}">selected="selected"</c:if>>已审核</option>
                                    <option value="已执行"<c:if test="${contractStatus=='已履行'}">selected="selected"</c:if>>已履行</option>
                                    <option value="已变更"<c:if test="${contractStatus=='已变更'}">selected="selected"</c:if>>已变更</option>
                                    <option value="已解除"<c:if test="${contractStatus=='已解除'}">selected="selected"</c:if>>已解除</option>
                                    <option value="已转让"<c:if test="${contractStatus=='已转让'}">selected="selected"</c:if>>已转让</option>
                                    <option value="已终止"<c:if test="${contractStatus=='已终止'}">selected="selected"</c:if>>已终止</option>
                                    <option value="已归档"<c:if test="${contractStatus=='已归档'}">selected="selected"</c:if>>已归档</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>
                    <div class="x_content">
                        <strong class="h3">合同信息列表</strong>
                        <a href="/crm/addContractCreate" class="btn btn-success"style="float:right">创建</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
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
                         <c:forEach var="contractCreate" items="${contractCreateList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td><c:out value="${contractCreate.userName}"/></td>
                                <td><c:out value="${contractCreate.contractName}"/></td>
                                <td>${contractCreate.contractType}</td>
                                <td>${contractCreate.contractStatus}</td>
                                <td>${contractCreate.lastUpdateTime}</td>
                                <td>${contractCreate.nextHanlder}</td>
                                <td>
                                    <c:if test="${contractCreate.contractStatus=='已创建'}">
                                        <a href="/crm/updateContractCreate/${contractCreate.id}" class="btn btn-warning btn-xs">修改</a>
                                        <a href="/crm/commitContractCreate/${contractCreate.id}/${contractCreate.userName}" class="btn btn-primary btn-xs">提交</a>
                                    </c:if>
                                    <a href="/crm/viewContractCreate/${contractCreate.id}" class="btn btn-success btn-xs">查看</a>
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
