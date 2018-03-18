var phone=null;
$(function(){
 phone=$("#phone");
    phone.bind("blur",function(){
     $.ajax({
         type:"GET",
         url:path+"/exists/"+phone.val(),
         data:{phone:phone.val()},
         dataType:"json",
         success:function(data){
             if(data.phone=="exist"){
                 validateTip(phone.next(),{"color":"red"},"该号码已被注册",false);
             }else if(data.phone=="yes"){
                 validateTip(phone.next(),{"color":"green"},"手机号可用",true);
             }else if(data.phone=="no"){
                 validateTip(phone.next(),{"color":"red"},"手机号码格式有误",false);
             }else if(data.phone=="length"){
                 validateTip(phone.next(),{"color":"red"},"手机号必须是11位",false);
             }

         }
     })
 })
});