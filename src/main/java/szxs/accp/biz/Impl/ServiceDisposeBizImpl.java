package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ServiceDisposeBiz;
import szxs.accp.dao.ServiceCreateDao;
import szxs.accp.dao.ServiceDisposeDao;
import szxs.accp.entity.ServiceDispose;

import javax.annotation.Resource;
import java.util.List;

@Service("serviceDisposeBiz")
public class ServiceDisposeBizImpl implements ServiceDisposeBiz {
    @Resource(name = "serviceDisposeDao")
    private ServiceDisposeDao serviceDisposeDao;

    public List<ServiceDispose> serviceDisposeList(ServiceDispose serviceDispose) {
        return serviceDisposeDao.serviceDisposeList(serviceDispose);
    }

    public boolean updateServiceDispose(ServiceDispose serviceDispose) {
        return serviceDisposeDao.updateServiceDispose(serviceDispose)>0;
    }
}
