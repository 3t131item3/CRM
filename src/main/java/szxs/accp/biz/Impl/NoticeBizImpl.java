package szxs.accp.biz.Impl;


import org.springframework.stereotype.Service;
import szxs.accp.biz.NoticeBiz;
import szxs.accp.dao.NoticeDao;
import szxs.accp.entity.Notice;

import javax.annotation.Resource;
import java.util.List;
@Service("niticeBiz")
public class NoticeBizImpl implements NoticeBiz{
    @Resource(name = "noticeDao")
    NoticeDao noticeDao;
    public List<Notice> listNoticAll(String title) {
        return noticeDao.listNoticeAll(title);
    }

    public boolean addNotice(Notice notice) {
        return noticeDao.addNotice(notice)>0;
    }

    public List<Notice> selecttype(Notice notice) {
        return noticeDao.selecttype(notice);
    }
}
