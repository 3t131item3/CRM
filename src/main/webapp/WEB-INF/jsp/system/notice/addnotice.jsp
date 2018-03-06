<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/green.css">
<html>
<head>
    <meta charset="UTF-8">
    <title>添加公告信息</title>
    <style>
        .main{
            width:50%;
            margin:0 auto;

        }
        font{
            color:red;
        }

        #back{
            float:right;
            margin-right:40px;
            margin-top:10px;
        }
        #save{
            margin-left:40px;
            margin-top:10px;
        }
        .roles:nth-child(3){
            width:70%;
        }
        .roles:nth-child(1){
            position:relative;
        }

        #msg{
            position: absolute;
            display: inherit;
            left: 102%;
            bottom: 12px;
            font-size: 16px;
        }
        .radio{
            width: 120px;
            border: 1px solid #ccc;
            height: 42px;
            display: inline-block;
            text-align: center;
            line-height: 42px;
            font-size: 20px;
            color: #000;
            font-weight: 100;
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
            background: #eee;
        }
        .aaa{
            position: absolute;
            left: 140px;
            bottom: 20px;
        }
    </style>
</head>
<body>
<div class="pace"></div>
<div class="right_col" role="main">
    <div class="main">
        <form action="/crm/addNoticeSave" method="post">
            <div class="mydiv" style="position:relative;top: 80px;">
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">公告编码<font> *</font></span>
                    <input type="text" class="form-control" name="noticeCode" id="userCode" placeholder="请输入编码" required=""/>
                    <span id="msg"></span>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">公告标题<font> *</font></span>
                    <input type="text" class="form-control" name="title"  placeholder="请输入标题" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                        <span class="radio">公告类型:</span>
                    <select name="type" class="form-control" >
                        <c:forEach items="${list}" var="notice">
                            <option value="${notice.id}">${notice.type}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="input-group input-group-lg roles">

                        <span class="radio">发布人:</span>
                    <input type="text" class="form-control" name="issueBy"  placeholder="请输入发布人姓名" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">发布内容<font> *</font></span>
                    <input type="text" class="form-control" name="content"  placeholder="请输入发布内容" required=""/>
                </div>
                <%--<div class="input-group input-group-lg roles">--%>
                    <%--<span class="input-group-addon">备注信息<font> *</font></span>--%>
                    <%--<textarea class="form-control" style="height: 100px" required=""></textarea>--%>
                <%--</div>--%>
                <div class="roles">
                    <input type="submit" value="保存" id="save" class="btn btn-primary btn-lg">
                    <a href="#" id="back" class="btn btn-primary btn-lg">返回</a>
                </div>
            </div>
        </form>
    </div>

</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/js/addemp.js"></script>
</body>
</html>

