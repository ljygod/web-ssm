package com.heitian.ssm.dao;

import com.heitian.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {


    User selectUserById(@Param("user_id") String user_Id);

    List<User> showAllUser();

    void delUser(@Param("user_id") String user_id);

    void addUser(@Param("user_id") String user_id,@Param("user_password") String user_password,@Param("user_auth") String user_auth);

    void updateUser(@Param("user_id")String user_id,@Param("password")String password);
}