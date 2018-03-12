package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.AchievementBiz;
import szxs.accp.dao.AchievementDao;
import szxs.accp.entity.Achievement;

import javax.annotation.Resource;
import java.util.List;
@Service("achievementBiz")
public class AchievementBizImpl implements AchievementBiz {
    @Resource(name="achievementDao")
    private AchievementDao achievementDao;

    public Achievement queryById(int id) {
        return achievementDao.queryById(id);
    }

    public List<Achievement> queryAchievement() {
        return achievementDao.queryAchievement();
    }

    public boolean addAchievement(Achievement achievement) {
        return achievementDao.addAchievement(achievement)>0;
    }

    public boolean modifyAchievement(Achievement achievement) {
        return achievementDao.modifyAchievement(achievement)>0;
    }

    public boolean removeAchievement(int id) {
        return achievementDao.removeAchievement(id)>0;
    }
}
