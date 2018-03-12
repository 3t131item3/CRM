package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.CustomerVauleBiz;
import szxs.accp.dao.CustomerVauleDao;
import szxs.accp.dao.DeptDao;
import szxs.accp.entity.CustomerVaule;

import javax.annotation.Resource;
import java.util.List;

@Service("customerVauleBiz")
public class CustomerVauleBizImpl implements CustomerVauleBiz {
    @Resource(name = "customerVauleDao")
    private CustomerVauleDao customerVauleDao;

    public List<CustomerVaule> customerVauleList(CustomerVaule customerVaule) {
        return customerVauleDao.customerVauleList(customerVaule);
    }
}
