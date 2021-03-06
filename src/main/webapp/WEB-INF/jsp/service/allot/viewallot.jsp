<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>查看服务分配</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务分配&gt;&gt;查看详情</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content" style="font-size: 20px;">
                        <p><strong>服务名称:</strong><span>${serviceAllot.serviceName}</span></p>
                        <p><strong>创建人:</strong><span>${serviceAllot.createdBy}</span></p>
                        <p><strong>服务类型:</strong><span>${serviceAllot.serviceType}</span></p>
                        <p><strong>创建时间:</strong><span>${serviceAllot.lastUpdateTime}</span></p>
                        <p><strong>待处理人:</strong><span>${serviceAllot.nextHanlder}</span></p>
                        <p><strong>服务状态:</strong><span>${serviceAllot.serviceStatus}</span></p>
                        <p><strong>服务内容:</strong><span>${serviceAllot.serviceConcent}</span></p>
                        <p><strong>分配给:</strong><span>${serviceAllot.nextAllot}</span></p>
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
