<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>角色添加</title>
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
        <form action="/crm/addRoleSave" method="post">
            <div class="mydiv" style="position:relative;top: 80px;">
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">角色编码<font> *</font></span>
                    <input type="text" class="form-control" name="roleCode" id="userName" placeholder="请输入角色编码" required=""/>
                </div>

                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">角色名称 <font> *</font></span>
                    <input type="text" class="form-control" name="roleName" id="roleName" placeholder="请输入角色名称" required=""/>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">所属部门<font> *</font></span>
                    <select name="dept.id" class="form-control" >
                        <c:forEach items="${deptList}" var="dept">
                            <option value="${dept.id}">${dept.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="input-group input-group-lg roles">
                    <span class="input-group-addon">备注信息<font> *</font></span>
                    <textarea class="form-control" name="remark" style="height: 100px" required=""></textarea>
                </div>
                <div class="roles">
                    <input type="submit" value="保存" id="save" class="btn btn-primary btn-lg">
                    <a href="#" onclick="history.back(-1)"id="back" class="btn btn-primary btn-lg">返回</a>
                </div>
            </div>
        </form>
    </div>

</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>
