package szxs.accp.entity;

/**
 * 销售预测
 */
public class Forecast {
    private Integer id;//主键id
    private String title; //标题
    private String result; //结果
    private String month;//月份 来根据月份来查询
    private String date;//创建时间
    private Dept dept; //指定部门
    private Integer scale; //部门规模人数
    private Integer customerNum; //客户数量
    private String type; //类型 在预测那里加一个
    private String createdBy;//操作人

    public Forecast() { }

    public Forecast(Integer id) {
        this.id = id;
    }

    public Forecast(String month) {
        this.month = month;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getId() {
        return id;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Integer getScale() {
        return scale;
    }

    public void setScale(Integer scale) {
        this.scale = scale;
    }

    public Integer getCustomerNum() {
        return customerNum;
    }

    public void setCustomerNum(Integer customerNum) {
        this.customerNum = customerNum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
}
