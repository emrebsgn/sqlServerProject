/*1)45 yaþ üstü öðretmenleri çaðýran procedureyi oluþturdum*/
create procedure yasýnýrý /*Emekli sýnýrlarý*/
as
select ogretmen_adi,ogretmen_soyadi,yas from ogretmen_veri where yas>45
not: drop procedure yassiniri yazarak proceduremi silebilirim ,execute yassiniri yazarak proceduremi calýþtýrýp ilgili tabloyu görebilirim.

/*2)Bekar öðretmenleri sýralayan procedureyi oluþturdum*/
create procedure bekarogretmenler
as
select * from ogretmen_veri where ogretmen_medeni_hal='Bekar'


/*3)Öðretmenlerin girdiði dersleri sýralayan procedureyi oluþturdum*/
create procedure ogretmengorev
as
select ogretmen_adi,ogretmen_soyadi,ders_adý from ogretmen_veri,ders_veri
where ogretmen_veri.ders_id=ders_veri.ders_id


/*4)Öðrencilerin hangi sýnýfta olduðunu sýralayan procedureyi oluþturdum*/
create procedure ogrencisinifi
as
select ogrenci_adi,ogrenci_soyadi,sube_ad from ogrenci_ver ogrenci,sube_veri sube
where ogrenci.sube_id=sube.sube_id

/*5)Öðretmenlerin adreslerini getiren procedureyi oluþturudm*/
create procedure ogretmenadres
as
select ogretmen_adi,ogretmen_soyadi,il,ilçe,mahalle,sokak,blok,kat,daire from ogretmen_veri,ogretmen_ogrenci_adres
where ogretmen_veri.ogretmen_adres_id=ogretmen_ogrenci_adres.ogretmen_adres_id
