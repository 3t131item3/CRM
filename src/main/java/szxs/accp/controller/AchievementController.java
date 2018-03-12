package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.AchievementBiz;
import szxs.accp.biz.DeptBiz;
import szxs.accp.entity.Achievement;
import szxs.accp.entity.Dept;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class AchievementController {
    @Resource(name = "achievementBiz")
    private AchievementBiz achievementBiz;
    @Resource(name = "deptBiz")
    private DeptBiz deptBiz;
    @RequestMapping("/achievement")
    public String achievement(Achievement achievement,Model model){
        List<Achievement> achievementList = achievementBiz.queryAchievement(achievement);
        model.addAttribute("achievementList",achievementList);
        return "sales/achievement/achievement";
    }
    @RequestMapping("/addresult")
    public String addresult(Model model){
        List<Dept> deptList = deptBiz.list(null);
        model.addAttribute("deptList",deptList);
        return "sales/achievement/addachievement";

    }
    @RequestMapping("/updateresult")
    public String updateresult(){
        return "sales/achievement/updateachievement";
    }
    @RequestMapping("/viewresult")
    public String viewresult(){
        return "sales/achievement/viewachievement";
    }
}
