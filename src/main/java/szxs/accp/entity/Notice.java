package szxs.accp.entity;
/**
 * 公告实体类
 * @author 小小亮
 *
 */
public class Notice {
    private Integer id;
    private String noticeCode;//公告编码
    private String title;//公告标题
    private String type; //公告类型
    private String issueTime;//发布时间
    private String issueBy;//发布人
    private String content;//内容


    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNoticeCode() {
        return noticeCode;
    }
    public void setNoticeCode(String noticeCode) {
        this.noticeCode = noticeCode;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getIssueTime() {
        return issueTime;
    }
    public void setIssueTime(String issueTime) {
        this.issueTime = issueTime;
    }
    public String getIssueBy() {
        return issueBy;
    }
    public void setIssueBy(String issueBy) {
        this.issueBy = issueBy;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
