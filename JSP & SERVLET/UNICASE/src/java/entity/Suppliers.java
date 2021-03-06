package entity;
// Generated Nov 1, 2017 7:58:02 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Suppliers generated by hbm2java
 */
public class Suppliers {


     private String id;
     private String name;
     private String logo;
     private String email;
     private String phone;
     private Set<Products> productses = new HashSet<Products>(0);

    public Suppliers() {
    }

	
    public Suppliers(String id, String name, String logo, String email, String phone) {
        this.id = id;
        this.name = name;
        this.logo = logo;
        this.email = email;
        this.phone = phone;
    }
    public Suppliers(String id, String name, String logo, String email, String phone, Set<Products> productses) {
       this.id = id;
       this.name = name;
       this.logo = logo;
       this.email = email;
       this.phone = phone;
       this.productses = productses;
    }
   
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getLogo() {
        return this.logo;
    }
    
    public void setLogo(String logo) {
        this.logo = logo;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public Set<Products> getProductses() {
        return this.productses;
    }
    
    public void setProductses(Set<Products> productses) {
        this.productses = productses;
    }




}


