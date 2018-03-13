package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ContractCreateBiz;
import szxs.accp.dao.ContractCreateDao;
import szxs.accp.dao.CustomerReputationDao;
import szxs.accp.entity.ContractCreate;

import javax.annotation.Resource;
import java.util.List;
@Service("contractCreateBiz")
public class ContractCreateBizImpl implements ContractCreateBiz {
    @Resource(name = "contractCreateDao")
    private ContractCreateDao contractCreateDao;

    public List<ContractCreate> contractCreateList(ContractCreate contractCreate) {
        return contractCreateDao.contractCreateList(contractCreate);
    }

    public boolean addContractCreate(ContractCreate contractCreate) {
        return contractCreateDao.addContractCreate(contractCreate)>0;
    }

    public boolean updateContractCreate(ContractCreate contractCreate) {
        return contractCreateDao.updateContractCreate(contractCreate)>0;
    }
}
