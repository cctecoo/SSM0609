package com.jay.entities;

import java.sql.Timestamp;

public class User {
    private Integer id;
    private String name;
    private String department;
    private String locationInfo;
    private String tel;
    private Timestamp updatedTime;

    public User() {
    }

    public User(String name, String department, String locationInfo, String tel, Timestamp updatedTime) {
        this.name = name;
        this.department = department;
        this.locationInfo = locationInfo;
        this.tel = tel;
        this.updatedTime = updatedTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getLocationInfo() {
        return locationInfo;
    }

    public void setLocationInfo(String locationInfo) {
        this.locationInfo = locationInfo;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }


    public Timestamp getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Timestamp updatedTime) {
        this.updatedTime = updatedTime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", locationInfo='" + locationInfo + '\'' +
                ", tel='" + tel + '\'' +
                ", updatedTime=" + updatedTime +
                '}';
    }
}