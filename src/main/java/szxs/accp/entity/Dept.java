package szxs.accp.entity;

public class Dept {
    /**
     * 部门（组织）结构实体类
     * @author 小小亮
     *
     */
    private Integer id;//部门编号
    private  String  deptCode;// 部门编码
    private  String  name;// 部门名称
    private  String  lastUpdateTime;// 最后修改时间
    private  String  operator;//操作人
    private  String  intro;//部门简介
    private  String  remark;//备注

    public Dept() { }

    public Dept(String name) {
        this.name = name;
    }

    public Dept(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getDeptCode() {
        return deptCode;
    }
    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getLastUpdateTime() {
        return lastUpdateTime;
    }
    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }
    public String getOperator() {
        return operator;
    }
    public void setOperator(String operator) {
        this.operator = operator;
    }
    public String getIntro() {
        return intro;
    }
    public void setIntro(String intro) {
        this.intro = intro;
    }
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }

}
