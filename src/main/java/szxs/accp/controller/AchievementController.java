package szxs.accp.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.AchievementBiz;
import szxs.accp.biz.DeptBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.Achievement;
import szxs.accp.entity.Dept;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/crm")
public class AchievementController {
    @Resource(name = "achievementBiz")
    private AchievementBiz achievementBiz;
    @Resource(name="userBiz")
    private UserBiz userBiz;
    @Resource(name = "deptBiz")
    private DeptBiz deptBiz;

    /**
     * 查询所有人的绩效
     * @param model
     * @return
     */
    @RequestMapping("/achievement")
    public String achievement(Model model){
        List<Achievement> achievementList = achievementBiz.queryAchievement();
        model.addAttribute("achievementList",achievementList);
        return "sales/achievement/achievement";
    }

    /**
     * 调到添加页面
     * @param model
     * @return
     */
    @RequestMapping("/addresult")
    public String addresult(Model model){
        List<Dept> deptList = deptBiz.list(null);
        List<User> userList = userBiz.listAll(null);
        model.addAttribute("deptList",deptList);
        model.addAttribute("userList",userList);
        return "sales/achievement/addachievement";

    }

    /**
     * 添加
     * @param achievement
     * @return
     */
    @RequestMapping("/addachievement")
    public String addachievement(Achievement achievement){
        if(achievementBiz.addAchievement(achievement)){
            return "redirect:/crm/achievement";
        }else{
            return "redirect:/crm/addresult";
        }
    }

    /**
     * 跳到修改页面
     * @param id
     * @param model
     * @return
     */
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

    /**
     * 修改
     * @param achievement
     * @return
     */
    @RequestMapping("/modifyachievement")
    public String modifyachievement(Achievement achievement){
        if(achievementBiz.modifyAchievement(achievement)){
            return "redirect:/crm/achievement";
        }else{
            return "redirect:/crm/updateresult"+achievement.getId();
        }
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewresult/{id}")
    public String viewresult(@PathVariable int id,Model model){
        Achievement achievement = achievementBiz.queryById(id);
        model.addAttribute("achievement",achievement);
        return "sales/achievement/viewachievement";
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/deleteAchievement/{id}")
    @ResponseBody
    public String deleteAchievement(@PathVariable int id){
        Map<String,String> map = new HashMap<String, String>();
        if(achievementBiz.removeAchievement(id)){
            map.put("delResult","true");
        }else{
            map.put("delResult","false");
        }
        return JSON.toJSONString(map);
    }
    @RequestMapping("/result/{grade}")
    @ResponseBody
    public String number(@PathVariable int grade){
        Map<String,String> map = new HashMap<String, String>();
        if(grade<0){
            map.put("number","false");
        }else{
            map.put("number","true");
        }
        return JSON.toJSONString(map);
    }
}
