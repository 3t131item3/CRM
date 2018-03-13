package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class DisposeController {
    /**
     * 服务处理
     * @return
     */
    @RequestMapping("/dispose")
    public String dispose(){
        return "service/dispose/dispose";
    }
    /**
     * 处理
     * @return
     */
    @RequestMapping("/handle")
    public String handle(){
        return "service/dispose/handle";
    }

    /**
     * 查看服务
     * @return
     */
    @RequestMapping("/viewhandle")
    public String viewhandle(){
        return "service/dispose/viewhandle";
    }
}
