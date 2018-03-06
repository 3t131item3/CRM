package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Role;

import java.util.List;

public interface RoleDao {
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
    int addRole(Role role);

    /**
     * 修改
     * @param role
     * @return
     */
    int update(Role role);
    /**
     * 刪除
     * @param id
     * @return
     */
    int delete(@Param("id") int id);
}
