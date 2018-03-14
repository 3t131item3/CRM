package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ServicePigeonholeBiz;
import szxs.accp.dao.ServiceDisposeDao;
import szxs.accp.dao.ServicePigeonholeDao;
import szxs.accp.entity.ServicePigeonhole;

import javax.annotation.Resource;
import java.util.List;

@Service("servicePigeonholeBiz")
public class ServicePigeonholeBizImpl implements ServicePigeonholeBiz {
    @Resource(name = "servicePigeonholeDao")
    private ServicePigeonholeDao servicePigeonholeDao;

    public List<ServicePigeonhole> servicePigeonholeList(ServicePigeonhole servicePigeonhole) {
        return servicePigeonholeDao.servicePigeonholeList(servicePigeonhole);
    }

    public boolean updateServicePigeonhole(ServicePigeonhole servicePigeonhole) {
        return servicePigeonholeDao.updateServicePigeonhole(servicePigeonhole)>0;
    }
}
