package com.tt.User;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {

    /**
     * 지정된 사용자정보를 데이터베이스에 저장한다
     * @param user 신규 사용자 정보
     */
    void insertUser(UserVO user);

    void insertKakao(UserVO user);

    /**
     * 지정된 사용자이메일로 데이터베이스에서 사용자정보를 조회해서 반환한다
     * @param userEmail 사용자 이메일
     * @return 사용자정보, null일 수 있음
     */
    UserVO getUserByEmail(String userEmail);

    UserVO getHostByEmail(String userEmail);

    UserVO getUserByNo(int userNo);

    UserVO getUserByName(String userName);
    
    void updateUserIsHost(int userNo);

    void updateProfile(UserVO user);

    void updateWithdrawal(int userNo);

    void insertDeletedUser(DeletedUserVO duser);

}
