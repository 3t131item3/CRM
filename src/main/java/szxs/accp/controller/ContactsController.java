package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContactsBiz;

import javax.annotation.Resource;

@Controller
@RequestMapping("/crm")
public class ContactsController {
    @Resource
    private ContactsBiz contactsBiz;

    /**
     * 跳转至联系人界面
     * @param model
     * @param name
     * @return
     */

    @RequestMapping("/contactslist")
    public String contactslist(Model model,String name){
        model.addAttribute("contacts",contactsBiz.ContactsList(name));
        return "/sales/contacts/contacts";
    }
    @RequestMapping("/addContacts")
    public String addContacts(){
        return "sales/addContacts";
    }
    @RequestMapping("/updateContacts")
    public String updateContacts(){
        return "sales/updateContacts";
    }
    @RequestMapping("/viewContacts")
    public String viewContacts(){
        return "sales/viewContacts";
    }
}
