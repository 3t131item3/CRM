package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.DeptBiz;
import szxs.accp.dao.DeptDao;
import szxs.accp.entity.Dept;

import javax.annotation.Resource;
import java.util.List;
@Service("deptBiz")
public class DeptBizImpl implements DeptBiz {
@Resource(name = "deptDao")
private DeptDao deptDao;

    public List<Dept> list(Dept dept) {
        return deptDao.list(dept);
    }
}
