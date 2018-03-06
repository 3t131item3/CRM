package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Notice;

import java.util.List;

public interface NoticeBiz {
    /**
     * 查询所有公告信息或者根据公告标题查询
     * @param title
     * @return
     */
    List<Notice> listNoticAll(@Param("title")String title);
    /**
     * 新增公告
     * @param notice
     * @return
     */
    boolean addNotice(Notice notice);


    /**
     * 查询公告类型
     * @return
     */
    List<Notice> selecttype(Notice notice);
}
