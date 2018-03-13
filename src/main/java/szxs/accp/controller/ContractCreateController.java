package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContractCreateBiz;
import szxs.accp.biz.UserBiz;
import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/crm")
public class ContractCreateController {
    @Resource
    private ContractCreateBiz contractCreateBiz;
    @Resource
    private UserBiz userBiz;
    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/contractCreateList")
    public String planList(Model model){
        model.addAttribute("contractCreateList",contractCreateBiz.contractCreateList(null));
        return "contract/create/create";
    }
    /**
     * 根据条件查询所有
     * @return
     */
    @RequestMapping("/searchContractCreateByCondition")
    public String searchContractCreateByCondition(String contractName,String contractType,String contractStatus,Model model){
        model.addAttribute("contractCreateList",contractCreateBiz.contractCreateList(new ContractCreate(contractName,contractType,contractStatus)));
        model.addAttribute("contractName",contractName);
        model.addAttribute("contractType",contractType);
        model.addAttribute("contractStatus",contractStatus);
        return "contract/create/create";
    }

    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/addContractCreate")
    public String addContractCreate(){
        return "contract/create/addcreate";
    }
    /**
     * 新增保存
     * @return
     */
    @RequestMapping("/addContractCreateSave")
    public String addContractCreateSave(ContractCreate contractCreate){
        contractCreateBiz.addContractCreate(contractCreate);
        return "redirect:/crm/contractCreateList";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateContractCreate/{id}")
    public String updatePlan(@PathVariable int id, Model model){
        ContractCreate contractCreate = contractCreateBiz.contractCreateList(new ContractCreate(id)).get(0);
        model.addAttribute("contractCreate", contractCreate);
        return "contract/create/updatecreate";
    }

    /**
     * 修改成功
     * @param model
     * @return
     */
    @RequestMapping("/updateContractCreateSave")
    public String updateContractCreateSave(ContractCreate contractCreate, Model model){
        contractCreateBiz.updateContractCreate(contractCreate);
        return "redirect:/crm/contractCreateList";
    }

    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewContractCreate/{id}")
    public String viewPlan(@PathVariable int id, Model model){
        ContractCreate contractCreate = contractCreateBiz.contractCreateList(new ContractCreate(id)).get(0);
        model.addAttribute("contractCreate", contractCreate);
        return "contract/create/viewcreate";
    }
    /**
     * 点击提交
     * @return
     */
    @RequestMapping("/commitContractCreate/{id}/{userName}")
    public String commitPlan(@PathVariable int id, @PathVariable String userName, Model model) throws UnsupportedEncodingException {
        String name = new String(userName.getBytes("iso8859-1"),"utf-8");
        ContractCreate c = contractCreateBiz.contractCreateList(new ContractCreate(id)).get(0);
        c.setContractStatus("已提交");
        User userByUserName = userBiz.getUserByUserName(userName);
        if(userByUserName!=null){
            c.setNextHanlder(userByUserName.getUserName());
        }
        contractCreateBiz.updateContractCreate(c);
        return "redirect:/crm/contractCreateList";
    }
}
