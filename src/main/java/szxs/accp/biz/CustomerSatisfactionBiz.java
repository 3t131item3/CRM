package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.CustomerSatisfaction;

import java.util.List;

public interface CustomerSatisfactionBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<CustomerSatisfaction> customerSatisfactionList(CustomerSatisfaction customerSatisfaction);
    /**
     * 新增
     * @return
     */
    boolean addCustomerSatisfaction(CustomerSatisfaction customerSatisfaction);
    /**
     * 修改
     * @return
     */
    boolean updateCustomerSatisfaction(CustomerSatisfaction customerSatisfaction);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deleteCustomerSatisfaction( int id);
}
