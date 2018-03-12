package szxs.accp.biz;

import szxs.accp.entity.CustomerReputation;

import java.util.List;

public interface CustomerReputationBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerReputation> customerReputationList(CustomerReputation customerReputation);
}
