package szxs.accp.entity;

/**
 *客户信誉度管理
 */
public class CustomerReputation {
    private int id ;
    private String customerName;
    private String sex ;
    private String type;
    private int number ;//消费次数
    private String grade ;

    public CustomerReputation() { }

    public CustomerReputation(int id) {
        this.id = id;
    }
    public CustomerReputation(String customerName) {
        this.customerName = customerName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }
}
