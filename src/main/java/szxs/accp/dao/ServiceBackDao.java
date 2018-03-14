package szxs.accp.dao;

import szxs.accp.entity.Problems;
import szxs.accp.entity.ServiceBack;

import java.util.List;

public interface ServiceBackDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceBack> serviceBackList(ServiceBack serviceBack);
    /**
     * 修改
     * @return
     */
    int updateServiceBack(ServiceBack serviceBack);
}
