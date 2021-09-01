package com.tt.Admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tt.Common.CommonCodeVO;
import com.tt.Lodging.LodgingVO;
import com.tt.User.DeletedUserVO;
import com.tt.User.UserVO;
import com.tt.web.utils.SessionUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired(required = false)
    private AdminService adminService;

    @RequestMapping(value = "/admin/index")
    public String Menu() { return "admin/UserList"; }

    @RequestMapping(value = "/admin/userList")
    public String UserList1() {
        return "admin/UserList";
    }

    @RequestMapping(value = "/admin/deletedUserList")
    public String DeletedUserList1() {
        return "admin/DeletedUserList";
    }

    @RequestMapping(value = "/admin/commonCodeList")
    public String CommonCodeList(Model model) {
        List<CommonCodeVO> parentCode = adminService.getParentCode();

        model.addAttribute("parentCode", parentCode);

        return "admin/CommonCodeList";
    }

    @RequestMapping(value = "/admin/lodgingList")
    public String LodgingList1() {
        return "admin/LodgingList";
    }

    //produces 속성을 이용해 Response의 Content-Type을 제어할 수 있다
    @RequestMapping(value = "/admin/getUsers", produces="application/json;charset=UTF-8")
    @ResponseBody
    public String UserList2() {
        List<UserVO> userList = adminService.getUsers();
        String str = "";

        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(userList);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }

    //produces 속성을 이용해 Response의 Content-Type을 제어할 수 있다
    @RequestMapping(value = "/admin/getLodging", produces="application/json;charset=UTF-8")
    @ResponseBody
    public String LodgingList2() {
        List<LodgingVO> lodgingList = adminService.getLodging();
        String str = "";

        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(lodgingList);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }

    @RequestMapping(value = "/admin/detailUser", produces="application/json; charset=UTF-8", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Map<String, Object> detailUser(@RequestParam("no") int userNo) {
        Map<String, Object> retVal = new HashMap<String, Object>();
        try {
            UserVO res = adminService.detailUser(userNo);

            retVal.put("res", "OK");
            retVal.put("UserVO", res);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            retVal.put("res", "FAIL");
            retVal.put("message", "상세보기가 되지 않았습니다.");
        }

        return retVal;
    }

    @RequestMapping(value = "/admin/userInfo", method = {RequestMethod.GET, RequestMethod.POST})
    public String UserInfo(@RequestParam("no") int userNo, Model model) {
        try {
            UserVO res = adminService.detailUser(userNo);

            model.addAttribute("UserVO", res);

        } catch(Exception e) {
            System.out.println("UserInfo : " + e.getMessage());
        }
        return "admin/Info/UserInfo";
    }

    @RequestMapping(value = "/admin/getDeletedUsers", produces="application/json;charset=UTF-8")
    @ResponseBody
    public String DeletedUserList2() {
        List<DeletedUserVO> deletedUserList = adminService.getDeletedUsers();
        String str = "";

        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(deletedUserList);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }

    @RequestMapping(value = "/admin/getCommonCode", produces="application/json;charset=UTF-8")
    @ResponseBody
    public String CommonCodeList2() {
        List<CommonCodeVO> commoncodeList = adminService.getCommonCode();
        String str = "";

        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(commoncodeList);
        } catch (Exception e) {
            System.out.println("first() mapper : " + e.getMessage());
        }

        return str;
    }

    @PostMapping("/admin/insertCommonCode")
    public String insertCommonCode(CommonCodeVO commonCodeVO) {
        adminService.insertCommonCode(commonCodeVO);

        return "redirect:/admin/commonCodeList";
    }

    @RequestMapping(value = "/admin/deleteCommonCode", produces="application/json; charset=UTF-8", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Map<String, Object> deleteCommonCode(CommonCodeVO vo) {
        Map<String, Object> retVal = new HashMap<String, Object>();

        try {
            int res = adminService.deleteCommonCode(vo);

            retVal.put("res", "OK");
        } catch(Exception e) {
            retVal.put("res", "FAIL");
            retVal.put("message", "삭제가 되지 않았습니다.");
        }

        return retVal;
    }

}
