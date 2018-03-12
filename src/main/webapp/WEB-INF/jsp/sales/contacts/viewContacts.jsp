<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>联系人信息详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>销售管理&gt;&gt;联系人管理&gt;&gt;查看联系人详情</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content" style="font-size: 20px;">
                        <p><strong>联系人编码:</strong><span>${contacts.code}</span></p>
                        <p><strong>联系人姓名:</strong><span>${contacts.name}</span></p>
                        <p><strong>性别:</strong><span>${contacts.sex}</span></p>
                        <p><strong>生日:</strong><span>${contacts.birthday}</span></p>
                        <p><strong>手机:</strong><span>${contacts.phone}</span></p>
                        <p><strong>家庭电话:</strong><span>${contacts.addressPhone}</span></p>
                        <p><strong>联系地址:</strong><span>${contacts.address}</span></p>
                        <p><strong>备注信息:</strong><span>${contacts.remark}</span></p>
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
