package szxs.accp.entity;

public class Constitute {
   private int id ;
    private String customerCount;//客户数量
    private String month;//月份
    private String yearOnyear ;//同比
    private String comparative;//环比

    public Constitute() { }

    public Constitute(int id) {
        this.id = id;
    }

    public Constitute(String month) {
        this.month = month;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerCount() {
        return customerCount;
    }

    public void setCustomerCount(String customerCount) {
        this.customerCount = customerCount;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getYearOnyear() {
        return yearOnyear;
    }

    public void setYearOnyear(String yearOnyear) {
        this.yearOnyear = yearOnyear;
    }

    public String getComparative() {
        return comparative;
    }

    public void setComparative(String comparative) {
        this.comparative = comparative;
    }
}
