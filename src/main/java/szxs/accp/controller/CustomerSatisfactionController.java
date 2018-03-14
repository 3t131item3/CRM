package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.CustomerSatisfactionBiz;
import szxs.accp.biz.DeptBiz;
import szxs.accp.entity.CustomerSatisfaction;
import szxs.accp.entity.CustomerVaule;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class CustomerSatisfactionController {
    @Resource
    private CustomerSatisfactionBiz customerSatisfactionBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/customerSatisfactionList")
    public String customerSatisfactionList(Model model){
        model.addAttribute("customerSatisfactionList", customerSatisfactionBiz.customerSatisfactionList(null));
        return "client/satisfaction/satisfaction";
    }
    /**
     * 根据customerName查询
     * @return
     */
    @RequestMapping("/searchCustomerSatisfactionByName")
    public String searchCustomerSatisfactionByName(String customerName,Model model){
        model.addAttribute("customerSatisfactionList",customerSatisfactionBiz.customerSatisfactionList(new CustomerSatisfaction(customerName)));
        model.addAttribute("customerName", customerName);
        return "client/satisfaction/satisfaction";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewCustomerSatisfaction/{id}")
    public String viewCustomerSatisfaction(@PathVariable int id, Model model){
        CustomerSatisfaction customerSatisfaction = customerSatisfactionBiz.customerSatisfactionList(new CustomerSatisfaction(id)).get(0);
        model.addAttribute("customerSatisfaction", customerSatisfaction);
        return "client/satisfaction/viewsatisfaction";
    }
}
