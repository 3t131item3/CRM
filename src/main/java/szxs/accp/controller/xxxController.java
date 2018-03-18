package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class xxxController {
    @RequestMapping("/xxx")
    public String index(){
        return "statistics/xxx";
    }
}
