package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Contacts;

import java.util.List;

public interface ContactsBiz {
    /**
     * 查询联系人全部信息或根据联系人名称模糊查询
     * @return
     */
    List<Contacts>contactsList(Contacts contacts);

    /**
     * 添加联系人
     * @param contacts
     * @return
     */
    boolean addContacts(Contacts contacts);
    /**
     * 修改
     * @return
     */
    boolean updateContacts(Contacts contacts);
    /**
     * 删除
     * @param id
     * @return
     */
    boolean deleteContacts(@Param("id") int id);
}
