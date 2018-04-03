/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import entity.Products;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author Huy
 */
public class ProductsDao {

    
    public List<Products> showProductbyCate(int categoryId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        String hql="from Products where categories.id =:categoryId";
        Query query = session.createQuery(hql);
        query.setParameter("categoryId", categoryId);
        List<Products> list = query.list();
        session.close();
        return list;
    }
    
    public List<Products> showProduct(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        String hql="from Products";         
        Query query = session.createQuery(hql);
        List<Products> list = query.list();
        session.close();
        return list;
    }
    
//    public List<Products> showDetailbyProduct(int id){
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        session.getTransaction().begin();
//        String hql="from Products where id =:id";         
//        Query query = session.createQuery(hql);
//        query.setParameter("id", id);
//        List<Products> list = query.list();
//        session.close();
//        return list;
//    }
    
    
    public Products showDetailbyProduct(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Products products = (Products) session.get(Products.class, id);
        session.close();
        return products;
    }
}
