package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Plan;

import java.util.List;


public interface PlanDao {
    /**
     * 根据条件查询相应内容
     * @param plan
     * @return
     */
    List<Plan> planList(Plan plan);

    /**
     * 新增
     * @param plan
     * @return
     */
    int addPlan(Plan plan);
    /**
     * 修改或提交
     * @param plan
     * @return
     */
    int updatePlan(Plan plan);
    /**
     * 删除
     * @param id
     * @return
     */
    int deletePlan(@Param("id") int id);
}
