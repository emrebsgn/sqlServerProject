/*1)Öðretmenlerin girdiði ders sayýsý*/
select ogretmen_adi,ogretmen_soyadi,count(ders_id) as 'Girdiði dersler' from ogretmen_veri group by ogretmen_adi,ogretmen_soyadi
/*2)Girilen derslere göre ogretmen,ad,soyad,ders_id ve maaþý ders_id ye gore sýralayalým */
select ogretmen_adi,ogretmen_soyadi,ders_id,sum(ogretmen_maas) as 'Verilen derslere göre toplam maaþ' from ogretmen_veri group by ogretmen_adi,ogretmen_soyadi,ders_id order  by ders_id
/*3)Ayný derse giripte maaþlarý farklý olan öðretmenlerden en az ve en fazla maaþ alanlarý sýralayalým*/
select ders_id,min(ogretmen_maas) as 'En Düþük',max(ogretmen_maas) as 'En Yüksek' from ogretmen_veri group by ders_id order by ders_id
/*4)1 derse giren öðretmenlerin toplam maaþlarý*/
select ders_id,count(ders_id) as 'Derse giren öðretmen sayýsý',sum(ogretmen_maas) as 'Giren öðretmenlerin toplam maaþý'
 from ogretmen_veri group by ders_id order by sum(ogretmen_maas)

 /*Öðretmenler tablosuna yeni bir satýr sutun olarak yaþ ekledim sorularda daha fazla koþul kullanabilmek için*/

/*5)Ayný derse giren öðretmenlerin yaþ ortalamasý 30 dan küçük olanlarýn sayýsýný gösterelim*/
select ders_id,count(ogretmen_id) as 'öðretmen sayýsý' from ogretmen_veri group by ders_id having avg(yas)<30