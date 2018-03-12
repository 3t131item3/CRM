package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.ContactsBiz;
import szxs.accp.entity.Contacts;
import szxs.accp.entity.Plan;

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
        model.addAttribute("contactslist",contactsBiz.contactsList(new Contacts(name)));
        model.addAttribute("name",name);
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
    @RequestMapping("/addContactsSave")
    public String addContactsSave(Model model, Contacts contacts){
        contactsBiz.addContacts(contacts);
        return "redirect:/crm/contactslist";
    }
    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/updateContacts/{id}")
    public String updateContacts(@PathVariable int id, Model model){
        Contacts contacts = contactsBiz.contactsList(new Contacts(id)).get(0);
        model.addAttribute("contacts", contacts);
        return "sales/contacts/updateContacts";
    }
    /**
     * 修改成功
     * @param model
     * @return
     */
    @RequestMapping("/updateContactsSave")
    public String updateContactsSave(Contacts contacts, Model model){
        contactsBiz.updateContacts(contacts);
        return "redirect:/crm/contactslist";
    }
    /**
     * 查看
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/viewContacts/{id}")
    public String viewContacts(@PathVariable int id, Model model){
        Contacts contacts = contactsBiz.contactsList(new Contacts(id)).get(0);
        model.addAttribute("contacts", contacts);
        return "sales/contacts/viewContacts";
    }
    /**
     * 删除
     * @return
     */
    @RequestMapping("/deleteContacts/{id}")
    public String deleteContacts(@PathVariable int id){
        contactsBiz.deleteContacts(id);
        return "redirect:/crm/contactslist";
    }
}
