package com.jay.service.impl;

import com.jay.bean.ExcelBean;
import com.jay.dao.UserDao;
import com.jay.entities.User;
import com.jay.service.UserService;
import com.jay.util.ExcelUtil;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service("userServiceImpl")
@Scope("prototype")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public User getUserById(Integer id) {
        return userDao.getUserById(id);
    }

    @Override
    public List<User> getAllUser() {
        return userDao.getAllUsers();
    }

    @Override
    public List<User> getUserByCondition(String name, String department, String locationInfo) {
        return userDao.getUserByCondition(name, department, locationInfo);
    }

    @Override
    public List<String> getLocationInfo() {
        return userDao.getLocationInfo();
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public XSSFWorkbook exportExcelInfo(String locationInfo) throws Exception {
        //根据条件查询数据
        List<Map<String, Object>> list = userDao.findUserForExcel(locationInfo);
        //System.out.println(list);
        List<ExcelBean> excel = new ArrayList<>();
        Map<Integer, List<ExcelBean>> map = new LinkedHashMap<>();
        //设置标题栏
        excel.add(new ExcelBean("姓名", "name", 0));
        excel.add(new ExcelBean("所属部门", "department", 0));
        excel.add(new ExcelBean("所在属地", "locationInfo", 0));
        excel.add(new ExcelBean("电话", "tel", 0));
        excel.add(new ExcelBean("机器名称", "xipName", 0));
        excel.add(new ExcelBean("CPU", "xipCpu", 0));
        excel.add(new ExcelBean("内存", "xipRam", 0));
        excel.add(new ExcelBean("主板", "xipBoard", 0));
        excel.add(new ExcelBean("BIOS", "xipBios", 0));
        excel.add(new ExcelBean("硬盘", "xipYp", 0));
        excel.add(new ExcelBean("显卡", "xipXk", 0));
        excel.add(new ExcelBean("显示器", "xipXsq", 0));
        excel.add(new ExcelBean("网卡MAC", "xipMac", 0));
        excel.add(new ExcelBean("IP", "xipIp", 0));
        excel.add(new ExcelBean("操作系统", "xipOs", 0));
        excel.add(new ExcelBean("类型", "xipType", 0));
        excel.add(new ExcelBean("固定资产编号", "fixedAssetsNo", 0));
        excel.add(new ExcelBean("备注", "remark", 0));
        excel.add(new ExcelBean("更新时间", "updatedTime", 0));
        map.put(0, excel);
        String sheetName = "用户信息表";
        //调用ExcelUtil方法
        XSSFWorkbook xssfWorkbook = ExcelUtil.createExcelFile(list, map, sheetName);
        System.out.println(xssfWorkbook);
        return xssfWorkbook;
    }
}