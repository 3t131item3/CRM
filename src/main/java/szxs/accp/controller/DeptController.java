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
import java.util.Random;
import java.util.UUID;

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
    /**
     * 跳转到添加部门页面
     * @return
     */
    @RequestMapping("/addorganization")
    public String addorganization(){
        return "system/dept/addorganization";

    }
    /**
     * 查询部门信息和按部门名字模糊查询
     * @param deptName
     * @param model
     * @return
     */
    @RequestMapping("/listDeptAll")
    public String deptList(String deptName,Model model){
        model.addAttribute("deptList",deptBiz.list(new Dept(deptName)));
        model.addAttribute("deptName",deptName);
        return "system/dept/organization";
    }
    /**
     * 添加部门信息
     * @param model
     * @param dept
     * @return
     */
    @RequestMapping("/addDept")
    public String addDept(Model model,Dept dept){
        String code="crm-"+UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        dept.setDeptCode(code);
        dept.setLastUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        if (deptBiz.add(dept)){
            return "redirect:/crm/listDeptAll";
        }else{
            return "/erro";
        }
    }
    /**
     * 跳转到部门修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/modifyDept/{id}")
    public String modifyto(@PathVariable int id, Model model){
        List<Dept> deptList = deptBiz.list(new Dept(id));
        if (deptList.size()>0){
            model.addAttribute("dept",deptList.get(0));
        }
        return "system/dept/updateorganization";
    }
    /**
     * 修改部门信息
     * @param dept
     * @param model
     * @return
     */
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
    /**
     * 删除部门信息
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/removeDept/{id}")
    public String delDept(@PathVariable int id,Model model){
        deptBiz.remove(id);
        return "redirect:/crm/listDeptAll";
    }
}
