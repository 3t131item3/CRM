package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ServiceCreate;

import java.util.List;

public interface ServiceCreateDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ServiceCreate> serviceCreateList(ServiceCreate serviceCreate);

    /**
     * 新增
     * @return
     */
    int addServiceCreate(ServiceCreate serviceCreate);
    /**
     * 修改或提交
     * @return
     */
    int updateServiceCreate(ServiceCreate serviceCreate);
    /**
     * 删除
     * @param id
     * @return
     */
    int deleteServiceCreate(@Param("id") int id);
}
