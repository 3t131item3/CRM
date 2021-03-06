package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.PlanBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.Plan;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/crm")
public class PlanController {

    @Resource
    private PlanBiz planBiz;
    @Resource
    private UserBiz userBiz;
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
        model.addAttribute("planList",planBiz.planList(new Plan(month)));
        model.addAttribute("month", month);
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
        String code="crm-"+ UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        plan.setCode(code);
        planBiz.addPlan(plan);
        return "redirect:/crm/planList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updatePlan/{id}")
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
    @RequestMapping("/viewPlan/{id}")
    public String viewPlan(@PathVariable int id, Model model){
        Plan plan = planBiz.planList(new Plan(id)).get(0);
        model.addAttribute("plan", plan);
        return "sales/plan/viewplan";
    }
    /**
     * 删除
     * @return
     */
    @RequestMapping("/deletePlan/{id}")
    @ResponseBody
    public String deletePlan(@PathVariable int id, Model model){
        if(planBiz.deletePlan(id)){
            return "{\"delResult\":\"true\"}";
        }else {
            return "{\"delResult\":\"false\"}";
        }
    }

    /**
     * 点击提交
     * @return
     */
    @RequestMapping("/commitPlan/{id}/{userName}")
    public String commitPlan(@PathVariable int id, @PathVariable String userName, Model model) throws UnsupportedEncodingException {
        String name = new String(userName.getBytes("iso8859-1"),"utf-8");
        Plan p = planBiz.planList(new Plan(id)).get(0);
        p.setStatus("已提交");
        if(p.getCreatedBy().equals("蒋红林")&&p.getUserName().equals("蒋红林")){
            p.setNextHanlder("韩露");
        }else {
            User userByUserName = userBiz.getUserByUserName(name);
            if(userByUserName!=null){
                p.setNextHanlder(userByUserName.getUserName());
            }
        }

        planBiz.updatePlan(p);
        return "redirect:/crm/planList";
    }
    /**
     * 点击审核，跳到审核页面
     * @return
     */
    @RequestMapping("/checkPlan/{id}")
    public String checkPlan(@PathVariable int id, Model model) {
        Plan plan = planBiz.planList(new Plan(id)).get(0);
        model.addAttribute("plan", plan);
        return "sales/plan/checkplan";
    }
    /**
     * 点击审核
     * @return
     */
    @RequestMapping("/checkPlanSave")
    public String checkPlanSave(Plan plan,Model model) {
        if(plan.getStatus().equals("打回")){
            plan.setStatus("已打回");
        } if(plan.getStatus().equals("同意")){
            plan.setStatus("已同意");
        }
        planBiz.updatePlan(plan);
        return "redirect:/crm/planList";
    }
}
