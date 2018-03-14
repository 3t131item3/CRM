<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>合同管理</title>
    <style>
        form span{
            color:red;
        }
        #msg{
            position: absolute;
            bottom: 6px;
            border:none;
        }
    </style>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>合同创建&gt;&gt;修改合同--变更合同</h4>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <form class="form-horizontal form-label-left" action="/crm/updateChangemanageSave" method="post">
                            <input  name="id" value="${contractManage.id}" class="form-control col-md-7 col-xs-12" placeholder="请输入员工编码" required="required" type="hidden">
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractName">合同名称：<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="contractName"  name="contractName" value="${contractManage.contractName}" readonly class="form-control col-md-7 col-xs-12" placeholder="请输入员工编码" required="required" type="text">
                                    <span id="msg" class=" col-md-5 col-xs-12"></span>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractType">合同类型： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="contractType" readonly id="contractType"class="form-control">
                                        <option value="销售合同"<c:if test="${contractManage.contractType=='销售合同'}">selected="selected"</c:if>>销售合同</option>
                                        <option value="委托合同"<c:if test="${contractManage.contractType=='委托合同'}">selected="selected"</c:if>>委托合同</option>
                                        <option value="技术合同"<c:if test="${contractManage.contractType=='技术合同'}">selected="selected"</c:if>>技术合同</option>
                                        <option value="运输合同"<c:if test="${contractManage.contractType=='运输合同'}">selected="selected"</c:if>>运输合同</option>
                                    </select>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractMoney">合同金额： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="contractMoney" name="contractMoney"value="${contractManage.contractMoney}"readonly required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstParty">甲方： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="firstParty" name="firstParty"value="${contractManage.firstParty}" readonly required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondParty">乙方： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="secondParty" name="secondParty"value="${contractManage.secondParty}"readonly required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstBusinessNumber">甲方企业经营许可证号： <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="firstBusinessNumber" name="firstBusinessNumber "readonly value="${contractManage.firstBusinessNumber}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondBusinessNumber">乙方企业经营许可证号：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="secondBusinessNumber"  name="secondBusinessNumber" readonly value="${contractManage.secondBusinessNumber}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="createdBy">创建人：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="createdBy"  name="createdBy" readonly value="${contractManage.createdBy}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="creationTime">创建时间：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="creationTime"  name="creationTime" readonly value="${contractManage.creationTime}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nextHanlder">待处理人：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text"id="nextHanlder"  name="nextHanlder" readonly value="${contractManage.nextHanlder}" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractContent">合同内容：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea class="form-control col-md-7 col-xs-12" name="contractContent"id="contractContent" readonly style="height: 100px" required="">${contractManage.contractContent}</textarea>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"for="cause">变更操作：</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea class="form-control col-md-7 col-xs-12" name="cause"id="cause" style="height: 100px" required="">${contractManage.cause}</textarea>
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <button type="submit" class="btn btn-success">保存</button>
                                    <a herf="#" class="btn btn-primary" onclick="history.back(-1)">返回</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>


