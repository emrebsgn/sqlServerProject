/*1)Öðretmenler arasýnda en yüksek maaþ*/
select  max(ogretmen_maas) as en_yuksek_maas from ogretmen_veri
/*2)Öðretmenler arasýnda en düþük maaþ*/
select min(ogretmen_maas) as en_dusuk_maas from ogretmen_veri
/*3)Öðretmenlere verilen ortalama maaþ*/
select avg(ogretmen_maas) as ortalama_maas from ogretmen_veri
/*4)Öðretmen tablosunda en yüksek maaþ ile en düþük maaþ arasýndaki fark*/
select max(ogretmen_maas)-min(ogretmen_maas) as EnYuksekMaas_fark_EnDusukMaas from ogretmen_veri
/*5)Öðretmen ve öðrenci tablosundaki kiþi sayýsý*/
select count(ogretmen_adi) as Ogretnen_sayisi from ogretmen_veri
select count(ogrenci_adi) as Ogrenci_sayisi from ogrenci_ver
/*6)Öðretmenlere verilen toplam maaþ*/
select Sum(ogretmen_maas) as ToplamMaas from ogretmen_Veri
/*7)Öðrenci tablosundaki diploma ortalamasýný yukarý yuvarlayalým */
select ceiling(avg(ogrenci_diploma)) from ogrenci_ver
/*8)Sube_id'si 3 olan yani 'C' sýnýfýna giren en yüksek maaþ*/
select max(ogretmen_maas) from ogretmen_veri where sube_id=3
/*9)Öðretmen tablosunda evli ve sayýsal derslere giren öðretmenlerin maaþ ortalamasý*/
select avg(ogretmen_maas) as EvliVeSayisal_ortMaas from ogretmen_veri where ogretmen_medeni_hal='Evli' and ders_id=1
/*10)Kaç farklý matematik öðretmeni olduðunu gösterelim*/
select distinct(count(ders_id)) as MatOgretmenSayisi from ogretmen_veri where ders_id=3
SOYÝSMÝ Ç ÝLE BAÞLAYAN BÝLGÝLERÝ GETÝRELÝM
select * from ogretmen_veri where ogretmen_soyadi like 'Ç%'
/*11)Sayýsalcý olup diploma puaný 70 üstünde olan öðrencilerin sayýsý*/
select count(ogrenci_id) from ogrenci_ver where ogrenci_diploma>=70 
/*12)Diploma puaný 75 ve 90 arasýnda olan ögrencilerin sayýsý*/
select count(ogrenci_id) from ogrenci_ver where ogrenci_diploma>=75 and ogrenci_diploma<=90
/*13)Evli olupta maaþý 2500 TL den dusuk olanlarýn maaþ ortalamalarý*/
select avg(ogretmen_maas) from ogretmen_veri where ogretmen_medeni_hal='Evli' and ogretmen_maas<2500 
/*14)Bekar olupta maasý 3500 TL den az olanlarýn maaþ ortalamasýna 500 TL ekleyelim*/
select avg(ogretmen_maas)+500 from ogretmen_veri where ogretmen_medeni_hal='bekar' and ogretmen_maas<3500
/*15)Maaþlarýn ortalamasýný virgülden sonra 3 basamk olacak þekilde gösterelim*/
select round(avg(ogretmen_maas),3) from ogretmen_veri