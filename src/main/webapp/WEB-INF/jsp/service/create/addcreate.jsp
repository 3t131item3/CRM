
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加服务</title>
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
                <h4>服务管理&gt;&gt;服务创建&gt;&gt;添加服务</h4>
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
                            <form action="/crm/addServiceCreateSave" method="post" class="form-horizontal form-label-left" novalidate>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" >创建人 <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text"  name="createdBy"  required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务名称  <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12"  name="serviceName"  required="required" type="text">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务客户 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="customerName"  required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >联系电话 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="tel" required name="customerPhone" class="form-control col-md-7 col-xs-12" />
                                </div>
                            </div>
                            <div class="item form-group">
                                <label  class="control-label col-md-3 col-sm-3 col-xs-12">服务类型 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="serviceType" id="serviceType"class="form-control">
                                        <option value="投诉服务">投诉服务</option>
                                        <option value="售前服务">售前服务</option>
                                        <option value="售后服务">售后服务</option>
                                        <option value="咨询服务">咨询服务</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务内容 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="serviceConcent" class="form-control col-md-7 col-xs-12"  required ></textarea>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >备注信息 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="remark" class="form-control col-md-7 col-xs-12" required></textarea>
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

