package com.jay.entities;

import java.sql.Timestamp;

public class PCInfo {
    /**
     * 机器名称
     */
    private String xipName;
    /**
     * CPU
     */
    private String xipCpu;
    /**
     * 内存
     */
    private String xipRam;
    /**
     * 主板
     */
    private String xipBoard;
    /**
     * BIOS
     */
    private String xipBios;
    /**
     * 硬盘
     */
    private String xipYp;
    /**
     * 显卡
     */
    private String xipXk;
    /**
     * 显示器
     */
    private String xipXsq;
    /**
     * 网卡MAC
     */
    private String xipMac;
    /**
     * IP
     */
    private String xipIp;
    /**
     * 操作系统
     */
    private String xipOs;
    /**
     * 类型
     */
    private String xipType;
    /**
     * 固定资产编号
     */
    private String fixedAssetsNo;
    /**
     * 备注
     */
    private String remark;
    private Integer userId;
    private Timestamp updatedTime;

    public PCInfo() {
    }

    public PCInfo(String xipName, String xipCpu, String xipRam, String xipBoard, String xipBios, String xipYp,
                  String xipXk, String xipXsq, String xipMac, String xipIp, String xipOs, String xipType, String fixedAssetsNo,
                  String remark, Integer userId, Timestamp updatedTime) {
        this.xipName = xipName;
        this.xipCpu = xipCpu;
        this.xipRam = xipRam;
        this.xipBoard = xipBoard;
        this.xipBios = xipBios;
        this.xipYp = xipYp;
        this.xipXk = xipXk;
        this.xipXsq = xipXsq;
        this.xipMac = xipMac;
        this.xipIp = xipIp;
        this.xipOs = xipOs;
        this.xipType = xipType;
        this.fixedAssetsNo = fixedAssetsNo;
        this.remark = remark;
        this.userId = userId;
        this.updatedTime = updatedTime;
    }

    public String getXipName() {
        return xipName;
    }

    public void setXipName(String xipName) {
        this.xipName = xipName;
    }

    public String getXipCpu() {
        return xipCpu;
    }

    public void setXipCpu(String xipCpu) {
        this.xipCpu = xipCpu;
    }

    public String getXipRam() {
        return xipRam;
    }

    public void setXipRam(String xipRam) {
        this.xipRam = xipRam;
    }

    public String getXipBoard() {
        return xipBoard;
    }

    public void setXipBoard(String xipBoard) {
        this.xipBoard = xipBoard;
    }

    public String getXipBios() {
        return xipBios;
    }

    public void setXipBios(String xipBios) {
        this.xipBios = xipBios;
    }

    public String getXipYp() {
        return xipYp;
    }

    public void setXipYp(String xipYp) {
        this.xipYp = xipYp;
    }

    public String getXipXk() {
        return xipXk;
    }

    public void setXipXk(String xipXk) {
        this.xipXk = xipXk;
    }

    public String getXipXsq() {
        return xipXsq;
    }

    public void setXipXsq(String xipXsq) {
        this.xipXsq = xipXsq;
    }

    public String getXipMac() {
        return xipMac;
    }

    public void setXipMac(String xipMac) {
        this.xipMac = xipMac;
    }

    public String getXipIp() {
        return xipIp;
    }

    public void setXipIp(String xipIp) {
        this.xipIp = xipIp;
    }

    public String getXipOs() {
        return xipOs;
    }

    public void setXipOs(String xipOs) {
        this.xipOs = xipOs;
    }

    public String getXipType() {
        return xipType;
    }

    public void setXipType(String xipType) {
        this.xipType = xipType;
    }

    public String getFixedAssetsNo() {
        return fixedAssetsNo;
    }

    public void setFixedAssetsNo(String fixedAssetsNo) {
        this.fixedAssetsNo = fixedAssetsNo;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Timestamp getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Timestamp updatedTime) {
        this.updatedTime = updatedTime;
    }

    @Override
    public String toString() {
        return "PCInfo{" +
                "xipName='" + xipName + '\'' +
                ", xipCpu='" + xipCpu + '\'' +
                ", xipRam='" + xipRam + '\'' +
                ", xipBoard='" + xipBoard + '\'' +
                ", xipBios='" + xipBios + '\'' +
                ", xipYp='" + xipYp + '\'' +
                ", xipXk='" + xipXk + '\'' +
                ", xipXsq='" + xipXsq + '\'' +
                ", xipMac='" + xipMac + '\'' +
                ", xipIp='" + xipIp + '\'' +
                ", xipOs='" + xipOs + '\'' +
                ", xipType='" + xipType + '\'' +
                ", fixedAssetsNo='" + fixedAssetsNo + '\'' +
                ", remark='" + remark + '\'' +
                ", userId=" + userId +
                ", updatedTime=" + updatedTime +
                '}';
    }
}
