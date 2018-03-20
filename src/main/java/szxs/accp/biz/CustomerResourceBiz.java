package szxs.accp.biz;

import szxs.accp.entity.CustomerResource;

import java.util.List;

public interface CustomerResourceBiz {
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
    boolean addCustomerResource(CustomerResource customerResource);
    /**
     * 修改或提交
     * @return
     */
    boolean updateCustomerResource(CustomerResource customerResource);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deleteCustomerResource(int id);
}
