package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ServiceAllotBiz;
import szxs.accp.biz.ServiceCreateBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ServiceCreate;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/crm")
public class ServiceCreateController {
    @Resource
    private ServiceCreateBiz serviceCreateBiz;
    @Resource
    private UserBiz userBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/serviceCreateList")
    public String planList(Model model){
        model.addAttribute("serviceCreateList",serviceCreateBiz.serviceCreateList(null));
        return "service/create/create";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchServiceCreateByCondition")
    public String searchServiceCreateByCondition(String serviceName,String serviceType,String serviceStatus,Model model){
        model.addAttribute("serviceCreateList",serviceCreateBiz.serviceCreateList(new ServiceCreate(serviceName,serviceType,serviceStatus)));
        model.addAttribute("serviceName",serviceName);
        model.addAttribute("serviceType",serviceType);
        model.addAttribute("serviceStatus",serviceStatus);
        return "service/create/create";
    }
    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addServiceCreate")
    public String addContractCreate(){
        return "service/create/addcreate";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addServiceCreateSave")
    public String addServiceCreateSave(ServiceCreate serviceCreate){
        serviceCreateBiz.addServiceCreate(serviceCreate);
        return "redirect:/crm/serviceCreateList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateServiceCreate/{id}")
    public String updateServiceCreate(@PathVariable int id, Model model){
        ServiceCreate serviceCreate = serviceCreateBiz.serviceCreateList(new ServiceCreate(id)).get(0);
        model.addAttribute("serviceCreate", serviceCreate);
        return "service/create/updatecreate";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateServiceCreateSave")
    public String updateServiceCreateSave(ServiceCreate serviceCreate){
        boolean b = serviceCreateBiz.updateServiceCreate(serviceCreate);
        return "redirect:/crm/serviceCreateList";
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewServiceCreate/{id}")
    public String viewServiceCreate(@PathVariable int id, Model model){
        ServiceCreate serviceCreate = serviceCreateBiz.serviceCreateList(new ServiceCreate(id)).get(0);
        model.addAttribute("serviceCreate", serviceCreate);
        return "service/create/viewcreate";
    }
    /**
     * 点击提交
     * @return
     */
    @RequestMapping("/commitServiceCreate/{id}/{createdBy}")
    public String commitServiceCreate(@PathVariable int id, @PathVariable String createdBy, Model model) throws UnsupportedEncodingException {
        String name = new String(createdBy.getBytes("iso8859-1"),"utf-8");
        ServiceCreate s = serviceCreateBiz.serviceCreateList(new ServiceCreate(id)).get(0);
        s.setServiceStatus("已提交");
        User userByUserName = userBiz.getUserByUserName(name);
        if(userByUserName!=null){
            s.setNextHanlder(userByUserName.getUserName());
        }
        serviceCreateBiz.updateServiceCreate(s);
        return "redirect:/crm/serviceCreateList";
    }
    /**
     * 刪除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/deleteServiceCreate/{id}")
    public String deleteServiceCreate(@PathVariable int id,Model model){
        serviceCreateBiz.deleteServiceCreate(id);
        return "redirect:/crm/serviceCreateList";
    }
}
