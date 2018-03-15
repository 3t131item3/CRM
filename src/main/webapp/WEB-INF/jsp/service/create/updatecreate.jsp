
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改服务</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务创建&gt;&gt;修改服务</h4>
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
                            <form action="/crm/updateServiceCreateSave" method="post" class="form-horizontal form-label-left" novalidate>
                                <input  class="form-control col-md-7 col-xs-12"  name="id"value="${serviceCreate.id}"  required="required" type="hidden">
                                <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务名称  <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input  class="form-control col-md-7 col-xs-12"  name="serviceName"value="${serviceCreate.serviceName}"  required="required" type="text">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务客户 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"  name="customerName" value="${serviceCreate.customerName}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >联系电话 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="tel" name="customerPhone" value="${serviceCreate.customerPhone}" class="form-control col-md-7 col-xs-12" />
                                </div>
                            </div>
                            <div class="item form-group">
                                <label  class="control-label col-md-3 col-sm-3 col-xs-12">服务类型 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="serviceType" id="serviceType"class="form-control">
                                        <option value="投诉服务"<c:if test="${serviceCreate.serviceType=='投诉服务'}">selected="selected"</c:if>>投诉服务</option>
                                        <option value="售前服务"<c:if test="${serviceCreate.serviceType=='售前服务'}">selected="selected"</c:if>>售前服务</option>
                                        <option value="售后服务"<c:if test="${serviceCreate.serviceType=='售后服务'}">selected="selected"</c:if>>售后服务</option>
                                        <option value="咨询服务"<c:if test="${serviceCreate.serviceType=='咨询服务'}">selected="selected"</c:if>>咨询服务</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >服务内容 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="serviceConcent" value="${serviceCreate.serviceConcent}" class="form-control col-md-7 col-xs-12"  required placeholder="四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。"></textarea>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" >备注信息 <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="remark" value="${serviceCreate.remark}"class="form-control col-md-7 col-xs-12" required></textarea>
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
</body>
</html>

