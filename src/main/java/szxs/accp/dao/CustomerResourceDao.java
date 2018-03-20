package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.CustomerResource;

import java.util.List;

public interface CustomerResourceDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerResource> customerResourceAllList();

    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerResource> customerResourceList(CustomerResource customerResource);

    /**
     * 新增
     * @return
     */
    int addCustomerResource(CustomerResource customerResource);
    /**
     * 修改
     * @return
     */
    int updateCustomerResource(CustomerResource customerResource);
    /**
     * 删除
     * @param id
     * @return
     */
    int deleteCustomerResource(@Param("id") int id);
}
