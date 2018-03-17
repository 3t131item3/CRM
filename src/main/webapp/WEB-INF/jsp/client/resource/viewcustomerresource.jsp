<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>查看客户资源详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>客户管理&gt;&gt;客户资源管理&gt;&gt;资源详情</h4>
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
                        <p><strong>客户编码:</strong><span>${customerResource.customerCode}</span></p>
                        <p><strong>客户姓名:</strong><span>${customerResource.customerName}</span></p>
                        <p><strong>性别:</strong><span>${customerResource.sex}</span></p>
                        <p><strong>生日:</strong><span>${customerResource.creationTime}</span></p>
                        <p><strong>类型:</strong><span>${customerResource.type}</span></p>
                        <p><strong>状态:</strong><span>${customerResource.status}</span></p>
                        <p><strong>手机:</strong><span>${customerResource.phone}</span></p>
                        <p><strong>办公电话:</strong><span>${customerResource.officePhone}</span></p>
                        <p><strong>电子邮箱:</strong><span>${customerResource.email}</span></p>
                        <p><strong>家庭电话:</strong><span>${customerResource.addressPhone}</span></p>
                        <p><strong>联系地址:</strong><span>${customerResource.address}</span></p>
                        <p><strong>备注信息:</strong><span>${customerResource.remark}</span></p>
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

