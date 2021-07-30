
/* Drop Tables */

DROP TABLE Thxtay_Amenitylist CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Transaction_History CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Payment CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Review CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Booking CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Chatting_Message CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Chatting_Room CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Common_Code CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Deleted_User CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Lodging_Img CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Price CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Wish_Zzim CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Lodging CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Transaction_Register CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Wishlist CASCADE CONSTRAINTS;
DROP TABLE Thxtay_User CASCADE CONSTRAINTS;

/* Drop Sequence */

DROP SEQUENCE USER_SEQ;
DROP SEQUENCE CR_SEQ;
DROP SEQUENCE CM_SEQ;
DROP SEQUENCE BOOK_SEQ;
DROP SEQUENCE REVIEW_SEQ;
DROP SEQUENCE WISHLIST_SEQ;
DROP SEQUENCE TR_SEQ;
DROP SEQUENCE PAYMENT_SEQ;
DROP SEQUENCE LODGING_SEQ;
DROP SEQUENCE TRANSACTIONHISTORY_SEQ;
DROP SEQUENCE PRICE_SEQ;
DROP SEQUENCE LODGINGIMG_SEQ;



/* Create Tables */

-- 편의시설리스트
CREATE TABLE Thxtay_Amenitylist
(
	-- 편의시설코드
	amenity_code char(10) NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	PRIMARY KEY (amenity_code),
	CONSTRAINT AmenitylistUnique UNIQUE (lodging_no)
);


-- 예약
CREATE TABLE Thxtay_Booking
(
	-- 예약번호
	booking_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 체크인 날짜
	booking_check_in date NOT NULL,
	-- 체크아웃 날짜
	booking_check_out date NOT NULL,
	-- 숙박일수
	booking_date number NOT NULL,
	-- 예약상태
	booking_status char(7) DEFAULT 'BKG0101',
	-- 예약인원
	booking_guest number NOT NULL,
	-- 총 숙박료
	booking_total_lodging_fee number NOT NULL,
	-- 총 청소비
	booking_total_cleaning_fee number DEFAULT 0,
	-- 총액
	booking_amount number DEFAULT 0,
	PRIMARY KEY (booking_no)
);


-- 채팅메시지
CREATE TABLE Thxtay_Chatting_Message
(
	-- 메세지번호
	cm_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 채팅메세지
	cm_contents clob NOT NULL,
	-- 송신시간
	cm_created_time date DEFAULT sysdate,
	-- 채팅옵션
	cm_opt char(1) DEFAULT '1',
	-- 확인여부
	cm_check char(1) DEFAULT 'N',
	PRIMARY KEY (cm_no)
);


-- 채팅방
CREATE TABLE Thxtay_Chatting_Room
(
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 호스트
	cr_host varchar2(255),
	-- 관리자
	cr_admin varchar2(255),
	-- 생성일
	cr_created_date date DEFAULT sysdate,
	PRIMARY KEY (cr_no)
);


-- 공통코드
CREATE TABLE Thxtay_Common_Code
(
	-- 공통코드
	commonCode char(10) NOT NULL,
	-- 상위공통코드
	parentCode char(7),
	-- 공통코드명
	codeContent varchar2(255),
	-- 우선순위
	priority number,
	-- 등록일시
	createdDate date DEFAULT sysdate,
	-- 수정일시
	updatedDate date,
	PRIMARY KEY (commonCode)
);


-- 탈퇴한유저
CREATE TABLE Thxtay_Deleted_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 아이디
	user_id varchar2(255) NOT NULL,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_date varchar2(255) NOT NULL,
	-- 전화번호
	user_phone varchar2(255) NOT NULL UNIQUE,
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_email_check char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_isHost char(1) DEFAULT 'N',
	-- 관리자여부
	user_isAdmin char(1) DEFAULT 'N',
	-- 탈퇴일
	user_deleted_date date DEFAULT sysdate,
	-- 수정일
	user_updated_date date,
	PRIMARY KEY (user_no)
);


-- 숙소
CREATE TABLE Thxtay_Lodging
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 주소_시군구
	lodging_city varchar2(255) NOT NULL,
	-- 주소_우편번호
	lodging_post_no varchar2(255),
	-- 주소_상세주소
	lodging_address varchar2(255),
	-- 주소_나머지주소
	lodging_address_rest varchar2(255),
	-- 숙소설명
	lodging_description clob,
	-- 즉시승인여부
	lodging_imm_approval char(1) DEFAULT 'N',
	-- 최대 인원수
	lodging_max_guest number,
	-- 숙소사진
	lodging_image clob,
	-- 숙소이름
	lodging_name varchar2(255) NOT NULL,
	-- 침실 수
	lodging_bedroom number,
	-- 욕실 수
	lodging_bathroom number,
	-- 1인용 침대
	lodging_singlebed number,
	-- 2인용 침대
	lodging_doublebed number,
	-- 조회수
	lodging_view_count number DEFAULT 0,
	-- 리뷰 갯수
	lodging_review_count number DEFAULT 0,
	-- 리뷰 평점
	lodging_review_average number DEFAULT 0,
	-- 청결도
	lodging_cleanness number DEFAULT 0,
	-- 의사소통
	lodging_communication number DEFAULT 0,
	-- 체크인
	lodging_check_in number DEFAULT 0,
	-- 정확성
	lodging_accuracy number DEFAULT 0,
	-- 위치(리뷰)
	lodging_location number DEFAULT 0,
	-- 가격대비 만족도
	lodging_value number DEFAULT 0,
	-- 숙소상태 : 등록중, 승인대기
	lodging_status char(7) DEFAULT 'LDG0301',
	-- 숙소타입 코드 : 집전체, 호텔객실
	lodging_type_code char(7),
	PRIMARY KEY (lodging_no)
);


-- 숙소사진리스트
CREATE TABLE Thxtay_Lodging_Img
(
	-- 숙소사진번호
	lodgingImg_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙소사진 파일명
	lodgingImg_uri varchar2(255) NOT NULL,
	PRIMARY KEY (lodgingImg_no)
);


-- 결제
CREATE TABLE Thxtay_Payment
(
	-- 결제번호
	payment_no number NOT NULL,
	-- 예약번호
	booking_no number NOT NULL,
	-- 결제일시
	payment_created_date date DEFAULT sysdate,
	-- 결제수단
	payment_method char(7) NOT NULL,
	PRIMARY KEY (payment_no)
);


-- 요금
CREATE TABLE Thxtay_Price
(
	-- 요금번호
	price_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙박료
	price_lodging_fee number NOT NULL,
	-- 청소비
	price_cleaning_fee number DEFAULT 0,
	-- 영업일
	price_open_date date,
	-- 예약가능여부
	price_isBooked char(1) DEFAULT 'N',
	-- 수정일
	price_updated_date date,
	-- 등록일
	price_created_date date DEFAULT sysdate,
	PRIMARY KEY (price_no)
);


-- 리뷰
CREATE TABLE Thxtay_Review
(
	-- 리뷰번호
	review_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 예약번호
	booking_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 등록일
	review_created_date date DEFAULT sysdate,
	-- 수정일
	review_updated_date date,
	-- 리뷰내용
	review_comment varchar2(4000) NOT NULL,
	-- 수정여부
	review_isUpdated char(1) DEFAULT 'N',
	-- 별점
	review_stars number DEFAULT 0,
	-- 청결도
	review_cleanness number DEFAULT 0,
	-- 의사소통
	review_communication number DEFAULT 0,
	-- 체크인
	review_check_in number DEFAULT 0,
	-- 정확성
	review_accuracy number DEFAULT 0,
	-- 위치(리뷰)
	review_location number DEFAULT 0,
	-- 가격대비 만족도
	review_value number DEFAULT 0,
	PRIMARY KEY (review_no)
);


-- 대금수령내역
CREATE TABLE Thxtay_Transaction_History
(
	-- 대금수령번호
	transaction_no number NOT NULL,
	-- 요금번호
	price_no number NOT NULL,
	-- 결제번호
	payment_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 정산일
	transaction_created_date date DEFAULT sysdate,
	PRIMARY KEY (transaction_no)
);


-- 대금등록
CREATE TABLE Thxtay_Transaction_Register
(
	-- 대금등록 번호
	TR_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 은행코드
	TR_bank_code char(7) NOT NULL,
	-- 대금등록 이름
	TR_name varchar2(255) NOT NULL,
	-- 대금등록 이메일
	TR_email varchar2(255) NOT NULL,
	-- 대금등록 계좌
	TR_account varchar2(255) NOT NULL,
	PRIMARY KEY (TR_no)
);


-- 유저
CREATE TABLE Thxtay_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 아이디
	user_id varchar2(255) NOT NULL UNIQUE,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_date varchar2(255) NOT NULL,
	-- 전화번호
	user_phone varchar2(255) NOT NULL UNIQUE,
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_email_check char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_isHost char(1) DEFAULT '1',
	-- 관리자여부
	user_isAdmin char(1) DEFAULT 'N',
	-- 탈퇴여부
	user_deleted char(1) DEFAULT 'N',
	-- 생성일
	user_created_date date DEFAULT sysdate,
	-- 수정일
	user_updated_date date,
	PRIMARY KEY (user_no)
);


-- 찜목록
CREATE TABLE Thxtay_Wishlist
(
	-- 찜목록 번호
	wishlist_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 찜목록 이름
	wishlist_name varchar2(255) NOT NULL,
	PRIMARY KEY (wishlist_no)
);


-- 찜
CREATE TABLE Thxtay_Wish_Zzim
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 찜목록 번호
	wishlist_no number NOT NULL,
	CONSTRAINT WishlistUnique UNIQUE (lodging_no)
);



/* Create Foreign Keys */

ALTER TABLE Thxtay_Payment
	ADD FOREIGN KEY (booking_no)
	REFERENCES Thxtay_Booking (booking_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (booking_no)
	REFERENCES Thxtay_Booking (booking_no)
;


ALTER TABLE Thxtay_Chatting_Message
	ADD FOREIGN KEY (cr_no)
	REFERENCES Thxtay_Chatting_Room (cr_no)
;


ALTER TABLE Thxtay_Amenitylist
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Booking
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Lodging_Img
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Price
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Wish_Zzim
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (payment_no)
	REFERENCES Thxtay_Payment (payment_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (price_no)
	REFERENCES Thxtay_Price (price_no)
;


ALTER TABLE Thxtay_Booking
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Chatting_Message
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Chatting_Room
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Deleted_User
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Lodging
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Transaction_Register
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Wishlist
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Wish_Zzim
	ADD FOREIGN KEY (wishlist_no)
	REFERENCES Thxtay_Wishlist (wishlist_no)
;


/* Create Sequence */

CREATE SEQUENCE USER_SEQ NOCACHE;
CREATE SEQUENCE CR_SEQ NOCACHE;
CREATE SEQUENCE CM_SEQ NOCACHE;
CREATE SEQUENCE BOOK_SEQ NOCACHE;
CREATE SEQUENCE REVIEW_SEQ NOCACHE;
CREATE SEQUENCE WISHLIST_SEQ NOCACHE;
CREATE SEQUENCE TR_SEQ NOCACHE;
CREATE SEQUENCE PAYMENT_SEQ NOCACHE;
CREATE SEQUENCE LODGING_SEQ NOCACHE;
CREATE SEQUENCE TRANSACTIONHISTORY_SEQ NOCACHE;
CREATE SEQUENCE PRICE_SEQ NOCACHE;
CREATE SEQUENCE LODGINGIMG_SEQ NOCACHE;



