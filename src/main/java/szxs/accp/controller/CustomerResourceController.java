package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ChanceBiz;
import szxs.accp.biz.CustomerResourceBiz;
import szxs.accp.dao.ChanceDao;
import szxs.accp.entity.CustomerResource;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/crm")
public class CustomerResourceController {
    @Resource
    private CustomerResourceBiz customerResourceBiz;
    @Resource
    private ChanceBiz chanceBiz ;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/customerResourceList")
    public String customerResourceList(Model model){
        model.addAttribute("customerResourceList", customerResourceBiz.customerResourceAllList());
        return "client/resource/resource";
    }
    /**
     * 根据customerName查询
     * @return
     */
    @RequestMapping("/searchCustomerResourceByName")
    public String searchCustomerResourceByName(String customerName,String status,Model model){
        model.addAttribute("customerResourceList",customerResourceBiz.customerResourceList(new CustomerResource(customerName,status)));
        model.addAttribute("customerName", customerName);
        model.addAttribute("status", status);
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
        String code="crm-"+ UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        customerResource.setCustomerCode(code);
        customerResource.setAllotStatus("未分配");
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
     * 跳转到分配页面
     * @param model
     * @return
     */
    @RequestMapping("/commitCustomerResource/{id}")
    public String commitCustomerResource(@PathVariable int id, Model model){
        CustomerResource customerResource = customerResourceBiz.customerResourceList(new CustomerResource(id)).get(0);
        model.addAttribute("customerResource", customerResource);
        return "client/resource/resourceallot";
    }
    /**
     * 分配保存
     * @param model
     * @return
     */
    @RequestMapping("/commitCustomerResourceSave")
    public String commitCustomerResourceSave(CustomerResource customerResource, Model model){
        customerResource.setAllotStatus("已分配");
        customerResourceBiz.updateCustomerResource(customerResource);
        chanceBiz.updateChance(customerResource.getChance().getId(),customerResource.getChance().getAllotUserName());
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
