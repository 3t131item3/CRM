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
    int remove(@Param("id") int id);
    int add(Dept dept);
    int modify(Dept dept);

}
