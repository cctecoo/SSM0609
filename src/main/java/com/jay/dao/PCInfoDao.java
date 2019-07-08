package com.jay.dao;

import com.jay.entities.PCInfo;

import java.util.List;

public interface PCInfoDao {

    List<PCInfo> getAllPCInfos();

    PCInfo getPCInfoByUserId(Integer userId);

    PCInfo getPCInfoByMac(String xipMac);

    void addPCInfo(PCInfo pcInfo);

    void updatePCInfo(PCInfo pcInfo);
}
