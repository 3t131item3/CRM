package szxs.accp.entity;
/**
 * 角色实体类
 * @author 小小亮
 *
 */
public class Role {

    private Integer id;//主键id
    private String roleCode;//角色编码
    private String roleName;//角色名称
    private String createTime;//创建时间
    private String createdBy;//创建者
    private String remark;//备注
    private String lastUpdateTime;//最后修改时间
    //private Integer isStart;//是否启用;1启用0不启用
    //private Integer deptId;//部门Id
    private Dept dept;
    public Role(){}

    public Role(Integer id) {
        this.id = id;
    }

    public Role(String roleName) {
        this.roleName = roleName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }
}