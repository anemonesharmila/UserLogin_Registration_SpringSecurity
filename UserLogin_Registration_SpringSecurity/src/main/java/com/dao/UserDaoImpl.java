package com.dao;

import com.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Created by sharmila on 12/13/2015.
 */

@Repository("userDao")
public class UserDaoImpl implements UserDao{

    @Autowired
    SessionFactory sessionFactory;



    @Override
    @Transactional
    public int insert(User user) {
        Session session=sessionFactory.openSession();
        Transaction tx=session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
        Serializable id=session.getIdentifier(user);
        session.close();
        return (Integer) id;
    }

    @Override
    public int delete(int userId) {
        Session session= sessionFactory.openSession();
        Transaction tx=session.beginTransaction();
        User user =(User) session.load(User.class,userId);
        session.delete(user);
        tx.commit();
        Serializable s=session.getIdentifier(user);
        session.close();
        return (Integer) s;
    }

    @Override
    public int updateRow(User user) {
        Session session=sessionFactory.openSession();
        Transaction tx=session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
        Serializable se=session.getIdentifier(user);
        session.close();
        return (Integer) se;
    }

    @Override
    public List<User> getList() {
        Session session=sessionFactory.openSession();
        @SuppressWarnings("unchecked")
        List<User> userList =session.createQuery("from user").list();
        session.close();
        return userList;
    }

    @Override
    public User getRowById(int userId) {
        Session session=sessionFactory.openSession();
        Transaction tx=session.beginTransaction();
        User user =(User) session.load(User.class,userId);
        tx.commit();
        return user;
    }


}
