/*1)��retmen tablosu ile ders tablosundaki ad,soyad,verdi�i dersi
birlektirerek g�sterelim*/
select ogretmen_adi,ogretmen_soyadi,ders_ad� as'B�l�m�' from ogretmen_veri,ders_veri
where ogretmen_veri.ders_id=ders_veri.ders_id
/*2)�ube ile Alan tablosundaki sube ad ve alan ad�n� birle�tirelim.Hangi �ube hangi alanda
onu g�sterelim*/
select sube_ad,alan_adi from sube_veri,alan_veri where sube_veri.alan_id=alan_veri.alan_id
select * from sube_veri
/*3)Hangi �ubede hangi dersler g�r�l�yor*/
select sube_ad,ders_ad� from sube_veri,ders_sube_veri,ders_veri where sube_veri.sube_id=ders_sube_veri.sube_id 
and ders_sube_veri.ders_id=ders_veri.ders_id
/*4)��renci hangi �ubede e�itim al�yor */
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id
/*5)��rencileri velileriyle birle�tirip yazal�m*/
select ogrenci_adi,ogrenci_soyadi,veli_ad,veli_soyad from ogrenci_ver ogrenci,veli_veri veli
where ogrenci.veli_id=veli.veli_id
/*6 ��retmenlerin adreslerini getirelim*/
select ogretmen_adi,ogretmen_soyadi,il,il�e,mahalle,sokak,blok,kat,daire from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id
/*7)Ya�� 30 dan b�y�k olan ��retmenlerin adreslerini getirelim*/
select ogretmen_adi,ogretmen_soyadi,yas,il from ogretmen_veri,ogretmen_ogrenci_adres 
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id and yas>30 
/*8) Ke�i�rende oturan ��retmenleri g�sterelim */
select ogretmen_adi,ogretmen_soyadi,il�e from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.adres_id and il�e='Ke�i�ren'
order by ogretmen_adi
/*9)��rencilerin adreslerini getir*/
select ogrenci_adi,ogrenci_soyadi,il�e from ogrenci_ver ogrenci,ogretmen_ogrenci_adres ikisiadres
where ogrenci.ogrenci_adres_id=ikisiadres.adres_id
/*10)A �ubesindeki ��rencileri getirelim*/
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id and sube_ad='A'