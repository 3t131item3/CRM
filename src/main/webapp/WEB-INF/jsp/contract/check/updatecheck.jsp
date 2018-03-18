<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>合同审核</title>
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
                <h4>合同创建&gt;&gt;修改合同</h4>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <form class="form-horizontal form-label-left" action="/crm/updateContractExamineSave" method="post">
                            <input  name="id" value="${contractExamine.id}" class="form-control col-md-7 col-xs-12" placeholder="请输入员工编码" required="required" type="hidden">
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractName">合同名称：<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="contractName"  name="contractName" value="${contractExamine.contractName}" readonly class="form-control col-md-7 col-xs-12" placeholder="请输入员工编码" required="required" type="text"maxlength="30">
                                    <span id="msg" class=" col-md-5 col-xs-12"></span>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractType">合同类型： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="contractType" readonly id="contractType"class="form-control">
                                        <option value="销售合同"<c:if test="${contractExamine.contractType=='销售合同'}">selected="selected"</c:if>>销售合同</option>
                                        <option value="委托合同"<c:if test="${contractExamine.contractType=='委托合同'}">selected="selected"</c:if>>委托合同</option>
                                        <option value="技术合同"<c:if test="${contractExamine.contractType=='技术合同'}">selected="selected"</c:if>>技术合同</option>
                                        <option value="运输合同"<c:if test="${contractExamine.contractType=='运输合同'}">selected="selected"</c:if>>运输合同</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractMoney">合同金额： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="contractMoney" name="contractMoney"value="${contractExamine.contractMoney}"readonly required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstParty">甲方： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="firstParty" name="firstParty"value="${contractExamine.firstParty}" readonly required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondParty">乙方： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="secondParty" name="secondParty"value="${contractExamine.secondParty}"readonly required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstBusinessNumber">甲方企业经营许可证号： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="firstBusinessNumber" name="firstBusinessNumber "readonly value="${contractExamine.firstBusinessNumber}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondBusinessNumber">乙方企业经营许可证号：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="secondBusinessNumber"  name="secondBusinessNumber" readonly value="${contractExamine.secondBusinessNumber}" required="required" class="form-control col-md-7 col-xs-12"maxlength="30">
                                </div>
                            </div>
                            <%--创建人默认当前session的名字--%>
                            <input type="hidden" name="createdBy" value="${userSession.userName}"/>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="creationTime">创建时间：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="creationTime"  name="creationTime" readonly value="${contractExamine.creationTime}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nextHanlder">待处理人：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="nextHanlder"  name="nextHanlder" readonly value="${contractExamine.nextHanlder}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractContent">合同内容：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea class="form-control col-md-7 col-xs-12"maxlength="200" name="contractContent"id="contractContent" readonly style="height: 100px" required="">${contractExamine.contractContent}</textarea>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"for="examine">审批意见：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea class="form-control col-md-7 col-xs-12" maxlength="200"name="examine"id="examine" style="height: 100px" required="">${contractExamine.examine}</textarea>
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

