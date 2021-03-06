package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.CustomerSatisfactionBiz;
import szxs.accp.dao.CustomerSatisfactionDao;
import szxs.accp.dao.CustomerVauleDao;
import szxs.accp.entity.CustomerSatisfaction;

import javax.annotation.Resource;
import java.util.List;
@Service("customerSatisfactionBiz")
public class CustomerSatisfactionBizImpl implements CustomerSatisfactionBiz {
    @Resource(name = "customerSatisfactionDao")
    private CustomerSatisfactionDao customerSatisfactionDao;
    public List<CustomerSatisfaction> customerSatisfactionList(CustomerSatisfaction customerSatisfaction) {
        return customerSatisfactionDao.customerSatisfactionList(customerSatisfaction);
    }

    public boolean addCustomerSatisfaction(CustomerSatisfaction customerSatisfaction) {
        return customerSatisfactionDao.addCustomerSatisfaction(customerSatisfaction)>0;
    }

    public boolean updateCustomerSatisfaction(CustomerSatisfaction customerSatisfaction) {
        return customerSatisfactionDao.updateCustomerSatisfaction(customerSatisfaction)>0;
    }

    public boolean deleteCustomerSatisfaction(int id) {
        return customerSatisfactionDao.deleteCustomerSatisfaction(id)>0;
    }
}
