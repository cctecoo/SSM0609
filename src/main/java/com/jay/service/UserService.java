package com.jay.service;

import com.github.pagehelper.PageInfo;
import com.jay.entities.User;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.util.List;

public interface UserService {
    List<User> getAllUser();

    User getUserById(Integer id);

    List<User> getUserByCondition(String name, String department, String locationInfo);

    List<String> getLocationInfo();

    XSSFWorkbook exportExcelInfo(String locationInfo) throws Exception;

    void addUser(User user);

    void updateUser(User user);
}