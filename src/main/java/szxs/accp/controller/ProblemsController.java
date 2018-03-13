package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class ProblemsController {
    /**
     * 常见问题管理
     * @return
     */
    @RequestMapping("/problems")
    public String problems(){
        return "service/problems/problems";
    }

    /**
     * 调到添加页面
     * @return
     */
    @RequestMapping("/addproblems")
    public String addproblem(){
        return "service/problems/addproblems";
    }

    /**
     * 调到修改页面
     * @return
     */
    @RequestMapping("updateproblems")
    public String updateproblem(){
        return "service/problems/updateproblems";
    }
    @RequestMapping("viewproblems")
    /**
     * 查看
     */
    public String viewproblem(){
        return "service/problems/viewproblems";
    }
}
