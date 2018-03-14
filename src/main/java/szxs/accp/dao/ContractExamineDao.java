package szxs.accp.dao;

import szxs.accp.entity.ContractCreate;
import szxs.accp.entity.ContractExamine;

import java.util.List;

public interface ContractExamineDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractExamine> contractExamineList(ContractExamine contractExamine);
    /**
     * 审核
     * @return
     */
    int updateContractExamine(ContractExamine contractExamine);
}
