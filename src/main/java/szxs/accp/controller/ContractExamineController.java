package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContractCreateBiz;
import szxs.accp.biz.ContractExamineBiz;
import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ContractExamine;
import szxs.accp.entity.Plan;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ContractExamineController {
    @Resource
    private ContractExamineBiz contractExamineBiz;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/contractExamineList")
    public String contractExamineList(Model model){
        model.addAttribute("contractExamineList", contractExamineBiz.contractExamineList(null));
        return "contract/check/check";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchContractExamineByCondition")
    public String searchContractExamineByCondition(String contractName,String contractType,String contractStatus,Model model){
        model.addAttribute("contractExamineList",contractExamineBiz.contractExamineList(new ContractExamine(contractName,contractType,contractStatus)));
        model.addAttribute("contractName",contractName);
        model.addAttribute("contractType",contractType);
        model.addAttribute("contractStatus",contractStatus);
        return "contract/check/check";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateContractExamine/{id}")
    public String updateContractExamine(@PathVariable int id, Model model){
        ContractExamine contractExamine = contractExamineBiz.contractExamineList(new ContractExamine(id)).get(0);
        model.addAttribute("contractExamine", contractExamine);
        return "contract/check/updatecheck";
    }

    /**
     * 修改成功
     * @return
     */
    @RequestMapping("/updateContractExamineSave")
    public String updateContractExamineSave(ContractExamine contractExamine){
        contractExamine.setContractStatus("已审核");
        contractExamineBiz.updateContractExamine(contractExamine);
        return "redirect:/crm/contractExamineList";
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewContractExamine/{id}")
    public String viewContractExamine(@PathVariable int id, Model model){
        ContractExamine contractExamine = contractExamineBiz.contractExamineList(new ContractExamine(id)).get(0);
        model.addAttribute("contractExamine", contractExamine);
        return "contract/check/viewcheck";
    }
}
