package szxs.accp.biz;

import szxs.accp.entity.CustomerVaule;

import java.util.List;

public interface CustomerVauleBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerVaule> customerVauleList(CustomerVaule customerVaule);
}
