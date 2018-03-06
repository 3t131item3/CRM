package szxs.accp.biz.Impl;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import szxs.accp.biz.RoleBiz;
import szxs.accp.dao.RoleDao;
import szxs.accp.entity.Role;

import javax.annotation.Resource;
import java.util.List;
@Service("roleBiz")
public class RoleBizImpl implements RoleBiz{

    @Resource(name = "roleDao")
    private RoleDao roleDao;

    public List<Role> roleList(Role role) {
        return roleDao.roleList(role);
    }

    public boolean addRole(Role role) {
        return roleDao.addRole(role)>0;
    }
    public boolean modify(Role role) {
        return roleDao.update(role)>0;
    }

    public boolean delete(int id) {
        return roleDao.delete(id)>0;
    }
}
