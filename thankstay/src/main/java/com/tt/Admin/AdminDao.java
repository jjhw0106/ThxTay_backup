package com.tt.Admin;

import com.tt.Common.CommonCodeVO;
import com.tt.Lodging.LodgingVO;
import com.tt.User.DeletedUserVO;
import com.tt.User.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDao {

    /* 일반회원관리 */
    List<UserVO> getUsers();
    List<DeletedUserVO> getDeletedUsers();
    List<CommonCodeVO> getCommonCode();
    List<CommonCodeVO> getParentCode();
    List<LodgingVO> getLodging();
    UserVO getUserByNo(int userNo);
    void insertCommonCode(CommonCodeVO commonCodeVO);
    int deleteCommonCode(CommonCodeVO vo);
}
