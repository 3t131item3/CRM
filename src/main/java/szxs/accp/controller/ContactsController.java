package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crm")
public class ContactsController {
    @RequestMapping("/contacts")
    public String contacts(){
        return "sales/contacts";
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
