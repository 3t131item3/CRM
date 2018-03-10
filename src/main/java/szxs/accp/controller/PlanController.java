package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class PlanController {
    @RequestMapping("/plan")
    public String plan(){
        return "sales/plan";
    }
    @RequestMapping("/addplan")
    public String addplan(){
        return "sales/addplan";
    }
    @RequestMapping("/updateplan")
    public String updateplan(){
        return "sales/updateplan";
    }
    @RequestMapping("/viewplan")
    public String viewplan(){
        return "sales/viewplan";
    }
}
