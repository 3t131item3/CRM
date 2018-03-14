package szxs.accp.dao;

import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ServiceAllot;

import java.util.List;

public interface ServiceAllotDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceAllot> serviceAllotList(ServiceAllot serviceAllot);
    /**
     * 修改
     * @return
     */
    int updateServiceAllot(ServiceAllot serviceAllot);
}
