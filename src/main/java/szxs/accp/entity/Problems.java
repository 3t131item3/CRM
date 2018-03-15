package szxs.accp.entity;
/**
 * 常见问题
 */
public class Problems {
    private int id ;
    private String problemsTitle;//问题名称
    private String serviceType ;//
    private String createdBy;//操作人
    private String lastUpdateTime ;//最后修改时间
    private String responseContent;//答复内容
    private String remark ;//备注

    public Problems() { }

    public Problems(int id) {
        this.id = id;
    }

    public Problems(String problemsTitle, String serviceType) {
        this.problemsTitle = problemsTitle;
        this.serviceType = serviceType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProblemsTitle() {
        return problemsTitle;
    }

    public void setProblemsTitle(String problemsTitle) {
        this.problemsTitle = problemsTitle;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public String getResponseContent() {
        return responseContent;
    }

    public void setResponseContent(String responseContent) {
        this.responseContent = responseContent;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
