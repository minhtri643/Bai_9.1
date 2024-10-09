
package murach.business;


public class Product {
    private String code;
    private String description;

    public Product(String code, String description) {
        this.code = code;
        this.description = description;
    }
    
    public void setcode(String code) {
        this.code = code;
    }
    
    public void setdescription(String description) {
        this.description = description;
    }

    public String getCode() {
        return code;
    }

    public String getDescription() {
        return description;
    }
}
