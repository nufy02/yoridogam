------------INSERT-----------------
--��ǰ �߰�
insert into product(p_no,p_name,p_detail,p_category,p_price,p_type,p_poto)values(p_no_seq.nextval,?,?,?,?,?,?);
------------DELETE-----------------
--��ǰ ����
delete from product where p_no=?;
------------UPDATE-----------------
--��ǰ ������Ʈ
update product set p_name = ? ,p_detail = ?,p_category=?,p_price=?,p_type=?,p_poto=? where p_no=?;
------------SELECT-----------------
--��ǰ��ü ����Ʈ
select * from product;
--��ǰ 1��
select * from product where p_no=?;
