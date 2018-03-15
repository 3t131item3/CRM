package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ServicePigeonholeBiz;
import szxs.accp.entity.ServiceCreate;
import szxs.accp.entity.ServiceDispose;
import szxs.accp.entity.ServicePigeonhole;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ServicePigeonholeController {
    @Resource
    private ServicePigeonholeBiz servicePigeonholeBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/servicePigeonholeList")
    public String servicePigeonholeList(Model model){
        model.addAttribute("servicePigeonholeList",servicePigeonholeBiz.servicePigeonholeList(null));
        return "service/pigeonhole/pigeonhole";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchServicePigeonholeByCondition")
    public String searchServicePigeonholeByCondition(String serviceName,String serviceType,String serviceStatus,Model model){
        model.addAttribute("servicePigeonholeList",servicePigeonholeBiz.servicePigeonholeList(new ServicePigeonhole(serviceName,serviceType,serviceStatus)));
        model.addAttribute("serviceName",serviceName);
        model.addAttribute("serviceType",serviceType);
        model.addAttribute("serviceStatus",serviceStatus);
        return "service/pigeonhole/pigeonhole";
    }
    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updatePigeonholeSave/{id}")
    public String updatePigeonholeSave(@PathVariable int id){
        ServicePigeonhole servicePigeonhole = servicePigeonholeBiz.servicePigeonholeList(new ServicePigeonhole(id)).get(0);
        servicePigeonhole.setServiceStatus("已归档");
        servicePigeonholeBiz.updateServicePigeonhole(servicePigeonhole);
        return "redirect:/crm/servicePigeonholeList";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewPigeonhole/{id}")
    public String viewPigeonhole(@PathVariable int id, Model model){
        ServicePigeonhole servicePigeonhole = servicePigeonholeBiz.servicePigeonholeList(new ServicePigeonhole(id)).get(0);
        model.addAttribute("servicePigeonhole", servicePigeonhole);
        return "service/pigeonhole/viewpigeonhole";
    }
}
