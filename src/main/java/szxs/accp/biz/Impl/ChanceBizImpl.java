package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ChanceBiz;
import szxs.accp.dao.AchievementDao;
import szxs.accp.dao.ChanceDao;

import javax.annotation.Resource;

@Service("chanceBiz")
public class ChanceBizImpl implements ChanceBiz {
    @Resource(name="chanceDao")
    private ChanceDao chanceDao;

    public boolean updateChance(int id, String allotUserName) {
        return chanceDao.updateChance(id,allotUserName)>0;
    }
}
