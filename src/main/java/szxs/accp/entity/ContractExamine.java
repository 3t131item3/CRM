package szxs.accp.entity;

/**
 * 合同审核
 */
public class ContractExamine {
    private int id ;
    private String userName;
    private String contractName ;
    private String contractType  ;
    private float contractMoney  ;
    private String contractStatus  ;
    private String creationTime  ;//注册时间
    private String nextHanlder ;//待处理人，关联部门 找和他相同部门的销售经理
    private String firstParty ;//甲方
    private String secondParty;//乙方
    private String firstBusinessNumber ;//甲方营业许可证号
    private String secondBusinessNumber ;//乙方营业许可证号
    private String ContractContent ;//合同内容
    private String createdBy ;//操作人
    private String examine ;//审批意见

    public ContractExamine() { }

    public ContractExamine(int id) {
        this.id = id;
    }

    public ContractExamine(String userName, String contractType, String contractStatus) {
        this.userName = userName;
        this.contractType = contractType;
        this.contractStatus = contractStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType;
    }

    public float getContractMoney() {
        return contractMoney;
    }

    public void setContractMoney(float contractMoney) {
        this.contractMoney = contractMoney;
    }

    public String getContractStatus() {
        return contractStatus;
    }

    public void setContractStatus(String contractStatus) {
        this.contractStatus = contractStatus;
    }

    public String getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(String creationTime) {
        this.creationTime = creationTime;
    }

    public String getNextHanlder() {
        return nextHanlder;
    }

    public void setNextHanlder(String nextHanlder) {
        this.nextHanlder = nextHanlder;
    }

    public String getFirstParty() {
        return firstParty;
    }

    public void setFirstParty(String firstParty) {
        this.firstParty = firstParty;
    }

    public String getSecondParty() {
        return secondParty;
    }

    public void setSecondParty(String secondParty) {
        this.secondParty = secondParty;
    }

    public String getFirstBusinessNumber() {
        return firstBusinessNumber;
    }

    public void setFirstBusinessNumber(String firstBusinessNumber) {
        this.firstBusinessNumber = firstBusinessNumber;
    }

    public String getSecondBusinessNumber() {
        return secondBusinessNumber;
    }

    public void setSecondBusinessNumber(String secondBusinessNumber) {
        this.secondBusinessNumber = secondBusinessNumber;
    }

    public String getContractContent() {
        return ContractContent;
    }

    public void setContractContent(String contractContent) {
        ContractContent = contractContent;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getExamine() {
        return examine;
    }

    public void setExamine(String examine) {
        this.examine = examine;
    }
}
