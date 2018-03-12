package szxs.accp.entity;

/**
 * 销售计划
 */
public class Plan {
    private Integer id;//主键id
    private String code;
    private String userName;
    private String month; //月份
    private String status; //状态
    private String planContent;// 计划内容
    private String lastUpdateTime;//最后修改时间
    private String createdBy;//操作人
    private String nextHanlder; //待处理人，关联部门 找和他相同部门的销售经理

    public Plan() { }

    public Plan(Integer id) {
        this.id = id;
    }


    public Plan(String month) {
        this.month = month;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPlanContent() {
        return planContent;
    }

    public void setPlanContent(String planContent) {
        this.planContent = planContent;
    }

    public String getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getNextHanlder() {
        return nextHanlder;
    }

    public void setNextHanlder(String nextHanlder) {
        this.nextHanlder = nextHanlder;
    }
}
