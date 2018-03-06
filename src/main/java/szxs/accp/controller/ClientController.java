package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
    //客户关怀
    @RequestMapping("/concern")
    public String concern(){
        return "client/concern";
    }
    //客户信誉度管理
    @RequestMapping("/credit")
    public String credit(){

        return "client/credit";
    }
    //客户发展计划
    @RequestMapping("/develop")
    public String develop(){

        return "client/develop";
    }
    //客户资源管理
    @RequestMapping("/resource")
    public String resource(){
        return "client/resource";
    }
    //客户满意度管理
    @RequestMapping("/satisfaction")
    public String satisfaction(){

        return "client/satisfaction";
    }
    //客户价值管理
    @RequestMapping("/value")
    public String value(){

        return "client/value";
    }

}
