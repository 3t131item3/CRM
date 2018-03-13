package szxs.accp.biz;

import szxs.accp.entity.ContractCreate;

import java.util.List;

public interface ContractCreateBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<ContractCreate> contractCreateList(ContractCreate contractCreate);

    /**
     * 新增
     * @return
     */
    boolean addContractCreate(ContractCreate contractCreate);
    /**
     * 修改或提交
     * @return
     */
    boolean updateContractCreate(ContractCreate contractCreate);
}
