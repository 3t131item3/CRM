package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContractController {

    @RequestMapping("/check")
    public String check(){
        return "contrace/check";
    }
    @RequestMapping("/create")
    public String create(){
        return "contract/create";
    }
    @RequestMapping("/manage")
    public String manage(){
        return "contract/manage";
    }
}
