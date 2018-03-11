package szxs.accp.biz;

import szxs.accp.entity.Plan;

import java.util.List;

public interface PlanBiz {
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
    boolean addPlan(Plan plan);
    /**
     * 修改或提交
     * @param plan
     * @return
     */
    boolean updatePlan(Plan plan);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deletePlan(int id);
}
