package szxs.accp.dao;

import szxs.accp.entity.ServiceDispose;
import szxs.accp.entity.ServicePigeonhole;

import java.util.List;

public interface ServicePigeonholeDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServicePigeonhole>servicePigeonholeList(ServicePigeonhole servicePigeonhole);
    /**
     * 修改
     * @return
     */
    int updateServicePigeonhole(ServicePigeonhole servicePigeonhole);
}
