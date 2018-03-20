<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>客户资源分配</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>客户管理&gt;&gt;客户资源分配</h4>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <form action="/crm/commitCustomerResourceSave" method="post">
                        <input type="hidden" name="id"value="${customerResource.id}"/>
                        <input type="hidden" name="chance.id"value="${customerResource.chance.id}"/>
                        <div class="x_content" style="font-size: 20px;">
                            <p><strong>机会名称:</strong><span>${customerResource.chance.chanceName}</span></p>
                            <p><strong>机会类型:</strong><span>${customerResource.chance.chanceType}</span></p>
                            <p><strong>机会来源:</strong><span>${customerResource.chance.chanceSource}</span></p>
                            <p><strong>创建人:</strong><span>${customerResource.chance.createdBy}</span></p>
                            <p><strong>创建时间:</strong><span>${customerResource.chance.creationTime}</span></p>
                            <p><strong>机会内容:</strong><span>${customerResource.chance.chanceContent}</span></p>
                        </div>
                        <div class="x_content">
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"><strong>分配给</strong> <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <select name="chance.allotUserName" id="user"  class="form-control">
                                </select>
                            </div>
                        </div>
                        <div>
                            <input type="submit" value="分配" class="btn btn-default btn-lg">
                            <a href="javascript:history.back(-1)" class="btn btn-primary btn-lg">返回</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/addallot.js"></script>
