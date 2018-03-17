package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.CustomerSatisfactionBiz;
import szxs.accp.biz.DeptBiz;
import szxs.accp.entity.CustomerResource;
import szxs.accp.entity.CustomerSatisfaction;
import szxs.accp.entity.CustomerVaule;

import javax.annotation.Resource;
import java.util.UUID;

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
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addCustomerSatisfaction")
    public String addCustomerSatisfaction(){
        return "client/satisfaction/addsatisfaction";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addCustomerSatisfactionSave")
    public String addCustomerSatisfactionSave(CustomerSatisfaction customerSatisfaction){
        String code="crm-"+ UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        customerSatisfaction.setCustomerCode(code);
        customerSatisfactionBiz.addCustomerSatisfaction(customerSatisfaction);
        return "redirect:/crm/customerSatisfactionList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateCustomerSatisfaction/{id}")
    public String updateCustomerSatisfaction(@PathVariable int id, Model model){
        CustomerSatisfaction customerSatisfaction = customerSatisfactionBiz.customerSatisfactionList(new CustomerSatisfaction(id)).get(0);
        model.addAttribute("customerSatisfaction", customerSatisfaction);
        return "client/satisfaction/updatesatisfaction";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateCustomerSatisfactionSave")
    public String updateCustomerSatisfactionSave(CustomerSatisfaction customerSatisfaction){
        customerSatisfactionBiz.updateCustomerSatisfaction(customerSatisfaction);
        return "redirect:/crm/customerSatisfactionList";
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
    /**
     * 删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/deletecustomerSatisfaction/{id}")
    @ResponseBody
    public String deletecustomerSatisfaction(@PathVariable int id,Model model){
        if(customerSatisfactionBiz.deleteCustomerSatisfaction(id)){
            return "{\"delResult\":\"true\"}";
        }else {
            return "{\"delResult\":\"false\"}";
        }
    }
}
