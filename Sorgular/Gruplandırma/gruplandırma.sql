/*1)��retmenlerin girdi�i ders say�s�*/
select ogretmen_adi,ogretmen_soyadi,count(ders_id) as 'Girdi�i dersler' from ogretmen_veri group by ogretmen_adi,ogretmen_soyadi
/*2)Girilen derslere g�re ogretmen,ad,soyad,ders_id ve maa�� ders_id ye gore s�ralayal�m */
select ogretmen_adi,ogretmen_soyadi,ders_id,sum(ogretmen_maas) as 'Verilen derslere g�re toplam maa�' from ogretmen_veri group by ogretmen_adi,ogretmen_soyadi,ders_id order  by ders_id
/*3)Ayn� derse giripte maa�lar� farkl� olan ��retmenlerden en az ve en fazla maa� alanlar� s�ralayal�m*/
select ders_id,min(ogretmen_maas) as 'En D���k',max(ogretmen_maas) as 'En Y�ksek' from ogretmen_veri group by ders_id order by ders_id
/*4)1 derse giren ��retmenlerin toplam maa�lar�*/
select ders_id,count(ders_id) as 'Derse giren ��retmen say�s�',sum(ogretmen_maas) as 'Giren ��retmenlerin toplam maa��'
 from ogretmen_veri group by ders_id order by sum(ogretmen_maas)

 /*��retmenler tablosuna yeni bir sat�r sutun olarak ya� ekledim sorularda daha fazla ko�ul kullanabilmek i�in*/

/*5)Ayn� derse giren ��retmenlerin ya� ortalamas� 30 dan k���k olanlar�n say�s�n� g�sterelim*/
select ders_id,count(ogretmen_id) as '��retmen say�s�' from ogretmen_veri group by ders_id having avg(yas)<30