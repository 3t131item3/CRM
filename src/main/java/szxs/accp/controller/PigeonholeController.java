package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class PigeonholeController {
    /**
     * 服务归档
     * @return
     */
    @RequestMapping("pigeonhole")
    public String pigeonhole(){
        return "service/pigeonhole/pigeonhole";
    }

    /**
     * 查看
     * @return
     */
    @RequestMapping("viewpigeonhole")
    public String viewpigeonhole(){
        return "service/pigeonhole/viewpigeonhole";
    }
}
