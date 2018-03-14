package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Problems;

import java.util.List;

public interface ProblemsBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<Problems> problemsList(Problems problems);

    /**
     * 新增
     * @return
     */
    boolean addProblems(Problems problems);
    /**
     * 修改
     * @return
     */
    boolean updateProblems(Problems problems);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deleteProblems(int id);
}
