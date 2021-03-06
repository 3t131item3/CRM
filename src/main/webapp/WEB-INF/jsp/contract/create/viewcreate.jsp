<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>查看合同详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>合同创建&gt;&gt;合详情同</h4>
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
                        <p><strong>合同名称:</strong><span>${contractCreate.contractName}</span></p>
                        <p><strong>合同类型:</strong><span>${contractCreate.contractType}</span></p>
                        <p><strong>合同金额:</strong><span>${contractCreate.contractMoney}元</span></p>
                        <p><strong>创建时间:</strong><span>${contractCreate.lastUpdateTime}</span></p>
                        <p><strong>待处理人:</strong><span>${contractCreate.nextHanlder}</span></p>
                        <p><strong>甲方:</strong><span>${contractCreate.firstParty}</span></p>
                        <p><strong>甲方企业经营许可证号:</strong><span>${contractCreate.firstBusinessNumber}</span></p>
                        <p><strong>乙方:</strong><span>${contractCreate.secondParty}</span></p>
                        <p><strong>乙方企业经营许可证号:</strong><span>${contractCreate.secondBusinessNumber}</span></p>
                        <p><strong>合同内容:</strong><span>${contractCreate.contractContent}</span></p>
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

