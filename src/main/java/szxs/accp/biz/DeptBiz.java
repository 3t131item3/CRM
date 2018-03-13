package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Dept;

import java.util.List;

public interface DeptBiz {
    /**
     * 查询部门
     * @param dept
     * @return
     */
    List<Dept> list(Dept dept);
    /**
     * 删除部门
     * @param id
     * @return
     */
    boolean remove(int id);

    /**
     * 添加部门
     * @param dept
     * @return
     */
    boolean add(Dept dept);

    /**
     * 修改部门
     * @param dept
     * @return
     */
    boolean modify(Dept dept);
}
