package szxs.accp.dao;

import szxs.accp.entity.ServiceBack;
import szxs.accp.entity.ServiceDispose;

import java.util.List;

public interface ServiceDisposeDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceDispose> serviceDisposeList(ServiceDispose serviceDispose);
    /**
     * 修改
     * @return
     */
    int updateServiceDispose(ServiceDispose serviceDispose);
}
