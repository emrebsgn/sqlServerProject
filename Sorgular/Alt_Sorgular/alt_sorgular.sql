/*1)Eren Bülbülün aldýðý maaþ'a sahip öðretmenleri gösterelim(Soyada göre)*/
select * from ogretmen_veri where ogretmen_maas=
(select ogretmen_maas from ogretmen_veri where ogretmen_soyadi='Bülbül')
/*2)ömer Halis Demir'in yaþýna sahip öðretmenleri getirelim*/
select * from ogretmen_veri where yas=
(select yas from ogretmen_veri where ogretmen_adi='Ömer Halis' )
/*3)Selçuk Paker'in Medeni duruma sahip öðretmenleri listeleyelim*/
select * from ogretmen_veri where ogretmen_medeni_hal=
(select ogretmen_medeni_hal from ogretmen_veri where ogretmen_soyadi='Paker')
order by ogretmen_adi
/*4)Öðrenci Ahmet Demir'in sýnýf arkadaþlarýný listeleyelim*/
select * from ogrenci_ver where sube_id=
(select sube_id from ogrenci_ver where ogrenci_id=1)
/*5) D sýnýfýna giren öðretmen Tufan Kansuvanýn meslek arkadaþlarýný sýralayým*/
select * from ogretmen_veri where sube_id=
(select sube_id from ogretmen_veri where ogretmen_adi='Tufan')
