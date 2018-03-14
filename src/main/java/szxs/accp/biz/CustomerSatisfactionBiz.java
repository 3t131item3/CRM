package szxs.accp.biz;

import szxs.accp.entity.CustomerSatisfaction;

import java.util.List;

public interface CustomerSatisfactionBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerSatisfaction> customerSatisfactionList(CustomerSatisfaction customerSatisfaction);
}
