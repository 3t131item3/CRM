package szxs.accp.dao;

import szxs.accp.entity.CustomerVaule;

import java.util.List;

public interface CustomerVauleDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerVaule> customerVauleList(CustomerVaule customerVaule);
}
