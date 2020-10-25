/*1)45 ya� �st� ��retmenleri �a��ran procedureyi olu�turdum*/
create procedure yas�n�r� /*Emekli s�n�rlar�*/
as
select ogretmen_adi,ogretmen_soyadi,yas from ogretmen_veri where yas>45
not: drop procedure yassiniri yazarak proceduremi silebilirim ,execute yassiniri yazarak proceduremi cal��t�r�p ilgili tabloyu g�rebilirim.

/*2)Bekar ��retmenleri s�ralayan procedureyi olu�turdum*/
create procedure bekarogretmenler
as
select * from ogretmen_veri where ogretmen_medeni_hal='Bekar'


/*3)��retmenlerin girdi�i dersleri s�ralayan procedureyi olu�turdum*/
create procedure ogretmengorev
as
select ogretmen_adi,ogretmen_soyadi,ders_ad� from ogretmen_veri,ders_veri
where ogretmen_veri.ders_id=ders_veri.ders_id


/*4)��rencilerin hangi s�n�fta oldu�unu s�ralayan procedureyi olu�turdum*/
create procedure ogrencisinifi
as
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id

/*5)��retmenlerin adreslerini getiren procedureyi olu�turudm*/
create procedure ogretmenadres
as
select ogretmen_adi,ogretmen_soyadi,il,il�e,mahalle,sokak,blok,kat,daire from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id
