<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>查看服务反馈</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务创建&gt;&gt;查看反馈详情</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content" style="font-size: 20px;">
                        <p><strong>服务名称:</strong><span>${serviceBack.serviceName}</span></p>
                        <p><strong>服务类型:</strong><span>${serviceBack.serviceType}</span></p>
                        <p><strong>服务状态:</strong><span>${serviceBack.serviceStatus}</span></p>
                        <p><strong>创建人:</strong><span>${serviceBack.createdBy}</span></p>
                        <p><strong>创建时间:</strong><span>${serviceBack.createTime}</span></p>
                        <p><strong>待处理人:</strong><span>${serviceBack.nextHanlder}</span></p>
                        <p><strong>服务内容:</strong><span>${serviceBack.serviceConcent}</span></p>
                        <c:if test="${serviceBack.serviceStatus=='已反馈'}">
                        <p><strong>反馈说明:</strong><span>${serviceBack.backRemark}</span></p>
                        </c:if>
                    </div>
                    <div>
                        <a href="javascript:history.back(-1)" class="btn btn-primary btn-lg">返回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>
