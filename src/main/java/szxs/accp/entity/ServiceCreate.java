package szxs.accp.entity;

public class ServiceCreate {
    private int id ;
    private String serviceName;
    private String serviceType;
    private String serviceStatus;
    private String lastUpdateTime;//最后修改时间
    private String createdBy ;//操作人
    private String nextHanlder;//待处理人，关联部门 找和他相同部门的销售经理
    private String customerName ;//客户名字
    private String customerPhone ;
    private String serviceConcent;//
    private String remark ;

    public ServiceCreate() { }

    public ServiceCreate(int id) {
        this.id = id;
    }

    public ServiceCreate(String serviceName, String serviceType, String serviceStatus) {
        this.serviceName = serviceName;
        this.serviceType = serviceType;
        this.serviceStatus = serviceStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getServiceStatus() {
        return serviceStatus;
    }

    public void setServiceStatus(String serviceStatus) {
        this.serviceStatus = serviceStatus;
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

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getServiceConcent() {
        return serviceConcent;
    }

    public void setServiceConcent(String serviceConcent) {
        this.serviceConcent = serviceConcent;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
