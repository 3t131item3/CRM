package szxs.accp.dao;

import szxs.accp.entity.CustomerReputation;
import szxs.accp.entity.CustomerVaule;

import java.util.List;

public interface CustomerReputationDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerReputation> customerReputationList(CustomerReputation customerReputation);
}
