package szxs.accp.dao;

import szxs.accp.entity.CustomerSatisfaction;
import szxs.accp.entity.CustomerVaule;

import java.util.List;

public interface CustomerSatisfactionDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerSatisfaction> customerSatisfactionList(CustomerSatisfaction customerSatisfaction);
}
