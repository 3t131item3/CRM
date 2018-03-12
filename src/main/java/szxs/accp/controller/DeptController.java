package szxs.accp.controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.DeptBiz;
import szxs.accp.entity.Dept;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    @RequestMapping("/addorganization")
    public String addorganization(){
        return "system/dept/addorganization";

    }
    @RequestMapping("/listDeptAll")
    public String deptList(String deptName,Model model){
        model.addAttribute("deptList",deptBiz.list(new Dept(deptName)));
        model.addAttribute("deptName",deptName);
        return "system/dept/organization";
    }
    @RequestMapping("/addDept")
    public String addDept(Model model,Dept dept){
        dept.setLastUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        if (deptBiz.add(dept)){
            return "redirect:/crm/listDeptAll";
        }else{
            return "/erro";
        }
    }
    @RequestMapping("/removeDept/{id}")
    public String delDept(@PathVariable int id,Model model){
        try{
            deptBiz.remove(id);
            return "redirect:/crm/listDeptAll";

        }catch (Exception e){
            return "/erro";
        }
    }

    @RequestMapping("/modifyDept/{id}")
    public String modifyto(@PathVariable int id, Model model){
        List<Dept> deptList = deptBiz.list(new Dept(id));
        if (deptList.size()>0){
            model.addAttribute("dept",deptList.get(0));
        }
        return "system/dept/updateorganization";
    }
    @RequestMapping("modifyDeptSave")
    public String modifyDept(Dept dept,Model model){
        dept.setLastUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        if (deptBiz.modify(dept)){
            return "redirect:/crm/listDeptAll";
        }else {
            model.addAttribute("error", "修改部门信息失败!");
            return "redirect:/crm/modifyDept/"+dept.getId();
        }

    }

}
