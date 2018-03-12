package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.AchievementBiz;
import szxs.accp.biz.DeptBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.Achievement;
import szxs.accp.entity.Dept;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class AchievementController {
    @Resource(name = "achievementBiz")
    private AchievementBiz achievementBiz;
    @Resource(name="userBiz")
    private UserBiz userBiz;
    @Resource(name = "deptBiz")
    private DeptBiz deptBiz;
    @RequestMapping("/achievement")
    public String achievement(Model model){
        List<Achievement> achievementList = achievementBiz.queryAchievement();
        model.addAttribute("achievementList",achievementList);
        return "sales/achievement/achievement";
    }
    @RequestMapping("/addresult")
    public String addresult(Model model){
        List<Dept> deptList = deptBiz.list(null);
        List<User> userList = userBiz.listAll(null);
        model.addAttribute("deptList",deptList);
        model.addAttribute("userList",userList);
        return "sales/achievement/addachievement";

    }
    @RequestMapping("/addachievement")
    public String addachievement(Achievement achievement){
        if(achievementBiz.addAchievement(achievement)){
            return "redirect:/crm/achievement";
        }else{
            return "redirect:/crm/addresult";
        }
    }
    @RequestMapping("/updateresult/{id}")
    public String updateresult(@PathVariable int id ,Model model){
        List<Dept> deptList = deptBiz.list(null);
        List<User> userList = userBiz.listAll(null);
        Achievement achievement = achievementBiz.queryById(id);
        model.addAttribute("deptList",deptList);
        model.addAttribute("userList",userList);
        model.addAttribute("achievement",achievement);
        return "sales/achievement/updateachievement";
    }
    @RequestMapping("/modifyachievement")
    public String modifyachievement(Achievement achievement){
        if(achievementBiz.modifyAchievement(achievement)){
            return "redirect:/crm/achievement";
        }else{
            return "redirect:/crm/updateresult"+achievement.getId();
        }
    }
    @RequestMapping("/viewresult/{id}")
    public String viewresult(@PathVariable int id,Model model){
        Achievement achievement = achievementBiz.queryById(id);
        model.addAttribute("achievement",achievement);
        return "sales/achievement/viewachievement";
    }
}
