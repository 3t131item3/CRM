package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.PlanBiz;
import szxs.accp.entity.Plan;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class PlanController {

    @Resource
    private PlanBiz planBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/planList")
    public String planList(Model model){
        model.addAttribute("planList", planBiz.planList(null));
        return "sales/plan/plan";
    }
    /**
     * 根据月份查询所有
     * @return
     */
    @RequestMapping("/searchPlanByMonth")
    public String searchPlanByMonth(String month,Model model){
        model.addAttribute("planList", planBiz.planList(new Plan(month)));
        return "sales/plan/plan";
    }

    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addPlan")
    public String addPlan(){
        return "sales/plan/addplan";
    }
    /**
     * 新增保存
     * @param plan
     * @return
     */
    @RequestMapping("/addPlanSave")
    public String addPlanSave(Plan plan){
        planBiz.addPlan(plan);
        return "redirect:/crm/planList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updatePlan")
    public String updatePlan(@PathVariable int id, Model model){
        Plan plan = planBiz.planList(new Plan(id)).get(0);
        model.addAttribute("plan", plan);
        return "sales/plan/updateplan";
    }

    /**
     * 修改成功
     * @param plan
     * @param model
     * @return
     */
    @RequestMapping("/updatePlanSave")
    public String updatePlanSave(Plan plan, Model model){
        planBiz.updatePlan(plan);
        return "redirect:/crm/planList";
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewPlan")
    public String viewPlan(@PathVariable int id, Model model){
        Plan plan = planBiz.planList(new Plan(id)).get(0);
        model.addAttribute("plan", plan);
        return "sales/plan/viewplan";
    }
    /**
     * 删除
     * @return
     */
    @RequestMapping("/deletePlan")
    public String deletePlan(@PathVariable int id, Model model){
        planBiz.deletePlan(id);
        return "redirect:/crm/planList";
    }
}
