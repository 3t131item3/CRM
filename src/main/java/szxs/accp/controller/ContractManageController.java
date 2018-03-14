package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContractExamineBiz;
import szxs.accp.biz.ContractManageBiz;
import szxs.accp.entity.ContractExamine;
import szxs.accp.entity.ContractManage;
import szxs.accp.entity.Plan;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ContractManageController {
    @Resource
    private ContractManageBiz contractManageBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/contractManageList")
    public String contractManageList(Model model){
        model.addAttribute("contractManageList", contractManageBiz.contractManageList(null));
        return "contract/manage/manage";
    }

    /**
     * 根据条件查询所有
     * @param contractName
     * @param contractType
     * @param model
     * @return
     */
    @RequestMapping("/searchContractManageByCondition")
    public String searchContractManageByCondition(String contractName,String contractType,Model model){
        model.addAttribute("contractManageList",contractManageBiz.contractManageList(new ContractManage(contractName,contractType)));
        model.addAttribute("contractName",contractName);
        model.addAttribute("contractType",contractType);
        return "contract/manage/manage";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewContractManage/{id}")
    public String viewContractManage(@PathVariable int id, Model model){
        ContractManage contractManage = contractManageBiz.contractManageList(new ContractManage(id)).get(0);
        model.addAttribute("contractManage", contractManage);
        return "contract/manage/viewmanage";
    }
    /**
     * 跳转到执行修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateExecuteContractManage/{id}")
    public String updateExecuteContractManage(@PathVariable int id, Model model){
        ContractManage executecontractManage = contractManageBiz.contractManageList(new ContractManage(id)).get(0);
        model.addAttribute("contractManage", executecontractManage);
        return "contract/manage/executemanage";
    }

    /**
     * 修改执行操作
     * @return
     */
    @RequestMapping("/updateExecutemanageSave")
    public String updateExecutemanageSave(ContractManage contractManage){
        contractManage.setContractStatus("已执行");
        contractManageBiz.updateContractManage(contractManage);
        return "redirect:/crm/contractManageList";
    }
    /**
     * 跳转到变更修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateChangeCreateManage/{id}")
    public String updateChangeCreateManage(@PathVariable int id, Model model){
        ContractManage executecontractManage = contractManageBiz.contractManageList(new ContractManage(id)).get(0);
        model.addAttribute("contractManage", executecontractManage);
        return "contract/manage/changemanage";
    }

    /**
     * 修改变更操作
     * @return
     */
    @RequestMapping("/updateChangemanageSave")
    public String updateChangemanageSave(ContractManage contractManage){
        contractManage.setContractStatus("已变更");
        contractManageBiz.updateContractManage(contractManage);
        return "redirect:/crm/contractManageList";
    }
    /**
     * 跳转到转让修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateTransfereCreateManage/{id}")
    public String updateTransfereCreateManage(@PathVariable int id, Model model){
        ContractManage executecontractManage = contractManageBiz.contractManageList(new ContractManage(id)).get(0);
        model.addAttribute("contractManage", executecontractManage);
        return "contract/manage/transfermanage";
    }

    /**
     * 修改转让操作
     * @return
     */
    @RequestMapping("/updateTransfermanageSave")
    public String updateTransfermanageSave(ContractManage contractManage){
        contractManage.setContractStatus("已转让");
        contractManageBiz.updateContractManage(contractManage);
        return "redirect:/crm/contractManageList";
    }
    /**
     * 跳转到解除修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateRelieveCreateManage/{id}")
    public String updateRelieveCreateManage(@PathVariable int id, Model model){
        ContractManage executecontractManage = contractManageBiz.contractManageList(new ContractManage(id)).get(0);
        model.addAttribute("contractManage", executecontractManage);
        return "contract/manage/relievemanage";
    }

    /**
     * 修改解除操作
     * @return
     */
    @RequestMapping("/updateRelievemanageSave")
    public String updateRelievemanageSave(ContractManage contractManage){
        contractManage.setContractStatus("已解除");
        contractManageBiz.updateContractManage(contractManage);
        return "redirect:/crm/contractManageList";
    }
}
