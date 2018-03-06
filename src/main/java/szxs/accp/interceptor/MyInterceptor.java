package szxs.accp.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInterceptor extends HandlerInterceptorAdapter{
    /**
     * 一般用这个，控制器之前拦截处理，不会拦截静态资源文件
     * 不拦截用户登录的控制器的登录功能
     * 功能：
     * 1.判断回话是否还存在
     * 2.管理权限
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //一把这里面就是来判断
        if(request.getSession().getAttribute("userSession")==null){
            response.sendRedirect("/login");
            return false;
        }
        return super.preHandle(request, response, handler);
    }
}
