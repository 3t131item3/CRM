package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class FeedbackController {
    /**
     * 服务反馈
     * @return
     */
    @RequestMapping("/feedback")
    public String feedback(){
        return "service/feedback/feedback";
    }

    /**
     * 反馈
     * @return
     */
    @RequestMapping("back")
    public String back(){
        return "service/feedback/back";
    }

    /**
     * 查看
     * @return
     */
    @RequestMapping("/viewfeedback")
    public String viewfeedback(){
        return "service/feedback/viewfeedback";
    }
}
