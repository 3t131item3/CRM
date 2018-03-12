package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Achievement;

import java.util.List;

public interface AchievementBiz {
    /**
     * 根据id查询
     * @param id
     * @return
     */
    Achievement queryById(int id);
    /**
     * 查询所有
     * @param
     * @return
     */
    List<Achievement> queryAchievement();

    /**
     * 添加
     * @param achievement
     * @return
     */
    boolean addAchievement(Achievement achievement);

    /**
     * 修改
     * @param achievement
     * @return
     */
    boolean modifyAchievement(Achievement achievement);

    /**
     * 删除
     * @param id
     * @return
     */
    boolean removeAchievement(int id);
}
