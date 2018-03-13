<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <title>处理</title>
</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h4>服务管理&gt;&gt;服务处理</h4>
            </div>


        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <form action="" method="post">
                        <div class="x_content" style="font-size: 20px;">

                            <p><strong>服务名称:</strong><span></span></p>
                            <p><strong>服务状态:</strong><span></span></p>
                            <p><strong>创建人:</strong><span></span></p>
                            <p><strong>服务类型:</strong><span></span></p>
                            <p><strong>创建时间:</strong><span></span></p>
                            <p><strong>待处理人:</strong><span></span></p>
                            <p><strong>服务内容:</strong><span></span></p>

                        </div>
                        操作
                        <div class="x_content">
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">处理结果 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <select name=""  class="form-control">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label">处理说明 <span class="required"></span></label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <textarea name="" class="form-control col-md-7 col-xs-12" required placeholder="已联系售后人员准备上门安装，去之前会再次联系客户"></textarea>
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
</body>
</html>
