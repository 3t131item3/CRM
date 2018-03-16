
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>角色删除</title>
    <style>
        .main{
            width:50%;
            margin:0 auto;
        }
        font{
            color:red;
        }
        form span{
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
    <form action="/crm/modifySave" class="form-horizontal form-label-left"  method="post">
        <input type="hidden" name="id"value="${role.id}"/>
        <div class="mydiv" style="position:relative;top: 80px;">
            <div class="item form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="roleName">角色名称 <span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="text"  class="form-control col-md-7 col-xs-12" name="roleName" value="${role.roleName}" id="roleName" placeholder="请输入角色名称" required=""/>
                </div>
            </div>
            <div class="item form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userPassword">所属部门 <span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <select name="dept.id" class="form-control" id="userPassword">
                        <c:forEach items="${deptList}" var="d">
                            <option value="${d.id}"<c:if test="${d.id==role.dept.id}">selected="selected"</c:if>>${d.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="item form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="remark">备注信息
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <textarea  class="form-control col-md-7 col-xs-12"id="remark" value="${role.remark}" name="remark" style="height: 100px"></textarea>
                </div>
            </div>
            <div class="ln_solid"></div>
            <div class="form-group">
                <div class="col-md-6 col-md-offset-3">
                    <button  type="submit" class="btn btn-success">保存</button>
                    <a herf="#" class="btn btn-primary" onclick="history.back(-1)">返回</a>
                </div>
            </div>
    </div>
    </form>
</div>

</div>
<%@ include file="/common/foot.jsp"%>
<script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/js/addemp.js"></script>
<script src="${pageContext.request.contextPath}/js/validator.js"></script>
<!-- validator -->
<script>
    // initialize the validator function
    validator.message.date = 'not a real date';

    // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
    $('form')
        .on('blur', 'input[required], input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern]', validator.keypress);

    $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
    });
</script>
<!-- /validator -->


</body>
</html>

