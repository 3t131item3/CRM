package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.Impl.UserBizImpl;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class MyInfoController {
    @Resource
    private UserBiz userBiz;
    /**
     * 查看信息
     */
    @RequestMapping("/myInfo/{id}")
    public String listMyInfo(@PathVariable int id, Model model){
        User user = userBiz.queryId(id);
        model.addAttribute("user",user);
        return "system/myinfo/myinfo";
    }

    /**
     * 修改手机号
     * @param model
     * @return
     */
    @RequestMapping("/modifyMyInfoPhone")
    public String modifyMyInfoPhone(User user,Model model){
        boolean modify = userBiz.modify(new User(user.getId(), user.getPhone()));
        User u = userBiz.queryId(user.getId());
        model.addAttribute("user",u );
        return "system/myinfo/myinfo";
    }
    /**
     * 跳转到修改密码页面
     */
    @RequestMapping("/modifyMyInfoPwd")
    public String modifyMyInfoPwd(){
        return "system/myinfo/modifypwd";
    }
    /**
     * 修改密码
     */
    @RequestMapping("/modifyPwdSave")
    public  String modifyPwdSave(HttpServletRequest request,String rePwd, String newPwd, String newPwds,Model model){
        User userSession =(User)request.getSession().getAttribute("userSession");
        if(userBiz.queryIdAndPwd(userSession.getId(),rePwd)==null){
            model.addAttribute("error","原密码或确认密码输入有误，请重新输入！");
            return "system/myinfo/modifypwd";
        }
        if(!newPwd.equals(newPwds)){
            model.addAttribute("error","原密码或确认密码输入有误，请重新输入！");
            return "system/myinfo/modifypwd";
        }
            User u = new User();
            u.setId(userSession.getId());
            u.setUserPassword(UserBizImpl.string2MD5(newPwd));
            userBiz.modify(u);
            model.addAttribute("success","修改成功！");
            return "system/myinfo/modifypwd";
    }

}
