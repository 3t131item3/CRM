package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class DistributeController {
    /**
     * 服务分配
     * @return
     */
    @RequestMapping("/distribute")
    public String distribute(){
        return "service/distribute/serviceallot";
    }

    /**
     * 分配
     * @return
     */
    @RequestMapping("/allot")
    public String allot(){
        return "service/distribute/allot";
    }

    /**
     * 查看
     * @return
     */
    @RequestMapping("viewallot")
    public String viewallot(){
        return "service/distribute/viewallot";
    }

}
