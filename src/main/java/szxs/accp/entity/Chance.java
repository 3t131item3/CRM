package szxs.accp.entity;

public class Chance {
   private int id ;
    private String chanceName;
    private String chanceType;
    private String chanceSource;
    private String createdBy;
    private String creationTime;//注册时间
    private String chanceContent;
    private String allotUserName;//分配的销售代表

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getChanceName() {
        return chanceName;
    }

    public void setChanceName(String chanceName) {
        this.chanceName = chanceName;
    }

    public String getChanceType() {
        return chanceType;
    }

    public void setChanceType(String chanceType) {
        this.chanceType = chanceType;
    }

    public String getChanceSource() {
        return chanceSource;
    }

    public void setChanceSource(String chanceSource) {
        this.chanceSource = chanceSource;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(String creationTime) {
        this.creationTime = creationTime;
    }

    public String getChanceContent() {
        return chanceContent;
    }

    public void setChanceContent(String chanceContent) {
        this.chanceContent = chanceContent;
    }

    public String getAllotUserName() {
        return allotUserName;
    }

    public void setAllotUserName(String allotUserName) {
        this.allotUserName = allotUserName;
    }
}
