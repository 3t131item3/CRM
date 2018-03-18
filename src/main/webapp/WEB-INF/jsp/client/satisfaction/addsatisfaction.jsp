
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>客户满意度管理</title>
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
                <h4>客户满意度管理&gt;&gt;新增满意度</h4>
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
                        <form action="/crm/addCustomerSatisfactionSave" method="post" class="form-horizontal form-label-left" novalidate>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >客户姓名:<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="customerName" value="${customerSatisfaction.customerName}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="genderM">性别: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="radio" id="genderM" name="sex" class="flat" value="男" checked  > 男
                                    <input type="radio" id="genderF" name="sex" class="flat" value="女"> 女
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >客户类型: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="type" id="type"class="form-control">
                                        <option value="普通客户"<c:if test="${customerSatisfaction.type=='普通客户'}">selected="selected"</c:if>>普通客户</option>
                                        <option value="小客户"<c:if test="${customerSatisfaction.type=='小客户'}">selected="selected"</c:if>>小客户</option>
                                        <option value="大客户"<c:if test="${customerSatisfaction.type=='大客户'}">selected="selected"</c:if>>大客户</option>
                                        <option value="VIP客户"<c:if test="${customerSatisfaction.type=='VIP客户'}">selected="selected"</c:if>>VIP客户</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label  class="control-label col-md-3 col-sm-3 col-xs-12">客户状态 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="status" id="status"class="form-control">
                                        <option value="正常">正常</option>
                                        <option value="已流失">已流失</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >质量满意度: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="quality" value="${customerSatisfaction.quality}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务满意度: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="service" value="${customerSatisfaction.service}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >性价比满意度: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="cost" value="${customerSatisfaction.cost}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >总体满意度: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="all" value="${customerSatisfaction.all}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >客户反馈:
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="voltar" class="form-control col-md-7 col-xs-12" maxlength="200">${customerSatisfaction.voltar}</textarea>
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
<script src="${pageContext.request.contextPath}/js/validator.js"></script>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/js/addemp.js"></script>
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
    /*$('form').submit(function(e) {
        e.preventDefault();
        var submit=true
        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
            submit = false;
        }
        if (submit==true && $("#userCode").attr("validateStatus")=="true")
            this.submit();
        return false;
    });*/
</script>
<!-- /validator -->


</body>
</html>
