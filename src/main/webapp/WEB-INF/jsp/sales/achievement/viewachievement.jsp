<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>绩效信息详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>销售管理&gt;&gt;销售绩效&gt;&gt;销售绩效详情</h4>
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

                        <p><strong>绩效编码:</strong><span>${achievement.resultCode}</span></p>
                        <p><strong>员工姓名:</strong><span>${achievement.user.userName}</span></p>
                        <p><strong>所属部门:</strong><span>${achievement.dept.name}</span></p>
                        <p><strong>绩效等级:</strong><span>${achievement.grade}</span></p>
                        <p><strong>备注信息:</strong><span>${achievement.remark}</span></p>
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
