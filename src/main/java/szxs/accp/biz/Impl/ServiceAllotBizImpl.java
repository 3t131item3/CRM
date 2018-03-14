package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ServiceAllotBiz;
import szxs.accp.dao.ServiceAllotDao;
import szxs.accp.dao.UserDao;
import szxs.accp.entity.ServiceAllot;

import javax.annotation.Resource;
import java.util.List;

@Service("serviceAllotBiz")
public class ServiceAllotBizImpl implements ServiceAllotBiz {
    @Resource(name = "serviceAllotDao")
    private ServiceAllotDao serviceAllotDao;

    public List<ServiceAllot> serviceAllotList(ServiceAllot serviceAllot) {
        return serviceAllotDao.serviceAllotList(serviceAllot);
    }

    public boolean updateServiceAllot(ServiceAllot serviceAllot) {
        return serviceAllotDao.updateServiceAllot(serviceAllot)>0;
    }
}
