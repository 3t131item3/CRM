package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.ProblemsBiz;
import szxs.accp.entity.Problems;
import szxs.accp.entity.ServiceCreate;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/crm")
public class ProblemsController {
    @Resource
    private ProblemsBiz problemsBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/problemsList")
    public String problemsList(Model model){
        model.addAttribute("problemsList",problemsBiz.problemsList(null));
        return "service/problems/problems";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchProblemsByCondition")
    public String searchProblemsByCondition(String problemsTitle,String serviceType,Model model){
        model.addAttribute("problemsList",problemsBiz.problemsList(new Problems(problemsTitle,serviceType)));
        model.addAttribute("problemsTitle",problemsTitle);
        model.addAttribute("serviceType",serviceType);
        return "service/problems/problems";
    }
    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addProblems")
    public String addProblems(){
        return "service/problems/addproblems";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addProblemsSave")
    public String addProblemsSave(Problems problems){
        problemsBiz.addProblems(problems);
        return "redirect:/crm/problemsList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateProblems/{id}")
    public String updateProblems(@PathVariable int id, Model model){
        Problems problems = problemsBiz.problemsList(new Problems(id)).get(0);
        model.addAttribute("problems", problems);
        return "service/problems/updateproblems";
    }
    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateProblemsSave")
    public String updateProblemsSave(Problems problems){
        problemsBiz.updateProblems(problems);
        return "redirect:/crm/probl" +
                "emsList";
    }
    /**
     * 查看
     * @param id
     * @param model
     *
     * @return
     */
    @RequestMapping("/viewProblems/{id}")
    public String viewProblems(@PathVariable int id, Model model){
        Problems problems = problemsBiz.problemsList(new Problems(id)).get(0);
        model.addAttribute("problems", problems);
        return "service/problems/viewproblems";
    }
    /**
     * 刪除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/deleteProblems/{id}")
    @ResponseBody
    public String deleteProblems(@PathVariable int id,Model model){
        if(problemsBiz.deleteProblems(id)){
            return "{\"delResult\":\"true\"}";
        }else {
            return "{\"delResult\":\"false\"}";
        }
    }
}
