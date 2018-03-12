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
                    <%--<div class="x_title">
                        <form action="/crm/searchByName" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <select name="" >
                                    <option value="">客户姓名</option>
                                </select>
                                <input type="text" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">分配状态:</strong>
                                <select name="" >
                                    <option value="">不限</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">
                        </form>
                    </div>--%>
                        <div class="x_title">
                            <form action="/crm/searchCustomerResourceByName" method="post" class="navbar-form navbar" >
                                <div class="form-group f-group">
                                    <strong class="h4">客户姓名:</strong>
                                    <input type="text" value="${customerName}"  name="customerName" placeholder="Search" class="form-control input-md roleName">
                                </div>
                                <input type="submit" value="查询" class="btn btn-success">
                            </form>
                        </div>
                    <div class="x_content">
                        <strong class="h3">客户资源列表</strong>
                        <a href="/crm/addCustomerResource" class="btn btn-primary" style="margin-left: 900px">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>客户姓名</th>
                                <th>性别</th>
                                <th>类型</th>
                                <th>状态</th>
                                <th>录入时间</th>
                                <th>录入人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                         <c:forEach var="customerResource" items="${customerResourceList}" varStatus="status">
                            <tr>
                                <td>${customerResource.customerName}</td>
                                <td>${customerResource.sex}</td>
                                <td>${customerResource.type}</td>
                                <td>${customerResource.status}</td>
                                <td>${customerResource.creationTime}</td>
                                <td>${customerResource.createdBy}</td>
                                <td>
                                    <a href="/crm/updateCustomerResource/${customerResource.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/viewCustomerResource/${customerResource.id}" class="btn btn-success btn-xs">查看</a>
                                  <%--  <a href="#" class="btn btn-success btn-xs">分配</a>--%>
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
</body>
</html>
