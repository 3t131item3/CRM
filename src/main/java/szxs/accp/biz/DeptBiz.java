package szxs.accp.biz;

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
}
