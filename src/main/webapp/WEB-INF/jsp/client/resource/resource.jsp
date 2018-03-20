<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户资源管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;客户资源管理</small></h3>
            </div>

        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                        <div class="x_title">
                            <form action="/crm/searchCustomerResourceByName" method="post" class="navbar-form navbar" >
                                <div class="form-group f-group">
                                    <strong class="h4">客户姓名:</strong>
                                    <input type="text" value="${customerName}"  name="customerName" placeholder="Search" class="form-control input-md roleName"maxlength="30">
                                    <strong class="h4">分配状态</strong>
                                    <select name="status" id="status" class="form-control">
                                        <option value="">不限</option>
                                        <option value="未分配"<c:if test="${status=='未分配'}">selected="selected"</c:if>>未分配</option>
                                        <option value="已分配"<c:if test="${status=='已分配'}">selected="selected"</c:if>>已分配</option>
                                    </select>
                                </div>
                                <input type="submit" value="查询" class="btn btn-success">
                            </form>
                        </div>
                    <div class="x_content">
                        <strong class="h3">客户资源列表</strong>
                        <a href="/crm/addCustomerResource" class="btn btn-primary" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>客户编码</th>
                                <th>客户姓名</th>
                                <th>性别</th>
                                <th>类型</th>
                                <th>客户状态</th>
                                <th>分配状态</th>
                                <th>手机号</th>
                                <th>录入时间</th>
                                <th>录入人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                         <c:forEach var="customerResource" items="${customerResourceList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${customerResource.customerCode}</td>
                                <td><c:out value="${customerResource.customerName}"/></td>
                                <td>${customerResource.sex}</td>
                                <td>${customerResource.type}</td>
                                <td>${customerResource.customerStatus}</td>
                                <td>${customerResource.allotStatus}</td>
                                <td><c:out value="${customerResource.phone}"/></td>
                                <td>${customerResource.creationTime}</td>
                                <td>${customerResource.createdBy}</td>
                                <td>
                                    <a href="/crm/updateCustomerResource/${customerResource.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/viewCustomerResource/${customerResource.id}" class="btn btn-success btn-xs">查看</a>
                                    <c:if test="${userSession.roleId==1 or userSession.roleId==2 or userSession.roleId==3}">
                                    <c:if test="${customerResource.allotStatus=='未分配'}">
                                        <a href="/crm/commitCustomerResource/${customerResource.id}" class="btn btn-success btn-xs">分配</a>
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
</body>
</html>
