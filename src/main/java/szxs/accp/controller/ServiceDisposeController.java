package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ServiceDisposeBiz;
import szxs.accp.entity.ServiceAllot;
import szxs.accp.entity.ServiceCreate;
import szxs.accp.entity.ServiceDispose;

import javax.annotation.Resource;
@Controller
@RequestMapping("/crm")
public class ServiceDisposeController {
    @Resource
    private ServiceDisposeBiz serviceDisposeBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/serviceDisposeList")
    public String serviceDisposeList(Model model){
        model.addAttribute("serviceDisposeList",serviceDisposeBiz.serviceDisposeList(null));
        return "service/dispose/dispose";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchServiceDisposeByCondition")
    public String searchServiceCreateByCondition(String serviceName,String serviceType,String serviceStatus,Model model){
        model.addAttribute("serviceDisposeList",serviceDisposeBiz.serviceDisposeList(new ServiceDispose(serviceName,serviceType,serviceStatus)));
        model.addAttribute("serviceName",serviceName);
        model.addAttribute("serviceType",serviceType);
        model.addAttribute("serviceStatus",serviceStatus);
        return "service/dispose/dispose";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateServiceDispose/{id}")
    public String updateServiceDispose(@PathVariable int id, Model model){
        ServiceDispose serviceDispose = serviceDisposeBiz.serviceDisposeList(new ServiceDispose(id)).get(0);
        model.addAttribute("serviceDispose", serviceDispose);
        return "service/dispose/handle";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateServiceDisposeSave")
    public String updateServiceDisposeSave(ServiceDispose serviceDispose){
        serviceDisposeBiz.updateServiceDispose(serviceDispose);
        return "redirect:/crm/serviceDisposeList";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewServiceDispose/{id}")
    public String viewServiceDispose(@PathVariable int id, Model model){
        ServiceDispose serviceDispose = serviceDisposeBiz.serviceDisposeList(new ServiceDispose(id)).get(0);
        model.addAttribute("serviceDispose", serviceDispose);
        return "service/dispose/viewhandle";
    }
}
