package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.AdministratorMapper;
import com.heitian.ssm.model.Administrator;
import com.heitian.ssm.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

/**
 * Created by Ljy on 2017/7/5.
 */
@Service
@Transactional(rollbackOn=Exception.class)
public class adminServiceImpl implements AdminService {

    @Resource
    private AdministratorMapper administratorMapper;
    public Administrator getAdminById(String admin_id) {
        return administratorMapper.getAdministratorById(admin_id);
    }
}
