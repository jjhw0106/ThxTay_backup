package com.tt.Common;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class CommonCodeVO {
    
    private String parentCode;      // 상위 공통코드
    private String commonCode;      // 공통코드
    private String codeContent;     // 공통코드명
    private int importance;          // 우선순위
    @JsonFormat(pattern = "YYYY/MM/dd" , timezone = "Asia/Seoul")
    private Date createdDate;       // 등록일시
    private Date updatedDate;       // 수정일시
}
