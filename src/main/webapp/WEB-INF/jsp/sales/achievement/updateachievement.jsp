<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>修改销售绩效</title>
    <style>
        form span{
            color:red;
        }
        #msg{
            position: absolute;
            bottom: 6px;
            border:none;
        }
    </style>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>销售管理&gt;&gt;销售绩效&gt;&gt;修改销售绩效</h4>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">

                        <form class="form-horizontal form-label-left" action="/crm/modifyachievement" method="post" novalidate>

                            <input type="hidden" name="id" value="${achievement.id}"/>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">员工姓名 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select  name="user.id" class="form-control">
                                        <c:forEach items="${userList}" var="user">
                                        <option  value="${user.id}" <c:if test="${achievement.user.id==user.id}">selected="selected"</c:if>>${user.userName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">绩效等级 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="number" name="grade" value="${achievement.grade}" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">所属部门</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <%--<input type="text" value="${achievement.dept.id}"/>--%>
                                    <select name="dept.id" class="form-control">
                                        <c:forEach items="${deptList}" var="dept">
                                        <option <c:if test="${achievement.dept.id==dept.id}">selected="selected"</c:if> value="${dept.id}">${dept.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                           

                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <button id="send" type="submit" class="btn btn-success">保存</button>
                                    <a herf="#" class="btn btn-primary" onclick="history.back(-1)">返回</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/js/addemp.js"></script>


</body>
</html>

