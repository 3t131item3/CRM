package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.CustomerVauleBiz;
import szxs.accp.entity.CustomerResource;
import szxs.accp.entity.CustomerVaule;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class CustomerVauleController {
    @Resource
    private CustomerVauleBiz customerVauleBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/customerVauleList")
    public String customerVauleList(Model model){
        model.addAttribute("customerVauleList", customerVauleBiz.customerVauleList(null));
        return "client/value/value";
    }
    /**
     * 根据customerName查询
     * @return
     */
    @RequestMapping("/searchValueByNameAndType")
    public String searchValueByNameAndType(String customerName,String type,Model model){
        model.addAttribute("customerVauleList",customerVauleBiz.customerVauleList(new CustomerVaule(customerName,type)));
        model.addAttribute("customerName", customerName);
        model.addAttribute("type", type);
        return "client/value/value";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewValue/{id}")
    public String viewValue(@PathVariable int id, Model model){
        CustomerVaule customerVaule = customerVauleBiz.customerVauleList(new CustomerVaule(id)).get(0);
        model.addAttribute("customerVaule", customerVaule);
        return "client/value/viewvalue";
    }
}
