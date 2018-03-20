package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.CustomerResourceBiz;
import szxs.accp.dao.CustomerResourceDao;
import szxs.accp.entity.CustomerResource;

import javax.annotation.Resource;
import java.util.List;

@Service("customerResourceBiz")
public class CustomerResourceBizImpl implements CustomerResourceBiz {
    @Resource(name = "customerResourceDao")
    private CustomerResourceDao customerResourceDao;

    public List<CustomerResource> customerResourceAllList() {
        return customerResourceDao.customerResourceAllList();
    }

    public List<CustomerResource> customerResourceList(CustomerResource customerResource) {
        return customerResourceDao.customerResourceList(customerResource);
    }

    public boolean addCustomerResource(CustomerResource customerResource) {
        return customerResourceDao.addCustomerResource(customerResource)>0;
    }

    public boolean updateCustomerResource(CustomerResource customerResource) {
        return customerResourceDao.updateCustomerResource(customerResource)>0;
    }

    public boolean deleteCustomerResource(int id) {
        return customerResourceDao.deleteCustomerResource(id)>0;
    }
}
