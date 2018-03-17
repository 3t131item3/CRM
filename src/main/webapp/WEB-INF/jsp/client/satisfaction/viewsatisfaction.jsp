<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>客户满意度详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>客户管理&gt;&gt;客户满意度管理&gt;&gt;满意度详情</h4>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content" style="font-size: 20px;">
                        <p><strong>客户编码:</strong><span>${customerSatisfaction.customerCode}</span></p>
                        <p><strong>客户姓名:</strong><span>${customerSatisfaction.customerName}</span></p>
                        <p><strong>性别:</strong><span>${customerSatisfaction.sex}</span></p>
                        <p><strong>客户类型:</strong><span>${customerSatisfaction.type}</span></p>
                        <p><strong>客户状态:</strong><span>${customerSatisfaction.status}</span></p>
                        <%--<p><strong>消费次数:</strong><span>${customerSatisfaction.number}次</span></p>--%>
                        <p><strong>质量满意度:</strong><span>${customerSatisfaction.quality}</span></p>
                        <p><strong>服务满意度:</strong><span>${customerSatisfaction.service}</span></p>
                        <p><strong>性价比满意度:</strong><span>${customerSatisfaction.cost}</span></p>
                        <p><strong>总体满意度:</strong><span>${customerSatisfaction.all}</span></p>
                        <p><strong>客户反馈:</strong><span>${customerSatisfaction.voltar}</span></p>
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
