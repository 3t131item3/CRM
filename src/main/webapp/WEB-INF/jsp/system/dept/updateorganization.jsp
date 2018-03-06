
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改组织结构</title>
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
    </style>
</head>
<body>
<div class="pace"></div>
<div class="right_col" role="main">
    <div class="main">
        <form action="" method="post">
            <div class="mydiv" style="position:relative;top: 80px;">
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">组织编码<font> *</font></span>
                    <input type="text" class="form-control" id="userName" placeholder="SL_ZJB" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">组织简称<font> *</font></span>
                    <input type="text" class="form-control"  placeholder="总经办" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">组织全称<font> *</font></span>
                    <input type="text" class="form-control"  placeholder="总经理办公室" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">角色名称 <font> *</font></span>
                    <input type="text" class="form-control" id="roleName" placeholder="请输入角色名称" required=""/>
                </div>
               <%-- <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">所属部门<font> *</font></span>
                    <select name="" class="form-control" >
                        <option value="">无</option>
                    </select>
                </div>--%>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">部门简介<font> *</font></span>
                    <textarea class="form-control" style="height: 100px" placeholder="总经理办公室负责公司重要政策和文件的制定和发布......" required=""></textarea>
                </div>

                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">备注信息<font> *</font></span>
                    <textarea class="form-control" style="height: 100px" required=""></textarea>
                </div>
                <div class="roles">
                    <input type="submit" value="保存" id="save" class="btn btn-primary btn-lg">
                    <a href="#" id="back" class="btn btn-primary btn-lg">返回</a>
                </div>
            </div>
        </form>
    </div>

</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>

