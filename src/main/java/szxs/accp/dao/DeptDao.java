package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;
import szxs.accp.entity.Dept;

import java.util.List;

public interface DeptDao {
    /**
     * 查询部门
     * @return
     */
    List<Dept>list(Dept dept);
    /**
     *删除部门
     * @param id
     * @return
     */
    int remove(@Param("id") int id);

    /**
     * 添加部门
     * @param dept
     * @return
     */
    int add(Dept dept);

    /**
     * 修改部门
     * @param dept
     * @return
     */
    int modify(Dept dept);

}
