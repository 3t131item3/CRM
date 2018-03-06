package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
    //订单查询
    @RequestMapping("/query")
    public String query(){
        return "order/query";
    }
    //统计订单
    @RequestMapping("/statistics")
    public String statistics(){

        return "order/statistics";
    }
    //代下订单
    @RequestMapping("/wait")
    public String waits(){

        return "order/wait";
    }
}
