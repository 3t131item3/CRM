package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ConstituteBiz;
import szxs.accp.biz.ContactsBiz;
import szxs.accp.entity.Constitute;
import szxs.accp.entity.Forecast;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ConstituteController {
    @Resource
    private ConstituteBiz constituteBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/constituteList")
    public String constituteList(Model model){
        model.addAttribute("constituteList", constituteBiz.constituteList(null));
        return "constitute/constitute/constitute";
    }
    /**
     * 根据月份查询所有
     * @return
     */
    @RequestMapping("/searchConstituteByMonth")
    public String searchConstituteByMonth(String month,Model model){
        model.addAttribute("constituteList",constituteBiz.constituteList(new Constitute(month)));
        model.addAttribute("month", month);
        return "constitute/constitute/constitute";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewConstitute/{id}")
    public String viewConstitute(@PathVariable int id, Model model){
        /*Forecast forecast = forecastBiz.forecastList(new Forecast(id)).get(0);
        model.addAttribute("forecast", forecast);*/
        return "constitute/constitute/xxx";
    }
}
