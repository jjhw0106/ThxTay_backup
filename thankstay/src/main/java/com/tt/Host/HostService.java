package com.tt.Host;

import java.util.List;
import java.util.Map;

import com.tt.vo.CommonCodeVO;

public interface HostService {
	/* jhw 추가 */
	
	/**
	 * 숙소타입, 예약상태 등 공통코드로  체크박스 리스트 불러오기
	 * @return
	 */
	List<CommonCodeVO> showLodgingTypes(String codeContent);
	
	
	/* jhw 추가 */
}
