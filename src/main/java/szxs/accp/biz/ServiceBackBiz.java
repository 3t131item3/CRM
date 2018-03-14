package szxs.accp.biz;

import szxs.accp.entity.ServiceBack;

import java.util.List;

public interface ServiceBackBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceBack> serviceBackList(ServiceBack serviceBack);
    /**
     * 修改
     * @return
     */
    boolean updateServiceBack(ServiceBack serviceBack);
}
