package com.jay.dao;

import com.jay.entities.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserDao {
    List<User> getAllUsers();

    User getUserById(Integer id);

    List<User> getUserByCondition(@Param("name") String name, @Param("department") String department, @Param("locationInfo") String locationInfo);

    List<String> getLocationInfo();

    List<Map<String, Object>> findUserForExcel(@Param("locationInfo") String locationInfo) throws Exception;

    void addUser(User user);

    void updateUser(User user);
}