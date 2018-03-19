package szxs.accp.dao;

import szxs.accp.entity.Constitute;

import java.util.List;

public interface ConstituteDao {
    /**
     * 查询联系人全部信息或根据联系人名称模糊查询
     * @return
     */
    List<Constitute> constituteList(Constitute constitute);
}
