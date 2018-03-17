<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>销售绩效</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;销售绩效</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">姓名:</strong>
                                <input type="text" placeholder="Search"  class="form-control input-md roleName">
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">销售绩效信息列表</strong>
                        <a href="/crm/addresult" class="btn btn-success" style="float:right">添加</a>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>姓名</th>
                                <th>部门</th>
                                <th>绩效等级</th>
                                <th>最后修改时间</th>
                                <th>操作人</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${achievementList}" var="achievement" varStatus="varStatus">
                            <tr>
                                <td>${varStatus.count}</td>
                                <td>${achievement.user.userName}</td>
                                <td>${achievement.dept.name}</td>
                                <td><c:out value="${achievement.grade}" escapeXml="true"/></td>
                                <td>${achievement.lastUpdateTime}</td>
                                <td>${achievement.createdBy}</td>
                                <td>
                                    <a href="/crm/updateresult/${achievement.id}" class="btn btn-warning btn-xs">修改</a>
                                    <a href="/crm/viewresult/${achievement.id}" class="btn btn-success btn-xs">查看</a>
                                    <a href="javascript:;" class="btn btn-danger btn-xs deleteUser" achievementId=${achievement.id} userName=${achievement.user.userName}>删除</a>
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
<script src="${pageContext.request.contextPath}/js/pages.js"></script>
<script src="${pageContext.request.contextPath}/js/achievementlist.js"></script>
</body>
</html>
