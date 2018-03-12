
$(function(){
    $.ajax({
        type:"GET",//请求类型
        url:"/crm/deptList",//请求的url
        data:{method:"deptList"},//请求参数
        dataType:"json",//ajax接口（请求url）返回的数据类型
        success:function(data){//data：返回数据（json对象）
            if(data != null){
                $("#deptId").html("");//通过标签选择器，得到select标签，适用于页面里只有一个select
                var options = "";
                for(var i = 0; i < data.length; i++){
                    //alert(data[i].id);
                    //alert(data[i].proName);
                    options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
                }
                $("#deptId").html(options);
            }
        },
        error:function(data){//当访问时候，404，500 等非200的错误状态码
            validateTip(providerId.next(),{"display":"inline-block"}," 获取供应商列表error",false);
        }
    });
});