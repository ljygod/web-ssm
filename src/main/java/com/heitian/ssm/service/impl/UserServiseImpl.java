package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.UserMapper;
import com.heitian.ssm.model.User;
import com.heitian.ssm.service.UserService;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Ljy on 2017/7/1.
 */
@Service
@Transactional(rollbackOn = Exception.class)
public class UserServiseImpl implements UserService{

    @Resource
    private UserMapper userMapper;

    public User getUserById(String id){
        return userMapper.selectUserById(id);
    }

    public List<User> showAllUser() {
        return userMapper.showAllUser();
    }

    public void delUser(String user_id) {
        userMapper.delUser(user_id);
    }

    public void addUser(String use_id, String user_password, String user_auth) {
        userMapper.addUser(use_id,user_password,user_auth);
    }

    public void updateUser(String use_id, String user_password) {
        userMapper.updateUser(use_id, user_password);
    }
}
