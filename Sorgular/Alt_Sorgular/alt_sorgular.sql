/*1)Eren B�lb�l�n ald��� maa�'a sahip ��retmenleri g�sterelim(Soyada g�re)*/
select * from ogretmen_veri where ogretmen_maas=
(select ogretmen_maas from ogretmen_veri where ogretmen_soyadi='B�lb�l')
/*2)�mer Halis Demir'in ya��na sahip ��retmenleri getirelim*/
select * from ogretmen_veri where yas=
(select yas from ogretmen_veri where ogretmen_adi='�mer Halis' )
/*3)Sel�uk Paker'in Medeni duruma sahip ��retmenleri listeleyelim*/
select * from ogretmen_veri where ogretmen_medeni_hal=
(select ogretmen_medeni_hal from ogretmen_veri where ogretmen_soyadi='Paker')
order by ogretmen_adi
/*4)��renci Ahmet Demir'in s�n�f arkada�lar�n� listeleyelim*/
select * from ogrenci_ver where sube_id=
(select sube_id from ogrenci_ver where ogrenci_id=1)
/*5) D s�n�f�na giren ��retmen Tufan Kansuvan�n meslek arkada�lar�n� s�ralay�m*/
select * from ogretmen_veri where sube_id=
(select sube_id from ogretmen_veri where ogretmen_adi='Tufan')
