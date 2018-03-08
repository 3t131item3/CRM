package szxs.accp.entity;

import java.util.Date;

/**
 * 权限实体类
 * @author 小小亮
 *
 */
public class Permission {


    private Integer id;//编号
    private Integer roleId;//角色Id
    private Integer functionId;//功能id
    private Date creationTime;//创建时间
    private String createedBy;//操作人

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getRoleId() {
        return roleId;
    }
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
    public Integer getFunctionId() {
        return functionId;
    }
    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }
    public Date getCreationTime() {
        return creationTime;
    }
    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }
    public String getCreateedBy() {
        return createedBy;
    }
    public void setCreateedBy(String createedBy) {
        this.createedBy = createedBy;
    }



}
