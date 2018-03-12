package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.CustomerReputationBiz;
import szxs.accp.dao.CustomerReputationDao;
import szxs.accp.dao.CustomerResourceDao;
import szxs.accp.entity.CustomerReputation;

import javax.annotation.Resource;
import java.util.List;

@Service("customerReputationBiz")
public class CustomerReputationBizImpl implements CustomerReputationBiz {
    @Resource(name = "customerReputationDao")
    private CustomerReputationDao customerReputationDao;

    public List<CustomerReputation> customerReputationList(CustomerReputation customerReputation) {
        return customerReputationDao.customerReputationList(customerReputation);
    }
}
