package szxs.accp.entity;

/**
 * 客户满意度管理
 */
public class CustomerSatisfaction {
    private int id ;
    private String customerCode;
    private String customerName ;
    private String sex;
    private String type;//客户类型
    private String creationTime ;//调查时间
    private String  status;//客户状态
    private String quality;//质量满意度
    private String service;//服务满意度
    private String cost ;//性价比满意度
    private String all;//总满意度
    private String voltar;//客户反馈

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(String creationTime) {
        this.creationTime = creationTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getAll() {
        return all;
    }

    public void setAll(String all) {
        this.all = all;
    }

    public String getVoltar() {
        return voltar;
    }

    public void setVoltar(String voltar) {
        this.voltar = voltar;
    }
}
