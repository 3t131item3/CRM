package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Achievement;

import java.util.List;

public interface AchievementDao {
    /**
     * 根据id查询
     * @param id
     * @return
     */
    Achievement queryById(@Param("id") int id);
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
