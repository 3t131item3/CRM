package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;

public interface ChanceBiz {
    boolean updateChance(int id,String allotUserName);
}
