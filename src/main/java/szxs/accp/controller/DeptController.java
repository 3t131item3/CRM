package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.DeptBiz;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class DeptController {

    @Resource
    private DeptBiz deptBiz;

    /**
     * 跳转到角色修改页面
     * @return
     */
    @RequestMapping("/updateorganization")
    public String roleModify(){
        return "system/dept/updateorganization";
    }

}
