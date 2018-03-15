package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ProblemsBiz;
import szxs.accp.biz.ServiceBackBiz;
import szxs.accp.entity.ServiceAllot;
import szxs.accp.entity.ServiceBack;
import szxs.accp.entity.ServiceCreate;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ServiceBackController {
    @Resource
    private ServiceBackBiz serviceBackBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/serviceBackList")
    public String serviceBackList(Model model){
        model.addAttribute("serviceBackList",serviceBackBiz.serviceBackList(null));
        return "service/feedback/feedback";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchServiceBackByCondition")
    public String searchServiceBackByCondition(String serviceName,String serviceType,String serviceStatus,Model model){
        model.addAttribute("serviceBackList",serviceBackBiz.serviceBackList(new ServiceBack(serviceName,serviceType,serviceStatus)));
        model.addAttribute("serviceName",serviceName);
        model.addAttribute("serviceType",serviceType);
        model.addAttribute("serviceStatus",serviceStatus);
        return "service/feedback/feedback";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateServiceBack/{id}")
    public String updateServiceBack(@PathVariable int id, Model model){
        ServiceBack serviceBack = serviceBackBiz.serviceBackList(new ServiceBack(id)).get(0);
        model.addAttribute("serviceBack", serviceBack);
        return "service/feedback/back";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateServiceBackSave")
    public String updateServiceBackSave(ServiceBack serviceBack){
        serviceBack.setServiceStatus(serviceBack.getBackResult());
        serviceBackBiz.updateServiceBack(serviceBack);
        return "redirect:/crm/serviceBackList";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewServiceBack/{id}")
    public String viewServiceBack(@PathVariable int id, Model model){
        ServiceBack serviceBack = serviceBackBiz.serviceBackList(new ServiceBack(id)).get(0);
        model.addAttribute("serviceBack", serviceBack);
        return "service/feedback/viewfeedback";
    }
}
