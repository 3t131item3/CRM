<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>查看常见问题详情</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务创建&gt;&gt;查看常见问题详情</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">

                    <div class="x_content" style="font-size: 20px;">
                        <p><strong>问题标题:</strong><span></span></p>
                        <p><strong>问题类型:</strong><span></span></p>
                        <p><strong>答复要点:</strong><span></span></p>
                        <p><strong>创建人:</strong><span></span></p>
                        <p><strong>最后操作时间:</strong><span></span></p>
                        <p><strong>最后更新时间:</strong><span></span></p>
                        <p><strong>备注信息:</strong><span></span></p>

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
