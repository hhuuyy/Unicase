package entity;
// Generated Nov 1, 2017 7:58:02 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Products generated by hbm2java
 */
public class Products {


     private int id;
     private Categories categories;
     private Suppliers suppliers;
     private String name;
     private String unitBrief;
     private double unitPrice;
     private String image;
     private Date productDate;
     private boolean available;
     private String description;
     private int quantity;
     private double discount;
     private Integer views;
     private Boolean new_;
     private Boolean special;
     private Set<OrderDetails> orderDetailses = new HashSet<OrderDetails>(0);

    public Products() {
    }

	
    public Products(int id, Categories categories, Suppliers suppliers, String name, String unitBrief, double unitPrice, String image, Date productDate, boolean available, int quantity, double discount) {
        this.id = id;
        this.categories = categories;
        this.suppliers = suppliers;
        this.name = name;
        this.unitBrief = unitBrief;
        this.unitPrice = unitPrice;
        this.image = image;
        this.productDate = productDate;
        this.available = available;
        this.quantity = quantity;
        this.discount = discount;
    }
    public Products(int id, Categories categories, Suppliers suppliers, String name, String unitBrief, double unitPrice, String image, Date productDate, boolean available, String description, int quantity, double discount, Integer views, Boolean new_, Boolean special, Set<OrderDetails> orderDetailses) {
       this.id = id;
       this.categories = categories;
       this.suppliers = suppliers;
       this.name = name;
       this.unitBrief = unitBrief;
       this.unitPrice = unitPrice;
       this.image = image;
       this.productDate = productDate;
       this.available = available;
       this.description = description;
       this.quantity = quantity;
       this.discount = discount;
       this.views = views;
       this.new_ = new_;
       this.special = special;
       this.orderDetailses = orderDetailses;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Categories getCategories() {
        return this.categories;
    }
    
    public void setCategories(Categories categories) {
        this.categories = categories;
    }
    public Suppliers getSuppliers() {
        return this.suppliers;
    }
    
    public void setSuppliers(Suppliers suppliers) {
        this.suppliers = suppliers;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getUnitBrief() {
        return this.unitBrief;
    }
    
    public void setUnitBrief(String unitBrief) {
        this.unitBrief = unitBrief;
    }
    public double getUnitPrice() {
        return this.unitPrice;
    }
    
    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    public Date getProductDate() {
        return this.productDate;
    }
    
    public void setProductDate(Date productDate) {
        this.productDate = productDate;
    }
    public boolean isAvailable() {
        return this.available;
    }
    
    public void setAvailable(boolean available) {
        this.available = available;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public int getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(double discount) {
        this.discount = discount;
    }
    public Integer getViews() {
        return this.views;
    }
    
    public void setViews(Integer views) {
        this.views = views;
    }
    public Boolean getNew_() {
        return this.new_;
    }
    
    public void setNew_(Boolean new_) {
        this.new_ = new_;
    }
    public Boolean getSpecial() {
        return this.special;
    }
    
    public void setSpecial(Boolean special) {
        this.special = special;
    }
    public Set<OrderDetails> getOrderDetailses() {
        return this.orderDetailses;
    }
    
    public void setOrderDetailses(Set<OrderDetails> orderDetailses) {
        this.orderDetailses = orderDetailses;
    }




}


