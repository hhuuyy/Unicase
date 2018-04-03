/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Categories;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author Huy
 */
public class CategoriesDao {
    
    public List<Categories> showCategory(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        String sql="from Categories";
        Query query = session.createQuery(sql);
        List<Categories> list = query.list();
        session.close();
        return list;
        
    }
    
}
