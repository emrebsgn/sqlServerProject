/*1)��retmenler aras�nda en y�ksek maa�*/
select  max(ogretmen_maas) as en_yuksek_maas from ogretmen_veri
/*2)��retmenler aras�nda en d���k maa�*/
select min(ogretmen_maas) as en_dusuk_maas from ogretmen_veri
/*3)��retmenlere verilen ortalama maa�*/
select avg(ogretmen_maas) as ortalama_maas from ogretmen_veri
/*4)��retmen tablosunda en y�ksek maa� ile en d���k maa� aras�ndaki fark*/
select max(ogretmen_maas)-min(ogretmen_maas) as EnYuksekMaas_fark_EnDusukMaas from ogretmen_veri
/*5)��retmen ve ��renci tablosundaki ki�i say�s�*/
select count(ogretmen_adi) as Ogretnen_sayisi from ogretmen_veri
select count(ogrenci_adi) as Ogrenci_sayisi from ogrenci_ver
/*6)��retmenlere verilen toplam maa�*/
select Sum(ogretmen_maas) as ToplamMaas from ogretmen_Veri
/*7)��renci tablosundaki diploma ortalamas�n� yukar� yuvarlayal�m */
select ceiling(avg(ogrenci_diploma)) from ogrenci_ver
/*8)Sube_id'si 3 olan yani 'C' s�n�f�na giren en y�ksek maa�*/
select max(ogretmen_maas) from ogretmen_veri where sube_id=3
/*9)��retmen tablosunda evli ve say�sal derslere giren ��retmenlerin maa� ortalamas�*/
select avg(ogretmen_maas) as EvliVeSayisal_ortMaas from ogretmen_veri where ogretmen_medeni_hal='Evli' and ders_id=1
/*10)Ka� farkl� matematik ��retmeni oldu�unu g�sterelim*/
select distinct(count(ders_id)) as MatOgretmenSayisi from ogretmen_veri where ders_id=3
SOY�SM� � �LE BA�LAYAN B�LG�LER� GET�REL�M
select * from ogretmen_veri where ogretmen_soyadi like '�%'
/*11)Say�salc� olup diploma puan� 70 �st�nde olan ��rencilerin say�s�*/
select count(ogrenci_id) from ogrenci_ver where ogrenci_diploma>=70 
/*12)Diploma puan� 75 ve 90 aras�nda olan �grencilerin say�s�*/
select count(ogrenci_id) from ogrenci_ver where ogrenci_diploma>=75 and ogrenci_diploma<=90
/*13)Evli olupta maa�� 2500 TL den dusuk olanlar�n maa� ortalamalar�*/
select avg(ogretmen_maas) from ogretmen_veri where ogretmen_medeni_hal='Evli' and ogretmen_maas<2500 
/*14)Bekar olupta maas� 3500 TL den az olanlar�n maa� ortalamas�na 500 TL ekleyelim*/
select avg(ogretmen_maas)+500 from ogretmen_veri where ogretmen_medeni_hal='bekar' and ogretmen_maas<3500
/*15)Maa�lar�n ortalamas�n� virg�lden sonra 3 basamk olacak �ekilde g�sterelim*/
select round(avg(ogretmen_maas),3) from ogretmen_veri