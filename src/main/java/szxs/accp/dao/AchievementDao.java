package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Achievement;

import java.util.List;

public interface AchievementDao {
    /**
     * 查询所有
     * @param achievement
     * @return
     */
    List<Achievement> queryAchievement(Achievement achievement);

    /**
     * 添加
     * @param achievement
     * @return
     */
    int addAchievement(Achievement achievement);

    /**
     * 修改
     * @param achievement
     * @return
     */
    int modifyAchievement(Achievement achievement);

    /**
     * 删除
     * @param id
     * @return
     */
    int removeAchievement(@Param("id") int id);
}
