
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改组织结构</title>
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
                <h4>系统管理&gt;&gt;组织结构&gt;&gt;修改组织结构</h4>
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

                        <form action="/crm/modifyDeptSave" method="post" class="form-horizontal form-label-left" novalidate>
                            <div class="item form-group">
                                <input type="hidden" name="id"value="${dept.id}"/>
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >组织编码 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="userCode" class="form-control col-md-7 col-xs-12" readonly value="${dept.deptCode}"  name="deptCode"  required="required" type="text">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >组织全称 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="name" maxlength="30" value="${dept.name}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <input type="hidden" name="operator" value="${userSession.userName}" class="form-control col-md-7 col-xs-12" />
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" placeholder="">部门简介 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="intro"maxlength="100" class="form-control col-md-7 col-xs-12" required>${dept.intro}</textarea>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >备注信息
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="remark" maxlength="200" class="form-control col-md-7 col-xs-12" required>${dept.remark}</textarea>
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
</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
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


