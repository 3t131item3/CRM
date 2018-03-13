package szxs.accp.dao;

import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ContractManage;

import java.util.List;

public interface ContractManageDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractManage> contractManageList(ContractManage contractManage);
}
