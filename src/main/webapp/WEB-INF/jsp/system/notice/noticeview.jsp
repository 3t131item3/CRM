<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>公告详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>系统管理&gt;&gt;公告管理&gt;&gt;公告详情</h4>
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

                        <p><strong>公告编码:</strong><span>${view.noticeCode}</span></p>
                        <p><strong>公告标题:</strong><span>${view.title}</span></p>
                        <p><strong>公告类型:</strong><span>${view.type}</span></p>
                        <p><strong>发布人:</strong><span>${view.issueBy}</span></p>
                        <p><strong>公告内容:</strong>${view.content}<span></span></p>

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
