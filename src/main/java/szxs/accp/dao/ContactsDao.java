package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Contacts;
import szxs.accp.entity.Plan;

import java.util.List;

public interface ContactsDao {
    /**
     * 查询联系人全部信息或根据联系人名称模糊查询
     * @return
     */
    List<Contacts> contactsList(Contacts contacts);

    /**
     * 添加联系人
     * @param contacts
     * @return
     */
    int addContacts(Contacts contacts);
    /**
     * 修改
     * @return
     */
    int updateContacts(Contacts contacts);
    /**
     * 删除
     * @param id
     * @return
     */
    int deleteContacts(@Param("id") int id);
}
