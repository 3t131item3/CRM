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

    public List<Contacts> contactsList(Contacts contacts) {
        return contactsDao.contactsList(contacts);
    }

    public boolean addContacts(Contacts contacts) {
        return contactsDao.addContacts(contacts)>0;
    }

    public boolean updateContacts(Contacts contacts) {
        return contactsDao.updateContacts(contacts)>0;
    }

    public boolean deleteContacts(int id) {
        return contactsDao.deleteContacts(id)>0;
    }
}
