package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Plan;
import szxs.accp.entity.Problems;

import java.util.List;

public interface ProblemsDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<Problems> problemsList(Problems problems);

    /**
     * 新增
     * @return
     */
    int addProblems(Problems problems);
    /**
     * 修改
     * @return
     */
    int updateProblems(Problems problems);
    /**
     * 删除
     * @param id
     * @return
     */
    int deleteProblems(@Param("id") int id);
}
