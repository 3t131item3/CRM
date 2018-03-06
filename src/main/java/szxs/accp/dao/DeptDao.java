package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Dept;

import java.util.List;

public interface DeptDao {
    /**
     * 查询部门
     * @return
     */
    List<Dept>list(Dept dept);

}
