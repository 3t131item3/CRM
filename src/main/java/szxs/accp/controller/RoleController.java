package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.DeptBiz;
import szxs.accp.biz.RoleBiz;
import szxs.accp.entity.Role;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/crm")
public class RoleController {
    @Resource
    private RoleBiz roleBiz;
    @Resource
    private DeptBiz deptBiz;

//    @RequestMapping("/role")
//    public String roleList(Model model,String roleName){
//        model.addAttribute("roleList",roleBiz.roleList(roleName));
//        return "system/role/rolelist";
//    }

    /**
     * 按名字模糊查询
     * @param model
     * @return
     */
    @RequestMapping("/rolelist")
    public String roleListByName(String roleName, Model model){
        model.addAttribute("roleList",roleBiz.roleList(new Role(roleName)));
        model.addAttribute("roleName",roleName);
        return "system/role/rolelist";
    }

    /**
     * 跳转至新增页面
     * @return
     */
    @RequestMapping("/addRole")
    public String addRole(Model model){
        model.addAttribute("deptList",deptBiz.list(null));
        return "system/role/roleadd";
    }
    /**
     * 新增角色信息
     * @param role
     * @param model
     * @return
     */
    @RequestMapping("/addRoleSave")
    public String addRoleSave(Role role,Model model){
        String code="crm-"+UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        role.setRoleCode(code);
        if(roleBiz.addRole(role)){
               return "redirect:/crm/rolelist";
          }else {
              return "redirect:/crm/add";
        }
    }
    /**
     * 跳转至修改信息
     * @param model
     * @return
     */
    @RequestMapping("/modify/{id}")
    public String modify(@PathVariable int id, Model model){
        model.addAttribute("deptList",deptBiz.list(null));
        List<Role> roleList = roleBiz.roleList(new Role(id));
        if(roleList.size()>0){
            model.addAttribute("role",roleList.get(0));
        }
        return "system/role/rolemodify";
    }

    /**
     * 修改角色信息
     * @param model
     * @return
     */
    @RequestMapping("/modifySave")
    public String modifySave(Role role,Model model){
        String code="crm-"+UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        role.setRoleCode(code);
        if(roleBiz.modify(role)){
            return "redirect:/crm/rolelist";
        }else {
            model.addAttribute("error", "修改角色信息失败!");
            return "redirect:/crm/modify/"+role.getId();
        }
    }

    /**
     * 刪除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable int id,Model model){
        roleBiz.delete(id);
        return "redirect:/crm/rolelist";
    }

}
