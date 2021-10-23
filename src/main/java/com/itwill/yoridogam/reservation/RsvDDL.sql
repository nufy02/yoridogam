DROP TABLE reservation CASCADE CONSTRAINTS;

CREATE TABLE reservation(
		rsv_no                        		NUMBER(10)		 NOT NULL,
		rsv_total                     		NUMBER(10)		 NULL ,
		rsv_type                      		VARCHAR2(20)		 NULL ,
		rsv_qty                       		NUMBER(10)		 NULL ,
		rsv_date                      		VARCHAR2(100)		 NULL ,
		rsv_time                      		VARCHAR2(100)		 NULL ,
		rsv_payDate                   		DATE		 DEFAULT sysdate		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE reservation_rsv_no_SEQ;

CREATE SEQUENCE reservation_rsv_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_PK PRIMARY KEY (rsv_no);
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

commit;