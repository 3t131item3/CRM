package szxs.accp.biz;

import szxs.accp.entity.ServiceDispose;

import java.util.List;

public interface ServiceDisposeBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceDispose> serviceDisposeList(ServiceDispose serviceDispose);
    /**
     * 修改
     * @return
     */
    boolean updateServiceDispose(ServiceDispose serviceDispose);
}
