package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Dept;

import java.util.List;

public interface DeptBiz {
    /**
     * 查询部门
     *
     *
     *
     * @param dept
     * @return
     */
    List<Dept> list(Dept dept);
    boolean remove(int id);
    boolean add(Dept dept);
    boolean modify(Dept dept);
}
