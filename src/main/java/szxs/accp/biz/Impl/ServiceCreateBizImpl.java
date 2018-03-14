package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ServiceCreateBiz;
import szxs.accp.dao.ServiceCreateDao;
import szxs.accp.dao.UserDao;
import szxs.accp.entity.ServiceCreate;

import javax.annotation.Resource;
import java.util.List;

@Service("serviceCreateBiz")
public class ServiceCreateBizImpl implements ServiceCreateBiz {
    @Resource(name = "userDao")
    private ServiceCreateDao serviceCreateDao;

    public List<ServiceCreate> serviceCreateList(ServiceCreate serviceCreate) {
        return serviceCreateDao.serviceCreateList(serviceCreate);
    }

    public boolean addServiceCreate(ServiceCreate serviceCreate) {
        return serviceCreateDao.addServiceCreate(serviceCreate)>0;
    }

    public boolean updateServiceCreate(ServiceCreate serviceCreate) {
        return serviceCreateDao.updateServiceCreate(serviceCreate)>0;
    }

    public boolean deleteServiceCreate(int id) {
        return serviceCreateDao.deleteServiceCreate(id)>0;
    }
}
