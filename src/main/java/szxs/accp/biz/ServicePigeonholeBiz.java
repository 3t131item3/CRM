package szxs.accp.biz;

import szxs.accp.entity.ServicePigeonhole;

import java.util.List;

public interface ServicePigeonholeBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServicePigeonhole> servicePigeonholeList(ServicePigeonhole servicePigeonhole);
    /**
     * 修改
     * @return
     */
    boolean updateServicePigeonhole(ServicePigeonhole servicePigeonhole);
}
