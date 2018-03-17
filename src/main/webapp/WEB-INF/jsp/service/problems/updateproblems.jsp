
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改常见问题</title>
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
                <h4>服务管理&gt;&gt;服务创建&gt;&gt;修改常见问题</h4>
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
                            <form action="/crm/updateProblemsSave" method="post" class="form-horizontal form-label-left" novalidate>
                                <input name="id" value="${problems.id}" type="hidden">
                                <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >问题标题  <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12"  name="problemsTitle" value="${problems.problemsTitle}"  required="required" type="text">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label  class="control-label col-md-3 col-sm-3 col-xs-12">问题类型 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="serviceType" class="form-control">
                                        <option value="投诉问题"<c:if test="${problems.serviceType=='投诉问题'}">selected="selected"</c:if>>投诉问题</option>
                                        <option value="售前问题"<c:if test="${problems.serviceType=='售前问题'}">selected="selected"</c:if>>售前问题</option>
                                        <option value="售后问题"<c:if test="${problems.serviceType=='售后问题'}">selected="selected"</c:if>>售后问题</option>
                                        <option value="咨询问题"<c:if test="${problems.serviceType=='咨询问题'}">selected="selected"</c:if>>咨询问题</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >答复要点 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="responseContent" value="${problems.responseContent}" class="form-control col-md-7 col-xs-12"  required placeholder="1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；"></textarea>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >备注信息
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="remark" class="form-control col-md-7 col-xs-12">${problems.remark}</textarea>
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


