package szxs.accp.dao;

import szxs.accp.entity.ContractCreate;

import java.util.List;

public interface ContractCreateDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractCreate> contractCreateList(ContractCreate contractCreate);

    /**
     * 新增
     * @return
     */
    int addContractCreate(ContractCreate contractCreate);
    /**
     * 修改或提交
     * @return
     */
    int updateContractCreate(ContractCreate contractCreate);
}
