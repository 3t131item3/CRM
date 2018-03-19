package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.ConstituteBiz;
import szxs.accp.dao.ConstituteDao;
import szxs.accp.dao.ContactsDao;
import szxs.accp.entity.Constitute;

import javax.annotation.Resource;
import java.util.List;
@Service("constituteBiz")
public class ConstituteBizImpl implements ConstituteBiz {
    @Resource(name ="constituteDao" )
    private ConstituteDao constituteDao;

    public List<Constitute> constituteList(Constitute constitute) {
        return constituteDao.constituteList(constitute);
    }
}
