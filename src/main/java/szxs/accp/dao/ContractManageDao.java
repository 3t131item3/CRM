package szxs.accp.dao;

import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ContractExamine;
import szxs.accp.entity.ContractManage;

import java.util.List;

public interface ContractManageDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractManage> contractManageList(ContractManage contractManage);
    /**
     * 处理合同，管理合同
     * @return
     */
    int updateContractManage(ContractManage contractManage);
}
