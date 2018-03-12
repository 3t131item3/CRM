package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.CustomerReputationBiz;
import szxs.accp.biz.CustomerResourceBiz;
import szxs.accp.entity.CustomerReputation;
import szxs.accp.entity.CustomerVaule;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class CustomerReputationController {
    @Resource
    private CustomerReputationBiz customerReputationBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/customerReputationList")
    public String customerReputationList(Model model){
        model.addAttribute("customerReputationList", customerReputationBiz.customerReputationList(null));
        return "client/credit/credit";
    }
    /**
     * 根据customerName查询
     * @return
     */
    @RequestMapping("/searchcustomerReputationByName")
    public String searchcustomerReputationByName(String customerName,Model model){
        model.addAttribute("customerReputationList",customerReputationBiz.customerReputationList(new CustomerReputation(customerName)));
        model.addAttribute("customerName", customerName);
        return "client/credit/credit";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewCustomerReputation/{id}")
    public String viewCustomerReputation(@PathVariable int id, Model model){
        CustomerReputation customerReputation = customerReputationBiz.customerReputationList(new CustomerReputation(id)).get(0);
        model.addAttribute("customerReputation", customerReputation);
        return "client/credit/viewcredit";
    }

}
