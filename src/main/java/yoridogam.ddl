/**********************************/
/* Table Name: member */
/**********************************/
CREATE TABLE member(
		m_id                          		VARCHAR2(20)		 NOT NULL,
		m_name                        		VARCHAR2(20)		 NOT NULL,
		m_pass                        		VARCHAR2(30)		 NOT NULL,
		m_addr                        		VARCHAR2(100)		 NOT NULL,
		m_email                       		VARCHAR2(50)		 NOT NULL,
		m_phone                       		VARCHAR2(12)		 NOT NULL,
		m_interest                    		VARCHAR2(30)		 NULL ,
		m_gender                      		VARCHAR2(10)		 NOT NULL
);

COMMENT ON TABLE member is 'member';
COMMENT ON COLUMN member.m_id is 'm_id';
COMMENT ON COLUMN member.m_name is 'm_name';
COMMENT ON COLUMN member.m_pass is 'm_pass';
COMMENT ON COLUMN member.m_addr is 'm_addr';
COMMENT ON COLUMN member.m_email is 'm_email';
COMMENT ON COLUMN member.m_phone is 'm_phone';
COMMENT ON COLUMN member.m_interest is 'm_interest';
COMMENT ON COLUMN member.m_gender is 'm_gender';


/**********************************/
/* Table Name: product */
/**********************************/
CREATE TABLE product(
		p_no                          		NUMBER(10)		 NOT NULL,
		p_name                        		VARCHAR2(500)		 NULL ,
		p_detail                      		VARCHAR2(1000)		 NULL ,
		p_category                    		VARCHAR2(30)		 NULL ,
		p_price                       		VARCHAR2(500)		 NULL ,
		p_type                        		VARCHAR2(30)		 NULL ,
		p_photo                       		VARCHAR2(500)		 NULL 
);

CREATE SEQUENCE product_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER product_p_no_TRG
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
IF :NEW.p_no IS NOT NULL THEN
  SELECT product_p_no_SEQ.NEXTVAL INTO :NEW.p_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE product is 'product';
COMMENT ON COLUMN product.p_no is 'p_no';
COMMENT ON COLUMN product.p_name is 'p_name';
COMMENT ON COLUMN product.p_detail is 'p_detail';
COMMENT ON COLUMN product.p_category is 'p_category';
COMMENT ON COLUMN product.p_price is 'p_price';
COMMENT ON COLUMN product.p_type is 'p_type';
COMMENT ON COLUMN product.p_photo is 'p_photo';


/**********************************/
/* Table Name: teacher */
/**********************************/
CREATE TABLE teacher(
		t_id                          		VARCHAR2(20)		 NOT NULL,
		t_name                        		VARCHAR2(20)		 NOT NULL,
		t_pass                        		VARCHAR2(30)		 NOT NULL,
		t_email                       		VARCHAR2(50)		 NOT NULL,
		t_photo                       		VARCHAR2(500)		 NOT NULL,
		t_detail                      		VARCHAR2(500)		 NOT NULL,
		t_location                    		VARCHAR2(100)		 NOT NULL,
		p_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE teacher is 'teacher';
COMMENT ON COLUMN teacher.t_id is 't_id';
COMMENT ON COLUMN teacher.t_name is 't_name';
COMMENT ON COLUMN teacher.t_pass is 't_pass';
COMMENT ON COLUMN teacher.t_email is 't_email';
COMMENT ON COLUMN teacher.t_photo is 't_photo';
COMMENT ON COLUMN teacher.t_detail is 't_detail';
COMMENT ON COLUMN teacher.t_location is 't_location';
COMMENT ON COLUMN teacher.p_no is 'p_no';


/**********************************/
/* Table Name: review */
/**********************************/
CREATE TABLE review(
		r_no                          		NUMBER(10)		 NOT NULL,
		r_title                       		VARCHAR2(400)		 NULL ,
		r_content                     		VARCHAR2(1000)		 NULL ,
		r_grade                       		NUMBER(10)		 NULL ,
		r_photo                       		VARCHAR2(500)		 NULL ,
		r_date                        		DATE		 DEFAULT sysdate		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

CREATE SEQUENCE review_r_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER review_r_no_TRG
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
IF :NEW.r_no IS NOT NULL THEN
  SELECT review_r_no_SEQ.NEXTVAL INTO :NEW.r_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE review is 'review';
COMMENT ON COLUMN review.r_no is 'r_no';
COMMENT ON COLUMN review.r_title is 'r_title';
COMMENT ON COLUMN review.r_content is 'r_content';
COMMENT ON COLUMN review.r_grade is 'r_grade';
COMMENT ON COLUMN review.r_photo is 'r_photo';
COMMENT ON COLUMN review.r_date is 'r_date';
COMMENT ON COLUMN review.m_id is 'm_id';
COMMENT ON COLUMN review.p_no is 'p_no';


/**********************************/
/* Table Name: reservation */
/**********************************/
CREATE TABLE reservation(
		rsv_no                        		NUMBER(10)		 NOT NULL,
		rsv_total                     		NUMBER(10)		 NULL ,
		rsv_type                      		VARCHAR2(20)		 NULL ,
		rsv_qty                       		NUMBER(10)		 NULL ,
		rsv_time                      		VARCHAR2(100)		 NULL ,
		rsv_date                      		DATE		 DEFAULT sysdate		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

CREATE SEQUENCE reservation_rsv_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER reservation_rsv_no_TRG
BEFORE INSERT ON reservation
FOR EACH ROW
BEGIN
IF :NEW.rsv_no IS NOT NULL THEN
  SELECT reservation_rsv_no_SEQ.NEXTVAL INTO :NEW.rsv_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE reservation is 'reservation';
COMMENT ON COLUMN reservation.rsv_no is 'rsv_no';
COMMENT ON COLUMN reservation.rsv_total is 'rsv_total';
COMMENT ON COLUMN reservation.rsv_type is 'rsv_type';
COMMENT ON COLUMN reservation.rsv_qty is 'rsv_qty';
COMMENT ON COLUMN reservation.rsv_time is 'rsv_time';
COMMENT ON COLUMN reservation.rsv_date is 'rsv_date';
COMMENT ON COLUMN reservation.m_id is 'm_id';
COMMENT ON COLUMN reservation.p_no is 'p_no';


/**********************************/
/* Table Name: pay */
/**********************************/
CREATE TABLE pay(
		pay_no                        		NUMBER(10)		 NOT NULL,
		pay_date                      		DATE		 NULL ,
		pay_total                     		VARCHAR2(10)		 NULL ,
		pay_type                      		VARCHAR2(30)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

CREATE SEQUENCE pay_pay_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER pay_pay_no_TRG
BEFORE INSERT ON pay
FOR EACH ROW
BEGIN
IF :NEW.pay_no IS NOT NULL THEN
  SELECT pay_pay_no_SEQ.NEXTVAL INTO :NEW.pay_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE pay is 'pay';
COMMENT ON COLUMN pay.pay_no is 'pay_no';
COMMENT ON COLUMN pay.pay_date is 'pay_date';
COMMENT ON COLUMN pay.pay_total is 'pay_total';
COMMENT ON COLUMN pay.pay_type is 'pay_type';
COMMENT ON COLUMN pay.m_id is 'm_id';


/**********************************/
/* Table Name: pay_item */
/**********************************/
CREATE TABLE pay_item(
		pi_no                         		NUMBER(10)		 NULL ,
		pi_qty                        		NUMBER(10)		 NULL ,
		pay_no                        		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

CREATE SEQUENCE pay_item_pi_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER pay_item_pi_no_TRG
BEFORE INSERT ON pay_item
FOR EACH ROW
BEGIN
IF :NEW.pi_no IS NOT NULL THEN
  SELECT pay_item_pi_no_SEQ.NEXTVAL INTO :NEW.pi_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE pay_item is 'pay_item';
COMMENT ON COLUMN pay_item.pi_no is 'pi_no';
COMMENT ON COLUMN pay_item.pi_qty is 'pi_qty';
COMMENT ON COLUMN pay_item.pay_no is 'pay_no';
COMMENT ON COLUMN pay_item.p_no is 'p_no';


/**********************************/
/* Table Name: cart */
/**********************************/
CREATE TABLE cart(
		ci_no                         		NUMBER(10)		 NOT NULL,
		ci_qty                        		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

CREATE SEQUENCE cart_ci_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER cart_ci_no_TRG
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
IF :NEW.ci_no IS NOT NULL THEN
  SELECT cart_ci_no_SEQ.NEXTVAL INTO :NEW.ci_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE cart is 'cart';
COMMENT ON COLUMN cart.ci_no is 'ci_no';
COMMENT ON COLUMN cart.ci_qty is 'ci_qty';
COMMENT ON COLUMN cart.p_no is 'p_no';
COMMENT ON COLUMN cart.m_id is 'm_id';


/**********************************/
/* Table Name: notice */
/**********************************/
CREATE TABLE notice(
		noti_no                       		NUMBER(10)		 NOT NULL,
		noti_title                    		VARCHAR2(100)		 NULL ,
		noti_date                     		DATE		 DEFAULT sysdate		 NULL ,
		noti_viewCount                		NUMBER(10)		 DEFAULT 0		 NULL ,
		noti_content                  		VARCHAR2(1000)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

CREATE SEQUENCE notice_noti_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER notice_noti_no_TRG
BEFORE INSERT ON notice
FOR EACH ROW
BEGIN
IF :NEW.noti_no IS NOT NULL THEN
  SELECT notice_noti_no_SEQ.NEXTVAL INTO :NEW.noti_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE notice is 'notice';
COMMENT ON COLUMN notice.noti_no is 'noti_no';
COMMENT ON COLUMN notice.noti_title is 'noti_title';
COMMENT ON COLUMN notice.noti_date is 'noti_date';
COMMENT ON COLUMN notice.noti_viewCount is 'noti_viewCount';
COMMENT ON COLUMN notice.noti_content is 'noti_content';
COMMENT ON COLUMN notice.m_id is 'm_id';


/**********************************/
/* Table Name: inquiry */
/**********************************/
CREATE TABLE inquiry(
		ib_no                         		NUMBER(10)		 NOT NULL,
		ib_title                      		VARCHAR2(100)		 NULL ,
		ib_content                    		VARCHAR2(1000)		 NULL ,
		ib_date                       		DATE		 DEFAULT sysdate		 NULL ,
		ib_viewCount                  		NUMBER(10)		 DEFAULT 0		 NULL ,
		ib_secret                     		VARCHAR2(10)		 DEFAULT 'F'		 NULL ,
		ib_depth                      		NUMBER(10)		 DEFAULT 0		 NULL ,
		ib_groupno                    		NUMBER(10)		 NOT NULL,
		ib_step                       		NUMBER(10)		 NOT NULL,
		m_id                          		VARCHAR2(20)		 NULL 
);

CREATE SEQUENCE inquiry_ib_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER inquiry_ib_no_TRG
BEFORE INSERT ON inquiry
FOR EACH ROW
BEGIN
IF :NEW.ib_no IS NOT NULL THEN
  SELECT inquiry_ib_no_SEQ.NEXTVAL INTO :NEW.ib_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE inquiry is 'inquiry';
COMMENT ON COLUMN inquiry.ib_no is 'ib_no';
COMMENT ON COLUMN inquiry.ib_title is 'ib_title';
COMMENT ON COLUMN inquiry.ib_content is 'ib_content';
COMMENT ON COLUMN inquiry.ib_date is 'ib_date';
COMMENT ON COLUMN inquiry.ib_viewCount is 'ib_viewCount';
COMMENT ON COLUMN inquiry.ib_secret is 'ib_secret';
COMMENT ON COLUMN inquiry.ib_depth is 'ib_depth';
COMMENT ON COLUMN inquiry.ib_groupno is 'ib_groupno';
COMMENT ON COLUMN inquiry.ib_step is 'ib_step';
COMMENT ON COLUMN inquiry.m_id is 'm_id';


/**********************************/
/* Table Name: product_time */
/**********************************/
CREATE TABLE product_time(
		pt_no                         		NUMBER(10)		 NULL ,
		pt_time                       		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

CREATE SEQUENCE product_time_pt_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER product_time_pt_no_TRG
BEFORE INSERT ON product_time
FOR EACH ROW
BEGIN
IF :NEW.pt_no IS NOT NULL THEN
  SELECT product_time_pt_no_SEQ.NEXTVAL INTO :NEW.pt_no FROM DUAL;
END IF;
END;

COMMENT ON TABLE product_time is 'product_time';
COMMENT ON COLUMN product_time.pt_no is 'pt_no';
COMMENT ON COLUMN product_time.pt_time is 'pt_time';
COMMENT ON COLUMN product_time.p_no is 'p_no';



ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_id);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);

ALTER TABLE teacher ADD CONSTRAINT IDX_teacher_PK PRIMARY KEY (t_id);
ALTER TABLE teacher ADD CONSTRAINT IDX_teacher_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (r_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_PK PRIMARY KEY (rsv_no);
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE pay ADD CONSTRAINT IDX_pay_PK PRIMARY KEY (pay_no);
ALTER TABLE pay ADD CONSTRAINT IDX_pay_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_PK PRIMARY KEY (pi_no);
ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_FK0 FOREIGN KEY (pay_no) REFERENCES pay (pay_no);
ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (ci_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE notice ADD CONSTRAINT IDX_notice_PK PRIMARY KEY (noti_no);
ALTER TABLE notice ADD CONSTRAINT IDX_notice_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE inquiry ADD CONSTRAINT IDX_inquiry_PK PRIMARY KEY (ib_no);
ALTER TABLE inquiry ADD CONSTRAINT IDX_inquiry_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_PK PRIMARY KEY (pt_no);
ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);

