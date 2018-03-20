<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>处理</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务处理</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <form action="/crm/checkPlanSave" method="post">
                        <input type="hidden" name="id" value="${plan.id}"/>
                        <div class="x_content" style="font-size: 20px;">
                            <p><strong>计划编码:</strong><span>${plan.code}</span></p>
                            <p><strong>计划人姓名:</strong><span>${plan.userName}</span></p>
                            <p><strong>计划月份:</strong><span>${plan.month}</span></p>
                            <p><strong>计划内容:</strong><span>${plan.planContent}</span></p>
                        </div>
                        <div class="x_content">
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">审核结果 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <select name="status"  class="form-control">
                                    <option value="同意">同意</option>
                                    <option value="打回">打回</option>
                                </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label">处理说明 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <textarea name="disposeRemark" maxlength="200"class="form-control col-md-7 col-xs-12" required placeholder=""></textarea>
                            </div>
                        </div>
                        <div>
                            <input type="submit" value="保存" class="btn btn-default btn-lg">
                            <a href="javascript:history.back(-1)" class="btn btn-primary btn-lg">返回</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>

