package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class CreateController {
    /**
     * 服务创建页面
     * @return
     */
    @RequestMapping("/create")
    public String create(){
        return "service/create/create";
    }

    /**
     * 跳转到添加页面
     * @return
     */
    @RequestMapping("/addcreate")
    public String addcreate(){
        return "service/create/addcreate";
    }

    /**
     * 跳转到修改页面
     * @return
     */
    @RequestMapping("/updatecreate")
    public String updatecreate(){
        return "service/create/updatecreate";
    }

    /**
     * 跳转到查看页面
     * @return
     */
    @RequestMapping("/viewcreate")
    public String viewcreate(){
        return "service/create/viewcreate";
    }
}
