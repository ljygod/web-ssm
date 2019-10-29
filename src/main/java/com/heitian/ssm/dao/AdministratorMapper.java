package com.heitian.ssm.dao;

import com.heitian.ssm.model.Administrator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdministratorMapper {

    Administrator getAdministratorById(@Param("admin_id")String admin_id);
}