package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Contacts;

import java.util.List;

public interface ContactsDao {
    /**
     * 查询联系人全部信息或根据联系人名称模糊查询
     * @param name
     * @return
     */
    List<Contacts>ContactsList(@Param("name")String name);

}
