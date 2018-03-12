package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.DeptBiz;
import szxs.accp.biz.ForecastBiz;
import szxs.accp.entity.Dept;
import szxs.accp.entity.Forecast;
import szxs.accp.entity.Plan;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/crm")
public class ForecastController {
    @Resource
    private ForecastBiz forecastBiz;
    @Resource
    private DeptBiz deptBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/forecastList")
    public String forecastList(Model model){
        model.addAttribute("forecastList", forecastBiz.forecastList(null));
        return "sales/forecast/forecast";
    }
    /**
     * 根据月份查询所有
     * @return
     */
    @RequestMapping("/searchforecastByMonth")
    public String searchforecastByMonth(String month,Model model){
        model.addAttribute("forecastList",forecastBiz.forecastList(new Forecast(month)));
        model.addAttribute("month", month);
        return "sales/forecast/forecast";
    }
    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addForecast")
    public String addForecast(){
        return "sales/forecast/addforecast";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addForecastSave")
    public String addForecastSave(Forecast forecast){
        forecastBiz.addForecast(forecast);
        return "redirect:/crm/forecastList";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewForecast/{id}")
    public String viewPlan(@PathVariable int id, Model model){
        Forecast forecast = forecastBiz.forecastList(new Forecast(id)).get(0);
        model.addAttribute("forecast", forecast);
        return "sales/forecast/viewforecast";
    }
    /**
     * 获取供应商列表
     * @return
     */
    @RequestMapping("/deptList")
    @ResponseBody
    public List<Dept> ajaxGetProviderList(){
        List<Dept> list = deptBiz.list(null);
        return list;
    }
}
