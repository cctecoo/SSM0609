package com.jay.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.jay.entities.PCInfo;
import com.jay.entities.User;
import com.jay.service.PCInfoService;
import com.jay.service.UserService;
import net.sf.json.JSONObject;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@SessionAttributes(value = {"name", "department", "locationInfo"}, types = {String.class, String.class, String.class})
@Controller
public class UserController {
//    private static final Logger logger = Logger.getLogger(UserController.class);

    @Resource
    private UserService userService;

    @Resource
    private PCInfoService pcInfoService;

    @RequestMapping("/")
    public String index( Model model) {
        model.addAttribute("name", "");
        model.addAttribute("department", "");
        model.addAttribute("locationInfo", "");
        return "info";
    }

    @RequestMapping("/info")
    public ModelAndView info(HttpServletResponse response, Model model) {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        model.addAttribute("name", "");
        model.addAttribute("department", "");
        model.addAttribute("locationInfo", "");
        return new ModelAndView("info");
    }

    @RequestMapping("/add")
    public String add(HttpServletRequest request, HttpServletResponse response, Model model) {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        User user = initUser(request);
        userService.addUser(user);

        PCInfo pcInfo = pcInfoService.getPCInfoByMac(request.getParameter("xipMac"));
        if (pcInfo != null) {
            PCInfo updPcInfo = initPCInfo(request, user);
            pcInfoService.updatePCInfo(updPcInfo);
        } else {
            PCInfo newPcInfo = initPCInfo(request, user);
            pcInfoService.addPCInfo(newPcInfo);
        }

        model.addAttribute("name", "");
        model.addAttribute("department", "");
        model.addAttribute("locationInfo", "");
        return "redirect:/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView listUser(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                 HttpSession httpSession,
                                 Model model) {

        PageHelper.startPage(pageNum, 5);
        List<User> userList = new ArrayList<>();
        String name = (String) httpSession.getAttribute("name");
        String department = (String) httpSession.getAttribute("department");
        String locationInfo = (String) httpSession.getAttribute("locationInfo");

//        if (StringUtils.isEmpty(name)) {
//            userList = userService.getAllUser();
//        } else {
        userList = userService.getUserByCondition(name, department, locationInfo);
//        }

        PageInfo pageInfo = new PageInfo(userList);
        model.addAttribute("pageInfo", pageInfo);

        List<String> locationInfoList = userService.getLocationInfo();
        model.addAttribute("locationInfoList", locationInfoList);

        return new ModelAndView("list");
    }


    @RequestMapping("/search")
    public ModelAndView searchUser(HttpServletRequest request, Model model) {
        model.addAttribute("name", request.getParameter("name"));
        model.addAttribute("department", request.getParameter("department"));
        model.addAttribute("locationInfo", request.getParameter("locationInfo"));

        return new ModelAndView("redirect:/list");
    }

    @RequestMapping("/getPCInfo")
    public void getPCInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        Integer userId = Integer.parseInt(request.getParameter("userId"));

        PCInfo pcInfo = pcInfoService.getPCInfoByUserId(userId);
        User user = userService.getUserById(userId);

        Gson gson = new Gson();
        String pcJson = gson.toJson(pcInfo);
        JSONObject pcJsonObject = JSONObject.fromObject(pcJson);

        String userJson = gson.toJson(user);
        JSONObject userJsonObject = JSONObject.fromObject(userJson);

        userJsonObject.putAll(pcJsonObject);

        response.getWriter().write(userJsonObject.toString());
    }

    @RequestMapping("/update")
    public String update(HttpServletRequest request) {
        User user = initUser(request);
        user.setId(Integer.valueOf(request.getParameter("userId")));
        userService.updateUser(user);

        PCInfo pcInfo = initPCInfo(request, user);
        pcInfoService.updatePCInfo(pcInfo);

        return "redirect:/list";
    }

    @RequestMapping("export")
    @ResponseBody
    public void export(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String locationInfo = request.getParameter("locationInfo");
        response.reset(); //清除buffer缓存
        //Map<String,Object> map=new HashMap<String,Object>();
        // 指定下载的文件名
        response.setContentType("application/vnd.ms-excel;charset=UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + new String("User.xlsx".getBytes(), "iso-8859-1"));
        //导出Excel对象
        XSSFWorkbook workbook = userService.exportExcelInfo(locationInfo);
        OutputStream output;
        try {
            output = response.getOutputStream();
            BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
            bufferedOutput.flush();
            workbook.write(bufferedOutput);
            bufferedOutput.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private User initUser(HttpServletRequest request) {
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String locationInfo = request.getParameter("locationInfo");
        String tel = request.getParameter("tel");
        Timestamp userUpdatedTime = new Timestamp(System.currentTimeMillis());
        User user = new User(name, department, locationInfo, tel, userUpdatedTime);
        return user;
    }

    private PCInfo initPCInfo(HttpServletRequest request, User user) {
        String xipName = request.getParameter("xipName");
        String xipCpu = request.getParameter("xipCpu");
        String xipRam = request.getParameter("xipRam");
        String xipBoard = request.getParameter("xipBoard");
        String xipBios = request.getParameter("xipBios");
        String xipYp = request.getParameter("xipYp");
        String xipXk = request.getParameter("xipXk");
        String xipXsq = request.getParameter("xipXsq");
        String xipMac = request.getParameter("xipMac");
        String xipIp = request.getParameter("xipIp");
        String xipOs = request.getParameter("xipOs");
        String xipType = request.getParameter("xipType");
        String fixedAssetsNo = request.getParameter("fixedAssetsNo");
        String pcRemark = request.getParameter("remark");
        Integer userId = user.getId();
        Timestamp pcUpdatedTime = new Timestamp(System.currentTimeMillis());
        PCInfo pcInfo = new PCInfo(xipName, xipCpu, xipRam, xipBoard, xipBios, xipYp, xipXk, xipXsq, xipMac, xipIp,
                xipOs, xipType, fixedAssetsNo, pcRemark, userId, pcUpdatedTime);
        return pcInfo;
    }

}