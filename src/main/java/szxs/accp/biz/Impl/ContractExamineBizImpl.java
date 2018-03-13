package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ContractExamineBiz;
import szxs.accp.dao.ContractCreateDao;
import szxs.accp.dao.ContractExamineDao;
import szxs.accp.entity.ContractExamine;

import javax.annotation.Resource;
import java.util.List;
@Service("contractExamineBiz")
public class ContractExamineBizImpl implements ContractExamineBiz {
    @Resource(name = "contractExamineDao")
    private ContractExamineDao contractExamineDao;

    public List<ContractExamine> contractExamineList(ContractExamine contractExamine) {
        return contractExamineDao.contractExamineList(contractExamine);
    }
}
