package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class AchievementController {
    @RequestMapping("achievement")
    public String achievement(){
        return "sales/achievement";
    }
    @RequestMapping("/addresult")
    public String addresult(){
        return "sales/addresult";
    }
    @RequestMapping("/updateresult")
    public String updateresult(){
        return "sales/updateresult";
    }
    @RequestMapping("/viewresult")
    public String viewresult(){
        return "sales/viewresult";
    }
}
