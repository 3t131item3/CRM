package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContractExamineBiz;
import szxs.accp.biz.ContractManageBiz;
import szxs.accp.entity.ContractExamine;
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
   /* *//**
     * 根据条件查询所有
     * @return
     *//*
    @RequestMapping("/searchContractManageByCondition")
    public String searchContractManageByCondition(String contractName,String contractType,Model model){
        model.addAttribute("contractExamineList",contractManageBiz.contractManageList(new ContractExamine(contractName,contractType,contractStatus)));
        model.addAttribute("contractName",contractName);
        model.addAttribute("contractType",contractType);
        return "contract/check/check";
    }*/
}
