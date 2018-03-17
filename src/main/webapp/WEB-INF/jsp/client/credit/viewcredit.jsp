<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>客户信誉详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>客户管理&gt;&gt;客户信誉管理&gt;&gt;信誉详情</h4>
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
                        <p><strong>客户姓名:</strong><span>${customerReputation.customerName}</span></p>
                        <p><strong>客户性別:</strong><span>${customerReputation.sex}</span></p>
                        <p><strong>客户类型:</strong><span>${customerReputation.type}</span></p>
                        <p><strong>已消费次数:</strong><span>${customerReputation.number}</span></p>
                        <p><strong>信誉等级:</strong><span>${customerReputation.grade}</span></p>
                        <p><strong>消费历史清单:</strong><span>此处省略一亿个字....</span></p>
                        <p><strong>付款信誉记录:</strong><span>此处省略两亿个字....</span></p>
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
