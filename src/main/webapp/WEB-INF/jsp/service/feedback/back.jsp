<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>反馈</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务反馈</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <form action="/crm/updateServiceBackSave" method="post">
                        <div class="x_content" style="font-size: 20px;">
                            <input type="hidden" name="id" value="${serviceBack.id}"/>
                            <p><strong>服务名称:</strong><span>${serviceBack.serviceName}</span></p>
                            <p><strong>服务类型:</strong><span>${serviceBack.serviceType}</span></p>
                            <p><strong>服务状态:</strong><span>${serviceBack.serviceStatus}</span></p>
                            <p><strong>创建人:</strong><span>${serviceBack.createdBy}</span></p>
                            <p><strong>创建时间:</strong><span>${serviceBack.createTime}</span></p>
                            <p><strong>待处理人:</strong><span>${serviceBack.nextHanlder}</span></p>
                            <p><strong>服务内容:</strong><span>${serviceBack.serviceConcent}</span></p>
                        </div>
                        操作
                        <div class="x_content">
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">反馈结果 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <select name="backResult"  class="form-control">
                                    <option value="已反馈"<c:if test="${serviceBack.backResult=='已反馈'}">selected="selected"</c:if>>已反馈</option>
                                    <option value="未反馈"<c:if test="${serviceBack.backResult=='未反馈'}">selected="selected"</c:if>>未反馈</option>
                                </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label">反馈说明 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <textarea name="backRemark" vocab="${serviceBack.backRemark}" class="form-control col-md-7 col-xs-12" required placeholder="已向客户反馈"></textarea>
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
