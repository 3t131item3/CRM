package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Role;

import java.util.List;

public interface RoleBiz {
    /**
     *查询所有角色或根据角色名称查询角色
     * @return
     */
    List<Role>roleList(Role role);
    /**
     * 新增角色信息
     * @param role
     * @return
     */
    boolean addRole(Role role);
    /**
     * 修改
     * @param role
     * @return
     */
    boolean modify(Role role);
    /**
     * 刪除
     * @param id
     * @return
     */
    boolean delete(int id);
}
