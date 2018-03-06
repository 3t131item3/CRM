 var path=$("#path").val(); //获取绝对路径

/**
 *
 * @param element 显示提示信息的元素
 * @param css 提示的样式
 * @param tipString 提示的信息
 * @param status 验证是否通过
 */
function validateTip(element,css,tipString,status){
    element.css(css);
    element.html(tipString);
    element.prev().attr("validateStatus",status);
}