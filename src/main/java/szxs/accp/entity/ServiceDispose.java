package szxs.accp.entity;
/**
 * 服务处理
 */
public class ServiceDispose {
    private int id ;
    private String serviceName;
    private String serviceType;
    private String serviceStatus;
    private String createTime;//最后修改时间
    private String createdBy ;//操作人
    private String nextHanlder;//待处理人，关联部门 找和他相同部门的销售经理
    private String customerPhone ;
    private String serviceConcent;//
    private String disposeResult;//处理结果
    private String disposeRemark;

    public ServiceDispose() { }

    public ServiceDispose(int id) {
        this.id = id;
    }

    public ServiceDispose(String serviceName, String serviceType, String serviceStatus) {
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

    public String getDisposeResult() {
        return disposeResult;
    }

    public void setDisposeResult(String disposeResult) {
        this.disposeResult = disposeResult;
    }

    public String getDisposeRemark() {
        return disposeRemark;
    }

    public void setDisposeRemark(String disposeRemark) {
        this.disposeRemark = disposeRemark;
    }
}
