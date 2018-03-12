package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ContactsBiz;
import szxs.accp.dao.ContactsDao;
import szxs.accp.entity.Contacts;

import javax.annotation.Resource;
import java.util.List;
@Service("contactsBiz")
public class ContactsBizImpl implements ContactsBiz {
    @Resource(name ="contactsDao" )
    private ContactsDao contactsDao;
    public List<Contacts> ContactsList(String name) {
        return contactsDao.ContactsList(name);
    }
}
