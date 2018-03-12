package szxs.accp.biz;

import szxs.accp.entity.Achievement;

import java.util.List;

public interface AchievementBiz {
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
