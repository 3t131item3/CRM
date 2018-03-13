package szxs.accp.biz;

import szxs.accp.entity.ContractManage;

import java.util.List;

public interface ContractManageBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractManage> contractManageList(ContractManage contractManage);
}
