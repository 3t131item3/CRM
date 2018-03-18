<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>修改资源管理</title>
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
                <h4>客户管理&gt;&gt;客户资源管理&gt;&gt;修改资源</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <form class="form-horizontal form-label-left" action="/crm/updateaddCustomerResourceSave" method="post">
                            <input name="id" value="${customerResource.id}" class="form-control col-md-7 col-xs-12"required="required" type="hidden">
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="customerCode">客户编码: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="customerCode" readonly  name="customerCode" value="${customerResource.customerCode}" class="form-control col-md-7 col-xs-12"maxlength="30" placeholder="请输入员工编码" required="required" type="text">
                                    <span id="msg" class=" col-md-5 col-xs-12"></span>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="customerName">客户姓名: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="customerName" name="customerName"value="${customerResource.customerName}"required="required"maxlength="30" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="genderM">性别: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="radio" id="genderM" name="sex" class="flat" value="男"  <c:if test="${customerResource.sex=='男'}">checked</c:if> > 男
                                    <input type="radio" id="genderF" name="sex" class="flat" value="女"  <c:if test="${customerResource.sex=='女'}">checked</c:if>> 女
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="creationTime">生日: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="creationTime" name="creationTime"value="${customerResource.creationTime}" onclick="WdatePicker();" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="type">类型: <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select id="type" name="type"  class="form-control">
                                        <option value="普通客户"<c:if test="${customerResource.type=='普通客户'}">selected="selected"</c:if>>普通客户</option>
                                        <option value="银卡客户"<c:if test="${customerResource.type=='银卡客户'}">selected="selected"</c:if>>银卡客户</option>
                                        <option value="金卡客户"<c:if test="${customerResource.type=='金卡客户'}">selected="selected"</c:if>>金卡客户</option>
                                        <option value="VIP客户"<c:if test="${customerResource.type=='VIP客户'}">selected="selected"</c:if>>VIP客户</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">状态 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" readonly name="status" id="status" value="${customerResource.status}" required="required" class="form-control col-md-7 col-xs-12" maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">手机:<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="phone" value="${customerResource.phone}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">办公电话</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="officePhone" value="${customerResource.officePhone}"required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">电子邮箱</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="email"  value="${customerResource.email}"required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">家庭电话</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="addressPhone"  value="${customerResource.addressPhone}"required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">联系地址</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="address" value="${customerResource.address}"required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">录入人</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input readonly type="text"  name="createdBy"value="${userSession.userName}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">备注信息</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea name="remark" maxlength="200" class="form-control col-md-7 col-xs-12" required>${customerResource.remark}</textarea>
                                    </div>
                                </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <button type="submit" class="btn btn-success">保存</button>
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
<script src="${pageContext.request.contextPath}/calendar/WdatePicker.js"></script>
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

