package com.jay.service.impl;

import com.jay.dao.PCInfoDao;
import com.jay.entities.PCInfo;
import com.jay.service.PCInfoService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("pcInfoServiceImpl")
@Scope("prototype")
public class PCInfoServiceImpl implements PCInfoService {

    @Resource
    private PCInfoDao pcInfoDao;

    @Override
    public List<PCInfo> getAllPCInfos() {
        return pcInfoDao.getAllPCInfos();
    }

    @Override
    public PCInfo getPCInfoByUserId(Integer userId) {
        return pcInfoDao.getPCInfoByUserId(userId);
    }

    @Override
    public PCInfo getPCInfoByMac(String xipMac) {
        return pcInfoDao.getPCInfoByMac(xipMac);
    }

    @Override
    public void addPCInfo(PCInfo pcInfo) {
        pcInfoDao.addPCInfo(pcInfo);
    }

    @Override
    public void updatePCInfo(PCInfo pcInfo) {
        pcInfoDao.updatePCInfo(pcInfo);
    }
}
