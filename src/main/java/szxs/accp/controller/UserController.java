package szxs.accp.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.DeptBiz;
import szxs.accp.biz.RoleBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.Dept;
import szxs.accp.entity.Role;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Resource
    private UserBiz userBiz;
    @Resource
    private DeptBiz deptBiz;
    @Resource
    private RoleBiz roleBiz;
    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }
    /**
     * 登录功能
     */
    @RequestMapping("/loginsave")
    public String login(User u,Model model,HttpSession session, HttpServletRequest request){
        User user = userBiz.login(u);
        if (user!=null){
            session.setAttribute("userSession",user);
            return "welcome";
        }else{
            model.addAttribute("error","用户名或密码错误");
            model.addAttribute("userName",u.getUserName());
            model.addAttribute("userPassword",u.getUserPassword());
            return "login";
        }
    }

    /**
     * 查询所有用户
     * @param userName
     * @param model
     * @return
     */
    @RequestMapping(value="/crm/listEmpAll")
    public String listEmpAll(String userName,Model model){
        model.addAttribute("user",userBiz.listAll(userName));
        return "system/user/employee";
    }

    /**
     * 退出系统
     * @return
     */
    @RequestMapping(value="/crm/exit")
    public String exit(HttpServletRequest request,HttpServletResponse response)throws Exception {
        request.getSession().invalidate(); //关闭当前sssion
        //response.sendRedirect("/login");
        return "login";
    }

    /**
     * 进入新增页面
     * @param dept
     * @param role
     * @param model
     * @return
     */
    @RequestMapping(value = "/crm/addemp")
    public String addemp(Dept dept,Role role, Model model){
        List<Dept> list = deptBiz.list(dept);
        List<Role> rolelist = roleBiz.roleList(role);
        model.addAttribute("list",list);
        model.addAttribute("rolelist",rolelist);
        return "system/user/addemployee";
    }

    /**
     * 新增
     * @param user
     * @param dept
     * @param role
     * @param model
     * @return
     */
    @RequestMapping(value = "/crm/addemployee")
    public String addemployee(User user,Dept dept,Role role,Model model){
        if(userBiz.add(user)){
            return "redirect:/crm/listEmpAll";
        }else{
            return addemp(dept,role,model);
        }
    }

    /**
     * 进入修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/crm/update/{id}")
    public String updateemp(@PathVariable int id,Model model){
        User user = userBiz.queryId(id);
        model.addAttribute("user",user);
        model.addAttribute("rolelist",roleBiz.roleList(null));
        model.addAttribute("deptlist",deptBiz.list(null));
        return "system/user/updateemp";
    }

    /**
     *
     * @param userCode 验证userCode是否存在
     * @return
     */
    @RequestMapping("/exists/{userCode}")
    @ResponseBody
    public String exists(@PathVariable String userCode){
        Map<String,String> map = new HashMap<String, String>();
        if(userBiz.check(userCode)!=null){
            map.put("userCode","exist");
        }else{
            map.put("userCode","no");
        }
        return JSON.toJSONString(map);
    }

}
