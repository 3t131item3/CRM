<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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
                <h3>Form Validation</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Go!</button>
                          </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Form validation <small>sub title</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
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
</body>
</html>
