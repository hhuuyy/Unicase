/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;
import dao.ProductsDao;
import entity.Products;

public class DBConnect {

    public static Connection getConnection() {
        Connection cons = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cons = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=UNICASE;user=sa;password=123");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
        ProductsDao pD = new ProductsDao();
//        List<Products> list = pD.showProductbyCate(1);
//        for(Products p2: list){
//            System.out.println(p2.getName());
//        }

        Products ps = pD.showDetailbyProduct(1);
        System.out.println(ps.getName());
    }
}
