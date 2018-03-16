<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>修改员工信息</title>
    <style>
        form span{
            color:red;
        }
    </style>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>系统管理&gt;&gt;员工管理&gt;&gt;修改员工信息</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content">

                        <form action="/crm/modifyemp" class="form-horizontal form-label-left" method="post" novalidate>



                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userCode">员工编码 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="userCode" class="form-control col-md-7 col-xs-12" value="${user.userCode}" name="userCode" readonly required="required" type="text">
                                    <input  class="form-control col-md-7 col-xs-12" value="${user.id}" name="id"  required="required" type="hidden">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userName">员工姓名 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="userName" name="userName" value="${user.userName}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="genderM">性别 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="radio" id="genderM" name="gender" class="flat" value="0"  <c:if test="${user.gender==0}">checked</c:if> > 男
                                    <input type="radio" id="genderF" name="gender" class="flat" value="1"  <c:if test="${user.gender==1}">checked</c:if>> 女
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">所属部门</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="deptId" class="form-control">
                                        <c:forEach items="${deptlist}" var="dept">
                                        <option <c:if test="${dept.id==user.deptId}">selected="selected"</c:if> value="${dept.id}">${dept.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">身份角色</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="roleId" class="form-control">
                                        <c:forEach items="${rolelist}" var="role">
                                            <option <c:if test="${role.id==user.roleId}">selected="selected"</c:if>  value="${role.id}">${role.roleName}</option>
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
<script src="${pageContext.request.contextPath}/js/validator.js"></script>
<script>
    // initialize the validator function
    validator.message.date = 'not a real date';

    // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
    $('form')
        .on('blur', 'input[required], input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern]', validator.keypress);

    $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
    });

    $('form').submit(function(e) {
        e.preventDefault();
        var submit = true;

        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
            submit = false;
        }

        if (submit)
            this.submit();

        return false;
    });
</script>
</body>
</html>

