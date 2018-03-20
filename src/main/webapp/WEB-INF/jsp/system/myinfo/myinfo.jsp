<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>个人信息</title>
    <style>
        ul,li{
            list-style: none;
        }
        .left{
            float:left;
            width:600px;
        }
        .myinfo{
            font-size:20px;
        }
        .myinfo li{
            line-height: 36px;
        }
    </style>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>系统管理<small>&gt;&gt;个人信息</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content" style="font-size: 20px;">
                            <div class="myinfo">
                                <ul class="left">
                                    <li>员工姓名: <span>${user.userName}</span></li>
                                    <li>所在部门:<span>${user.dept.name}</span></li>
                                    <li>系统角色:<span>${user.role.roleName}</span></li>
                                    <li>登录ID:<span>${user.id}</span></li>
                                </ul>
                                <ul class="right">
                                    <li>员工编号:<span>${user.userCode}</span></li>
                                    <li>创建时间:<span>${user.creationTime}</span></li>
                                    <li>
                                        <form action="/crm/modifyMyInfoPhone" method="post">
                                            <input type="hidden" name="id" value="${user.id}"/>
                                            联系电话: <input class="telephone" id="phone" name="phone" value="${user.phone}" type="text">
                                            <span id="msg" class="col-md-3 col-xs-3"></span>
                                            <button type="submit" class="modify">修改</button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                    </div>
                    <div>
                        <a href="/crm/welcome" class="btn btn-info btn-lg" style="margin-left: 40px">返回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/js/updatepwd.js"></script>
<script src="${pageContext.request.contextPath}/js/validator.js"></script>

<!-- validator -->
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
        var submit=true
        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
            submit = false;
        }

        if (submit && $("#phone").attr("validateStatus")=="true")
            this.submit();

        return false;
    });
</script>
<!-- /validator -->


</body>
</html>
