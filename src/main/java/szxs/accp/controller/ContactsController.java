package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContactsBiz;
import szxs.accp.entity.Contacts;

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

    /**
     * 跳转至增加界面
     * @return
     */
    @RequestMapping("/addContacts")
    public String addContacts(){
        return "sales/contacts/addContacts";
    }

    /**
     * 增加信息
     * @param model
     * @param contacts
     * @return
     */
    @RequestMapping("/contactsadd")
    public String contactsadd(Model model, Contacts contacts){
        if (contactsBiz.ContactsAdd(contacts)){
            return "redirect:/crm/contactslist";
        }else {
            return "redirect:/crm/addContacts";
        }
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
