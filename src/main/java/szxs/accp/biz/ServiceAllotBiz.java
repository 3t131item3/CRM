package szxs.accp.biz;

import szxs.accp.entity.ServiceAllot;

import java.util.List;

public interface ServiceAllotBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceAllot> serviceAllotList(ServiceAllot serviceAllot);
    /**
     * 修改
     * @return
     */
    boolean updateServiceAllot(ServiceAllot serviceAllot);
}
