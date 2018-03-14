package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ProblemsBiz;
import szxs.accp.dao.ProblemsDao;
import szxs.accp.dao.ServiceDisposeDao;
import szxs.accp.entity.Problems;

import javax.annotation.Resource;
import java.util.List;

@Service("problemsBiz")
public class ProblemsBizImpl implements ProblemsBiz {
    @Resource(name = "problemsDao")
    private ProblemsDao problemsDao;

    public List<Problems> problemsList(Problems problems) {
        return problemsDao.problemsList(problems);
    }

    public boolean addProblems(Problems problems) {
        return problemsDao.addProblems(problems)>0;
    }

    public boolean updateProblems(Problems problems) {
        return problemsDao.updateProblems(problems)>0;
    }

    public boolean deleteProblems(int id) {
        return problemsDao.deleteProblems(id)>0;
    }
}
