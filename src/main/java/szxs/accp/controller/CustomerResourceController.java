package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.CustomerResourceBiz;
import szxs.accp.entity.CustomerResource;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class CustomerResourceController {
    @Resource
    private CustomerResourceBiz customerResourceBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/customerResourceList")
    public String customerResourceList(Model model){
        model.addAttribute("customerResourceList", customerResourceBiz.customerResourceList(null));
        return "client/resource/resource";
    }
    /**
     * 根据customerName查询
     * @return
     */
    @RequestMapping("/searchCustomerResourceByName")
    public String searchCustomerResourceByName(String customerName,Model model){
        model.addAttribute("customerResourceList",customerResourceBiz.customerResourceList(new CustomerResource(customerName)));
        model.addAttribute("customerName", customerName);
        return "client/resource/resource";
    }

    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addCustomerResource")
    public String addCustomerResource(){
        return "client/resource/addcustomerresource";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addCustomerResourceSave")
    public String addCustomerResourceSave(CustomerResource customerResource){
        customerResourceBiz.addCustomerResource(customerResource);
        return "redirect:/crm/customerResourceList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateCustomerResource/{id}")
    public String updateCustomerResource(@PathVariable int id, Model model){
        CustomerResource customerResource = customerResourceBiz.customerResourceList(new CustomerResource(id)).get(0);
        model.addAttribute("customerResource", customerResource);
        return "client/resource/updatecustomerresource";
    }

    /**
     * 修改成功
     * @param model
     * @return
     */
    @RequestMapping("/updateCustomerResourceSave")
    public String updateCustomerResourceSave(CustomerResource customerResource, Model model){
        customerResourceBiz.updateCustomerResource(customerResource);
        return "redirect:/crm/customerResourceList";
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewCustomerResource/{id}")
    public String viewCustomerResource(@PathVariable int id, Model model){
        CustomerResource customerResource = customerResourceBiz.customerResourceList(new CustomerResource(id)).get(0);
        model.addAttribute("customerResource", customerResource);
        return "client/resource/viewcustomerresource";
    }
}
