<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>计划信息详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>销售管理&gt;&gt;销售计划&gt;&gt;查看计划</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content" style="font-size: 20px;">

                        <p><strong>计划编码:</strong><span></span></p>
                        <p><strong>计划人姓名:</strong><span></span></p>
                        <p><strong>计划状态:</strong><span></span></p>
                        <p><strong>计划月份:</strong><span></span></p>
                        <p><strong>所属部门:</strong><span></span></p>
                        <p><strong>计划内容:</strong><span></span></p>

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
