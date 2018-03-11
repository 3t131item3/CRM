package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.PlanBiz;
import szxs.accp.dao.PlanDao;
import szxs.accp.entity.Plan;

import javax.annotation.Resource;
import java.util.List;

@Service("planBiz")
public class PlanBizImpl implements PlanBiz {

    @Resource(name = "planDao")
    private PlanDao planDao;

    public List<Plan> planList(Plan plan) {
        return planDao.planList(plan);
    }

    public boolean addPlan(Plan plan) {
        return planDao.addPlan(plan)>0;
    }

    public boolean updatePlan(Plan plan) {
        return planDao.updatePlan(plan)>0;
    }

    public boolean deletePlan(int id) {
        return planDao.deletePlan(id)>0;
    }
}
