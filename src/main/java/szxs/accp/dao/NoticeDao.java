package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Notice;

import java.util.List;

public interface NoticeDao {
    /**
     * 查询所有公告信息或者根据公告标题查询
     * @param title
     * @return
     */
   List<szxs.accp.entity.Notice>listNoticeAll(@Param("title")String title);

    /**
     * 新增公告
     * @param notice
     * @return
     */
   int addNotice(Notice notice);

    /**
     * 查询公告类型
     * @return
     */
  List<Notice> selecttype(Notice notice);
}
