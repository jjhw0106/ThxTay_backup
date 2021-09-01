package com.tt.Admin;

import com.tt.Common.CommonCodeVO;
import com.tt.Lodging.LodgingVO;
import com.tt.User.DeletedUserVO;
import com.tt.User.UserVO;

import java.util.List;

public interface AdminService {

    List<UserVO> getUsers();
    List<DeletedUserVO> getDeletedUsers();
    List<CommonCodeVO> getCommonCode();
    List<CommonCodeVO> getParentCode();
    List<LodgingVO> getLodging();
    UserVO detailUser(int userNo);
    void insertCommonCode(CommonCodeVO commonCodeVO);
    int deleteCommonCode(CommonCodeVO vo);
}
