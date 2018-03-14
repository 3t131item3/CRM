package szxs.accp.entity;

/**
 * 服务归档
 */
public class ServicePigeonhole {
    private int id ;
    private String serviceName;
    private String serviceType;
    private String serviceStatus;
    private String createTime;//最后修改时间
    private String createdBy ;//操作人
    private String nextHanlder;//待处理人，关联部门 找和他相同部门的销售经理
    private String customerPhone ;
    private String serviceConcent;//
    private String backResult;//处理结果
    private String backRemark;
    private String isPigeonhole; //是否归档

    public ServicePigeonhole() { }

    public ServicePigeonhole(int id) {
        this.id = id;
    }

    public ServicePigeonhole(String serviceName, String serviceType, String serviceStatus) {
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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
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

    public String getBackResult() {
        return backResult;
    }

    public void setBackResult(String backResult) {
        this.backResult = backResult;
    }

    public String getBackRemark() {
        return backRemark;
    }

    public void setBackRemark(String backRemark) {
        this.backRemark = backRemark;
    }

    public String getIsPigeonhole() {
        return isPigeonhole;
    }

    public void setIsPigeonhole(String isPigeonhole) {
        this.isPigeonhole = isPigeonhole;
    }
}
