/*1)Öðretmen tablosu ile ders tablosundaki ad,soyad,verdiði dersi
birlektirerek gösterelim*/
select ogretmen_adi,ogretmen_soyadi,ders_adý as'Bölümü' from ogretmen_veri,ders_veri
where ogretmen_veri.ders_id=ders_veri.ders_id
/*2)Þube ile Alan tablosundaki sube ad ve alan adýný birleþtirelim.Hangi þube hangi alanda
onu gösterelim*/
select sube_ad,alan_adi from sube_veri,alan_veri where sube_veri.alan_id=alan_veri.alan_id
select * from sube_veri
/*3)Hangi þubede hangi dersler görülüyor*/
select sube_ad,ders_adý from sube_veri,ders_sube_veri,ders_veri where sube_veri.sube_id=ders_sube_veri.sube_id 
and ders_sube_veri.ders_id=ders_veri.ders_id
/*4)Öðrenci hangi þubede eðitim alýyor */
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id
/*5)Öðrencileri velileriyle birleþtirip yazalým*/
select ogrenci_adi,ogrenci_soyadi,veli_ad,veli_soyad from ogrenci_ver ogrenci,veli_veri veli
where ogrenci.veli_id=veli.veli_id
/*6 Öðretmenlerin adreslerini getirelim*/
select ogretmen_adi,ogretmen_soyadi,il,ilçe,mahalle,sokak,blok,kat,daire from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id
/*7)Yaþý 30 dan büyük olan öðretmenlerin adreslerini getirelim*/
select ogretmen_adi,ogretmen_soyadi,yas,il from ogretmen_veri,ogretmen_ogrenci_adres 
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id and yas>30 
/*8) Keçiörende oturan öðretmenleri gösterelim */
select ogretmen_adi,ogretmen_soyadi,ilçe from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.adres_id and ilçe='Keçiören'
order by ogretmen_adi
/*9)Öðrencilerin adreslerini getir*/
select ogrenci_adi,ogrenci_soyadi,ilçe from ogrenci_ver ogrenci,ogretmen_ogrenci_adres ikisiadres
where ogrenci.ogrenci_adres_id=ikisiadres.adres_id
/*10)A þubesindeki öðrencileri getirelim*/
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id and sube_ad='A'