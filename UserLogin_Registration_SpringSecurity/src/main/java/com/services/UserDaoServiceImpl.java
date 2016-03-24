package com.services;

import com.dao.UserDao;
import com.model.User;
import com.model.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by sharmila on 12/18/2015.
 */

@Service("userDaoService")
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class UserDaoServiceImpl implements UserDaoService {

    @Autowired
    UserDao userDao;


    @Override
    public int insert(User user) {

        return userDao.insert(user);
    }

    @Override
    public int delete(int userId) {
        return userDao.delete(userId);
    }

    @Override
    public int updateRow(User user) {
        return userDao.updateRow(user);
    }

    @Override
    public List<User> getList() {
        return userDao.getList();
    }

    @Override
    public User getRowById(int userId) {
        return userDao.getRowById(userId);

    }
}
