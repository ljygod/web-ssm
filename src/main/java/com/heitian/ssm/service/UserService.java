package com.heitian.ssm.service;

import com.heitian.ssm.model.User;

import java.util.List;

/**
 * Created by Ljy on 2017/7/1.
 */
public interface UserService {

    User getUserById(String user_id);

    List<User> showAllUser();

    void delUser(String user_id);

    void addUser(String use_id,String user_password,String user_auth);

    void updateUser(String use_id,String user_password);
}
