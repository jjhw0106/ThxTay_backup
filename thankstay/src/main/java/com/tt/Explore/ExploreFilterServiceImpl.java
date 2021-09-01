package com.tt.Explore;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Common.CommonCodeVO;
import com.tt.Common.CommonDao;
import com.tt.Lodging.LodgingVO;

@Service
public class ExploreFilterServiceImpl implements ExploreFilterService {

	@Autowired
	ExploreFilterDao exploreFilterDao;
	
	//@Autowired
	//CommonDao commonDao;
	
	@Override
	public List<LodgingListVO> getLodgingListBySearchFilter(SearchFilterVO searchFilter) {
		//getLodgingsByFirstFilter로 숙소리스트 가져오기
		List<LodgingListVO> lodgings = exploreFilterDao.getLodgingListBySearchFilter(searchFilter);
		//해당 리스트로 wishList여부 체크하기
		//새로운 dto/map형성 -> return? 아니면 wishList 따로 보낼 수 있나?
		
		//List<CommonCodeVO> commonCodes = commonDao.getAllCommonCodeVos();
		
		if(!lodgings.isEmpty()) {
			for(LodgingListVO lodging:lodgings) {
				lodging.setTotalBed(lodging.getSinglebed()+lodging.getDoublebed());
				lodging.setTotalFee((int)(lodging.getLodgingFee()+lodging.getCleaningFee()*1.1));
				lodging.setPerDayFee((int)(lodging.getTotalFee()/lodging.getCount()*1.1));
				String[] amenityList = lodging.getAmenity().split(",");	//list vs arrayList
				lodging.setAmenityList(amenityList);
				lodging.setImageList1(exploreFilterDao.getImagesByLodgingNo(lodging.getNo())[0]);
				lodging.setImageList2(exploreFilterDao.getImagesByLodgingNo(lodging.getNo())[1]);
				lodging.setImageList3(exploreFilterDao.getImagesByLodgingNo(lodging.getNo())[2]);
			}
		}
		//private List<String> amenityList;
		//private List<String> imageList; 업그레이드 과제
		System.out.println(lodgings);
		
		return lodgings;
	}

	//@Override
	//public List<LodgingVO> getLodgingListByFirstLatLng(SearchFilterVO firstFilter) {
	//	return exploreFilterDao.getLodgingListByLatLng(firstFilter);
	//}

	@Override
	public List<LodgingListVO> getLodgingListByGuests(int guests) {
		return exploreFilterDao.getLodgingListByGuests(guests);
	}

	//위시리스트 여부체크
	//첫페이지 만드는데 더 필요한 내용: 검색된 숙소 갯수 숙박비 최소-최댓값 ---- DAO, 메소드 분리? or 서비스에서 한 메소드로 구현?
	//유저의 찜 카테고리< 이것도 여기에 들어가야하나? 아니면 user폴더에? 아니면 자바스크립트로...?
}
