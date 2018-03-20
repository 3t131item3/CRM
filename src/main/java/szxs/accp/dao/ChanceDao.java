package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;

public interface ChanceDao {
    int updateChance(@Param("id") int id,@Param("allotUserName") String allotUserName);
}
