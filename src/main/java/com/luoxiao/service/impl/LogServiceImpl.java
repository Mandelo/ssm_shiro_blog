package com.luoxiao.service.impl;

import com.luoxiao.dao.LogDao;
import com.luoxiao.model.LogModal;
import com.luoxiao.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by losho on 2018-09-11.
 */
@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogDao logDao;

    @Override
    public void insertLog(LogModal log) {
        logDao.insertLog(log);
    }
}
