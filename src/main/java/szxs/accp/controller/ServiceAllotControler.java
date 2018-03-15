package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.ServiceAllotBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.Dept;
import szxs.accp.entity.ServiceAllot;
import szxs.accp.entity.ServiceCreate;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.util.List;

/**
 * 服务分配
 */
@Controller
@RequestMapping("/crm")
public class ServiceAllotControler {
    @Resource
    private ServiceAllotBiz serviceAllotBiz;
    @Resource
    private UserBiz userBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/serviceAllotList")
    public String planList(Model model){
        model.addAttribute("serviceAllotList",serviceAllotBiz.serviceAllotList(null));
        return "service/allot/serviceallot";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchServiceAllotByCondition")
    public String searchServiceAllotByCondition(String serviceName,String serviceType,String serviceStatus,Model model){
        model.addAttribute("serviceAllotList",serviceAllotBiz.serviceAllotList(new ServiceAllot(serviceName,serviceType,serviceStatus)));
        model.addAttribute("serviceName",serviceName);
        model.addAttribute("serviceType",serviceType);
        model.addAttribute("serviceStatus",serviceStatus);
        return "service/allot/serviceallot";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewServiceAllot/{id}")
    public String viewServiceAllot(@PathVariable int id, Model model){
        ServiceAllot serviceAllot = serviceAllotBiz.serviceAllotList(new ServiceAllot(id)).get(0);
        model.addAttribute("serviceAllot", serviceAllot);
        return "service/allot/viewallot";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateAllot/{id}")
    public String updateAllot(@PathVariable int id, Model model){
        ServiceAllot serviceAllot = serviceAllotBiz.serviceAllotList(new ServiceAllot(id)).get(0);
        model.addAttribute("serviceAllot", serviceAllot);
        return "service/allot/allot";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateServiceAllotSave")
    public String updateServiceAllotSave(ServiceAllot serviceAllot){
        serviceAllot.setServiceStatus("已分配");
        serviceAllotBiz.updateServiceAllot(serviceAllot);
        return "redirect:/crm/serviceAllotList";
    }
    /**
     * 获取供应商列表
     * @return
     */
    @RequestMapping("/userList")
    @ResponseBody
    public List<User> ajaxGetUserList(){
        List<User> list = userBiz.listAll(null);
        return list;
    }
}
