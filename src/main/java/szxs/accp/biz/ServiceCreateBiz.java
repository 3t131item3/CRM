package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.ServiceCreate;

import java.util.List;

public interface ServiceCreateBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceCreate> serviceCreateList(ServiceCreate serviceCreate);

    /**
     * 新增
     * @return
     */
    boolean addServiceCreate(ServiceCreate serviceCreate);
    /**
     * 修改或提交
     * @return
     */
    boolean updateServiceCreate(ServiceCreate serviceCreate);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deleteServiceCreate(@Param("id") int id);
}
