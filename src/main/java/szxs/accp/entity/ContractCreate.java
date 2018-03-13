package szxs.accp.entity;

/**
 * 合同创建
 */
public class ContractCreate {
    private int id ;
    private String contractName ;
    private String userName;
    private String contractType;
    private float contractMoney;
    private String contractStatus;
    private String lastUpdateTime ;//最后修改时间
    private String nextHanlder;//待处理人，关联部门 找和他相同部门的销售经理
    private String firstParty;//甲方
    private String secondParty ;//乙方
    private String firstBusinessNumber ;//甲方营业许可证号
    private String secondBusinessNumber ;//乙方营业许可证号
    private String ContractContent ;//合同内容
    private String remark ;//备注

    public ContractCreate() { }

    public ContractCreate(int id) {
        this.id = id;
    }

    public ContractCreate(String contractName, String contractType, String contractStatus) {
        this.contractName = contractName;
        this.contractType = contractType;
        this.contractStatus = contractStatus;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
