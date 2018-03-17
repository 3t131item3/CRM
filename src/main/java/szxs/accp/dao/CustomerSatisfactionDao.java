package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.CustomerResource;
import szxs.accp.entity.CustomerSatisfaction;
import szxs.accp.entity.CustomerVaule;

import java.util.List;

public interface CustomerSatisfactionDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerSatisfaction> customerSatisfactionList(CustomerSatisfaction customerSatisfaction);
    /**
     * 新增
     * @return
     */
    int addCustomerSatisfaction(CustomerSatisfaction customerSatisfaction);
    /**
     * 修改
     * @return
     */
    int updateCustomerSatisfaction(CustomerSatisfaction customerSatisfaction);
    /**
     * 删除
     * @param id
     * @return
     */
    int deleteCustomerSatisfaction(@Param("id") int id);
}
