package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ServiceBackBiz;
import szxs.accp.dao.ServiceBackDao;
import szxs.accp.dao.ServiceCreateDao;
import szxs.accp.entity.ServiceBack;

import javax.annotation.Resource;
import java.util.List;

@Service("serviceBackBiz")
public class ServiceBackBizImpl implements ServiceBackBiz {
    @Resource(name = "serviceBackDao")
    private ServiceBackDao serviceBackDao;

    public List<ServiceBack> serviceBackList(ServiceBack serviceBack) {
        return serviceBackDao.serviceBackList(serviceBack);
    }

    public boolean updateServiceBack(ServiceBack serviceBack) {
        return serviceBackDao.updateServiceBack(serviceBack)>0;
    }
}
