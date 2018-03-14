package szxs.accp.biz;

import szxs.accp.entity.ContractExamine;

import java.util.List;

public interface ContractExamineBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractExamine> contractExamineList(ContractExamine contractExamine);
    /**
     * 审核
     * @return
     */
    boolean updateContractExamine(ContractExamine contractExamine);
}
