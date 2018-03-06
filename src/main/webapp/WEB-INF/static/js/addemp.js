var userCode=null;
$(function(){
 userCode=$("#userCode");
 userCode.bind("blur",function(){
     $.ajax({
         type:"GET",
         url:path+"/exists/"+userCode.val(),
         data:{userCode:userCode.val()},
         dataType:"json",
         success:function(data){
             if(data.userCode=="exist"){
                 validateTip(userCode.next(),{"color":"red"},"该账号已存在",false);
             }else{
                 validateTip(userCode.next(),{"color":"green"},"该账号可以使用",true);
             }

         }
     })
 })
});