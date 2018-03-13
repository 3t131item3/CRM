package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ContractManageBiz;
import szxs.accp.dao.ContractExamineDao;
import szxs.accp.dao.ContractManageDao;
import szxs.accp.entity.ContractManage;

import javax.annotation.Resource;
import java.util.List;
@Service("contractManageBiz")
public class ContractManageBizImpl implements ContractManageBiz {
    @Resource(name = "contractManageDao")
    private ContractManageDao contractManageDao;

    public List<ContractManage> contractManageList(ContractManage contractManage) {
        return contractManageDao.contractManageList(contractManage);
    }
}
